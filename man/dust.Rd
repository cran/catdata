\name{dust}
\alias{dust}
\docType{data}
\encoding{UTF-8}
\title{Chronic Bronchial Reaction to Dust}
\description{
  The \code{dust} data was surveyed among the employees of a Munich factory.
}
\usage{data(dust)}
\format{
  A data frame with 1246 observations on the following 4 variables.
  \describe{
    \item{\code{bronch}}{chronical bronchial reaction, no = 0, yes = 1}
    \item{\code{dust}}{dust concentration (mg/cm^3) at working place}
    \item{\code{smoke}}{employee smoker?, no = 1, yes = 2}
    \item{\code{years}}{years of dust exposition}
  }
}
\source{
Data Archive Department of Statistics, LMU Munich
}
\examples{
\dontrun{
##example of analysis:
if(interactive()){vignette("modbin-dust")}
if(interactive()){vignette("semiparametric-dust")}
if(interactive()){vignette("tree-dust")}
}
}
\keyword{datasets}
