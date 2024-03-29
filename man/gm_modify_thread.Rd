% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gm_thread.R
\name{gm_modify_thread}
\alias{gm_modify_thread}
\title{Modify the labels on a thread}
\usage{
gm_modify_thread(
  id,
  add_labels = character(0),
  remove_labels = character(0),
  user_id = "me"
)
}
\arguments{
\item{id}{thread id to access}

\item{add_labels}{labels to add to the specified thread}

\item{remove_labels}{labels to remove from the specified thread}

\item{user_id}{gmail user_id to access, special value of 'me' indicates the authenticated user.}
}
\description{
Function to modify the labels on a given thread by id.
}
\examples{
\dontrun{
gm_modify_thread(12345, add_labels = "label_1")
gm_modify_thread(12345, remove_labels = "label_1")
# add and remove at the same time
gm_modify_thread(12345, add_labels = "label_2", remove_labels = "label_1")
}
}
\references{
\url{https://developers.google.com/gmail/api/reference/rest/v1/users.threads/modify}
}
\seealso{
Other thread: 
\code{\link{gm_delete_thread}()},
\code{\link{gm_threads}()},
\code{\link{gm_thread}()},
\code{\link{gm_trash_thread}()},
\code{\link{gm_untrash_thread}()}
}
\concept{thread}
