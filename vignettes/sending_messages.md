---
title: "Sending Messages With Gmailr"
output: rmarkdown::html_vignette
vignette: >
  %\VignetteEngine{knitr::knitr}
  %\VignetteIndexEntry{Sending Messages With Gmailr}
  %\usepackage[utf8]{inputenc}
---

## Authentication

- Register a new project at https://cloud.google.com/console#/project
- Navigate to `APIs`
    - Switch the Gmail API status to `On`
- Navigate to `APIs & auth->Credentials`
    - Create a new client ID
    - Download the Client ID JSON
- Use the downloaded JSON as input to `gmail_auth()`




```r
gmail_auth('file.json')
```

## Constructing a MIME message

### Text

First we will construct a simple text only message


```r
mime() %>%
  to("james.f.hester@gmail.com") %>%
  from("me@somewhere.com") %>%
  text_body("Gmailr is a very handy package!") -> text_msg
```

You can convert the message to a properly formatted MIME message using `as.character()`.


```r
strwrap(as.character(text_msg))
```

```
## [1] "MIME-Version: 1.0\r Date: Thu, 04 Dec 2014 21:33:22 GMT\r To:"     
## [2] "james.f.hester@gmail.com\r From: me@somewhere.com\r Content-Type:" 
## [3] "multipart/mixed; boundary=5d288bcdcba8b2434e965a35fb89e449\r"      
## [4] "Content-Disposition: inline\r --5d288bcdcba8b2434e965a35fb89e449\r"
## [5] "MIME-Version: 1.0\r Date: Thu, 04 Dec 2014 21:33:22 GMT\r"         
## [6] "Content-Type: text/plain; charset=utf-8; format=flowed\r"          
## [7] "Content-Transfer-Encoding: quoted-printable\r Content-Disposition:"
## [8] "inline\r \r Gmailr is a very handy package!\r"                     
## [9] "--5d288bcdcba8b2434e965a35fb89e449--\r"
```

### HTML

You can also construct html messages.  It is customary to provide a text
only message along with the html message, but with modern email clients this is
not strictly necessary.


```r
mime() %>%
  to("james.f.hester@gmail.com") %>%
  from("me@somewhere.com") %>%
  html_body("<b>Gmailr</b> is a <i>very</i> handy package!") -> html_msg
```

### Attachments

You can add attachments to your message in two ways.

1. If the data is in a file, use `attach_file()`.  The mime type is
   automatically guessed by `mime::guess_type`, or you can specify it yourself
   with the `type` parameter.

```r
write.csv(file='iris.csv', iris)

html_msg %>%
  subject("Here are some flowers") %>%
  attach_file('iris.csv') -> file_attachment
```

2. If the data are already loaded into R, you can use `attach_part()` to attach the binary data to your file.

```r
html_msg %>% attach_part(body=charToRaw('attach me!'), name='please') -> simple_attachment
```

## Uploading
### Create Draft

You can upload any mime message into your gmail drafts using `create_draft()`.
Be sure to give yourself at least `compose` permissions first.


```r
create_draft(file_attachment)
```

### Insert

This inserts the message directly into your mailbox, bypassing gmail's default
scanning and classification algorithms.


```r
insert_message(file_attachment)
```

### Import

This imports the email as though it was a normal message, with the same
scanning and classification as normal email.


```r
insert_message(file_attachment)
```

## Sending

### Draft

`send_draft()` sends an email using the `draft_id` of an existing draft
(possibly created with `create_draft()`).


```r
my_drafts = drafts()

send_draft(id(my_drafts, 'draft_id')[1])
```
### Message

You can also send an email message directly from a `mime` object using `send_message()`.


```r
send_message(file_attachment)
```

