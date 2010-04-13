\name{insolvency}
\alias{insolvency}
\docType{data}
\encoding{UTF-8}
\title{Insolvency of companies in Berlin}
\description{
  The \code{insolvency} data gives the number of insolvent companies per month in Berlin from 1994 to 1996. 
}
\usage{data(dust)}
\format{
  A data frame with 36 observations on the following 4 variables.
  \describe{
    \item{\code{insolv}}{number of insolvent companies}
    \item{\code{year}}{years 1994-1996 (1--3)}
    \item{\code{month}}{month (1-12)}
    \item{\code{case}}{number of cases (1--36)}
  }
}
\examples{
\dontrun{
##example of analysis:
vignette("count-insolvency")
}
}
\keyword{datasets}
