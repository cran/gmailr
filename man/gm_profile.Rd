% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gm_auth.R
\name{gm_profile}
\alias{gm_profile}
\title{Get info on current gmail profile}
\usage{
gm_profile(user_id = "me", verbose = TRUE)
}
\arguments{
\item{user_id}{gmail user_id to access, special value of 'me' indicates the authenticated user.}

\item{verbose}{Logical, indicating whether to print informative messages
(default \code{TRUE}).}
}
\value{
A list of class \code{gmail_profile}.
}
\description{
Reveals information about the profile associated with the current token.
}
\examples{
\dontrun{
gm_profile()

## more info is returned than is printed
prof <- gm_profile()
prof[["historyId"]]
}
}
\seealso{
Wraps the \code{getProfile} endpoint:
\itemize{
\item \url{https://developers.google.com/gmail/api/reference/rest/v1/users/getProfile}
}
}
