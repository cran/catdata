\name{retinopathy}
\alias{retinopathy}
\docType{data}
\encoding{UTF-8}
\title{Retinopathy}
\description{
  The \code{retinopathy} data contains information on persons with retinopathy.
}
\usage{data(retinopathy)}
\format{
  A data frame with 613 observations on the following 5 variables.
  \describe{
    \item{\code{RET}}{RET=1: no retinopathy, RET=2 nonproliferative retinopathy, RET=3 advanced retinopathy or blind}
    \item{\code{SM}}{SM=1: smoker, SM=0: non-smoker}
    \item{\code{DIAB}}{diabetes duration in years}
    \item{\code{GH}}{glycosylated hemoglobin measured in percent}
    \item{\code{BP}}{diastolic blood pressure in mmHg}
  }
}
\references{
Bender and  Grouven (1998),
  Using binary logistic regression models for
   ordinal data with non-proportional odds,
  J. Clin. Epidemiol., 51, 809--816.
}

\examples{
 \dontrun{
## look for
if(interactive()){vignette("ordinal-retinopathy1")}
if(interactive()){vignette("ordinal-retinopathy2")}
 }
}
\keyword{datasets}
