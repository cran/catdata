\name{teratology}
\alias{teratology}
\docType{data}
\encoding{UTF-8}
\title{Teratology}
\description{
In a teratology experiment 58 rats on iron-deficient diets were assigned to four groups. In the first
group only placebo injections were given, in the other groups iron supplements were given.
The animals were made pregnant and sacrificed after three weeks. The response is the number of living and dead rats of a litter. 
}
\usage{data(teratology)}
\format{
  A data frame with 58 observations on the following 3 variables.
  \describe{
    \item{\code{D}}{number of deaths of rats litter}
    \item{\code{L}}{number survived of rats litter}
    \item{\code{Grp}}{group(Untreated = 1, Injections days 7 and 10 = 2, Injections days 0 and 7 = 3, Injections weekly = 4}
  }
}
\references{
Moore, D. F. and Tsiatis, A. (1991) Robust estimation of the variance in moment
methods for extra-binomial and extra-poisson variation. Biometrics \bold{47}, 383--401.
}
\examples{
data(teratology)
summary(teratology)
\dontrun{
if(interactive()){vignette("altbin-teratology")}
}
}
\keyword{datasets}
