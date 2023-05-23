\name{leukoplakia}
\alias{leukoplakia}
\docType{data}
\encoding{UTF-8}
\title{Leukoplakia}
\description{
The \code{leukoplakia} data is about occurence of oral leukoplakia with covariates smoking and alcohol consumption.
}
\usage{data(leukoplacia)}
\format{
  A data frame with 16 observations on the following 4 variables. Considering the weighting variable "Freq", there are 212 cases.
  \describe{
    \item{\code{Leukoplakia}}{Has the person oral leukoplakia? yes = 1, no = 0 }
    \item{\code{Alcohol}}{How much alcohol did the person drink on average? no = 1, less then 40g = 2, less then 80g = 3, more then 80g = 4}
    \item{\code{Smoker}}{Smoker? yes = 1, no = 0}
    \item{\code{Freq}}{Frequency of observation}
  }
}

\source{Fahrmeir, Hamerle and Tutz (1996),
  Multivariate statistische Verfahren,
  Berlin: de Gruyter
  }

\examples{
\dontrun{
##look for:
if(interactive()){vignette("loglinear-leukoplakia")}
}
}
\keyword{datasets}
