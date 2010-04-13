\name{addiction}
\alias{addiction}
\docType{data}
\encoding{UTF-8}
\title{Are addicted weak-willed, deseased or both?}
\description{
The \code{addiction} data stems from a survey comprising 712 respondents.
}
\usage{data(addiction)}
\format{
  A data frame with 682 observations on the following 4 variables.
  \describe{
    \item{\code{ill}}{are addicted weak-willed(0) deseased(1) or both(2)}
    \item{\code{gender}}{male = 0, female = 1}
    \item{\code{age}}{age of surveyed person}
    \item{\code{university}}{surveyed person is academician(1) or not(0)}
  }
}
\source{ \url{http://www.stat.uni-muenchen.de/service/datenarchiv/sucht/sucht.html}
  }
\examples{
\dontrun{
##look for:
vignette("addiction")
}
}
\keyword{datasets}
