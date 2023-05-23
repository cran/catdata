\name{unemployment}
\alias{unemployment}
\docType{data}
\encoding{UTF-8}
\title{long term/short term unemployment}
\description{
The \code{unemployment} data contains information on 982 unemployed persons.
}
\usage{data(unemployment)}
\format{
  A data frame with 982 observations on the following 2 variables.
  \describe{
    \item{\code{age}}{age of the person in years (from 16 to 61)}
    \item{\code{durbin}}{short term (1) or long-term (2) unemployment}
  }
}
\source{Socio-economic panel 1995}
\examples{
\dontrun{
##look for:
if(interactive()){vignette("binary-unemployment")}
if(interactive()){vignette("modbin-unemployment1")}
if(interactive()){vignette("modbin-unemployment2")}
if(interactive()){vignette("semiparametric-unemployment")}
if(interactive()){vignette("tree-unemployment")}
}
}
\keyword{datasets}
