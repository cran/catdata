\name{teratology2}
\alias{teratology2}
\docType{data}
\encoding{UTF-8}
\title{Teratology2}
\description{
In a teratology experiment 58 rats on iron-deficient diets were assigned to four groups. In the first
group only placebo injections were given, in the other groups iron supplements were given.
The animals were made pregnant and sacrificed after three weeks. The response was whether
the fetus was dead (yij = 1) for each fetus in each rats litter.
}
\usage{data(teratology2)}
\format{
  A data frame with 607 observations on the following 3 variables.
  \describe{
    \item{\code{y}}{dead = 1, living = 0}
    \item{\code{Rat}}{Number of animal}
    \item{\code{Grp}}{treatment group}
  }
}
\references{
Moore, D. F. and Tsiatis, A. (1991) Robust estimation of the variance in moment
methods for extra-binomial and extra-poisson variation. Biometrics \bold{47}, 383--401.
}
\examples{
\dontrun{
data(teratology2)
if(interactive()){vignette("altbin-teratology")}
}
}
\keyword{datasets}
