% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gm_thread.R
\name{gm_untrash_thread}
\alias{gm_untrash_thread}
\title{Remove a single thread from the trash.}
\usage{
gm_untrash_thread(id, user_id = "me")
}
\arguments{
\item{id}{thread id to access}

\item{user_id}{gmail user_id to access, special value of 'me' indicates the authenticated user.}
}
\description{
Function to untrash a given thread by id.  This can reverse the results of a previous \code{\link[=gm_trash_thread]{gm_trash_thread()}}.
}
\examples{
\dontrun{
gm_untrash_thread(12345)
}
}
\references{
\url{https://developers.google.com/gmail/api/reference/rest/v1/users.threads/untrash}
}
\seealso{
Other thread: 
\code{\link{gm_delete_thread}()},
\code{\link{gm_modify_thread}()},
\code{\link{gm_threads}()},
\code{\link{gm_thread}()},
\code{\link{gm_trash_thread}()}
}
\concept{thread}
