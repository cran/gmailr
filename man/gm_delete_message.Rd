% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gm_message.R
\name{gm_delete_message}
\alias{gm_delete_message}
\title{Permanently delete a single message}
\usage{
gm_delete_message(id, user_id = "me")
}
\arguments{
\item{id}{message id to access}

\item{user_id}{gmail user_id to access, special value of 'me' indicates the authenticated user.}
}
\description{
Function to delete a given message by id.  This cannot be undone!
}
\examples{
\dontrun{
gm_delete_message("12345")
}
}
\references{
\url{https://developers.google.com/gmail/api/reference/rest/v1/users.messages/delete}
}
\seealso{
Other message: 
\code{\link{gm_attachment}()},
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
