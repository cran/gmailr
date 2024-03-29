% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gm_message.R
\name{gm_attachment}
\alias{gm_attachment}
\title{Retrieve an attachment to a message}
\usage{
gm_attachment(id, message_id, user_id = "me")
}
\arguments{
\item{id}{id of the attachment}

\item{message_id}{id of the parent message}

\item{user_id}{gmail user_id to access, special value of 'me' indicates the authenticated user.}
}
\description{
This is a low level function to retrieve an attachment to a message by id of the attachment
and message. Most users are better off using \code{\link[=gm_save_attachments]{gm_save_attachments()}} to
automatically save all the attachments in a given message.
}
\examples{
\dontrun{
my_attachment <- gm_attachment("a32e324b", "12345")
# save attachment to a file
gm_save_attachment(my_attachment, "photo.jpg")
}
}
\references{
\url{https://developers.google.com/gmail/api/reference/rest/v1/users.messages.attachments/get}
}
\seealso{
Other message: 
\code{\link{gm_delete_message}()},
\code{\link{gm_import_message}()},
\code{\link{gm_insert_message}()},
\code{\link{gm_messages}()},
\code{\link{gm_message}()},
\code{\link{gm_modify_message}()},
\code{\link{gm_save_attachments}()},
\code{\link{gm_save_attachment}()},
\code{\link{gm_send_message}()},
\code{\link{gm_trash_message}()},
\code{\link{gm_untrash_message}()}
}
\concept{message}
