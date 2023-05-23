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
  A data frame with 712 observations on the following 4 variables.
  \describe{
    \item{\code{ill}}{are addicted weak-willed(0) deseased(1) or both(2)}
    \item{\code{gender}}{male = 0, female = 1}
    \item{\code{age}}{age of surveyed person}
    \item{\code{university}}{surveyed person is academician(1) or not(0)}
  }
}
\source{Data Archive Department of Statistics, LMU Munich}
\examples{
\dontrun{
##look for:
if(interactive()){vignette("semiparametric-addiction")}
if(interactive()){vignette("multinomial-addiction1")}
if(interactive()){vignette("multinomial-addiction2")}

}
}
\keyword{datasets}
