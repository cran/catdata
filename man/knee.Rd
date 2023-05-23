\name{knee}
\alias{knee}
\docType{data}
\encoding{UTF-8}
\title{Knee Injuries}
\description{
In a clinical study n=127 patients with sport related injuries have been treated
with two different therapies (chosen by random design).
After 3,7 and 10 days of treatment the pain occuring during knee movement was observed.
}
\usage{data(knee)}
\format{
  A data frame with 127 observations on the following 8 variables.
  \describe{
    \item{\code{N}}{Patient's number}
    \item{\code{Th}}{Therapy ( placebo = 1, treatment = 2)}
    \item{\code{Age}}{Age in years}
    \item{\code{Sex}}{Gender (male = 0, female = 1)}
    \item{\code{R1}}{Pain before treatment (no pain = 1, severe pain = 5)}
    \item{\code{R2}}{Pain after three days of treatment}
    \item{\code{R3}}{Pain after seven days of treatment}
    \item{\code{R4}}{Pain after ten days of treatment}
  }
}
\examples{
##example of analysis:
if(interactive()){vignette("ordinal-knee1")}
if(interactive()){vignette("ordinal-knee2")}
if(interactive()){vignette("multivariate-knee")}
if(interactive()){vignette("random-knee1")}
if(interactive()){vignette("random-knee3")}
}
\keyword{datasets}
