\name{aids}
\alias{aids}
\docType{data}
\encoding{UTF-8}
\title{AIDS}
\description{
The \code{aids} data was a survey around 369 men who were infected with HIV.
}
\usage{data(aids)}
\format{
  A data frame with 2376 observations on the following 8 variables.
  \describe{
    \item{\code{cd4}}{number of CD4 cells}
    \item{\code{time}}{years since seroconversion}
    \item{\code{drugs}}{recreational drug use (yes=1/no=0)}
    \item{\code{partners}}{number of sexual partners}
    \item{\code{packs}}{packs of cigarettes a day}
    \item{\code{cesd}}{a mental illness score}
    \item{\code{age}}{Age centered around 30}
    \item{\code{person}}{Identification number}
  }
}
\source{Multicenter AIDS Cohort Study (MACS), see Zeger and  Diggle (1994),
  Semi-parametric models for longitudinal data with application to {CD}4 cell numbers in {HIV} seroconverters, Biometrics, 50, 689--699.
   
  }
\examples{
\dontrun{
##look for:
vignette("aids")
}
}
\keyword{datasets}
