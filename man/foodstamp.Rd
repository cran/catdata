\name{foodstamp}
\alias{foodstamp}
\docType{data}
\encoding{UTF-8}
\title{Food-Stamp Program}
\description{
The \code{foodstamp} data stem from a survey on the federal food-stamp program,
 150 persons were interviewed. The response indicates participation.
}
\usage{data(foodstamp)}
\format{
  A data frame with 150 observations on the following 4 variables.
  \describe{
    \item{\code{y}}{participation in federal food-stamp program, yes = 1, no = 0}
    \item{\code{TEN}}{tenancy, yes = 1, no = 0}
    \item{\code{SUP}}{supplemental income, yes = 1, no = 0}
    \item{\code{INC}}{log-transformed monthly income log(monthly income +1)}
  }
}
\references{
Künsch, H. R., Stefanski, L. A., Carroll, R. J. (1989) Conditionally unbiased 
bounded-influence estimation in general regression models, 
with applications to generalized linear models. 
Journal of American Statistical Association \bold{84}, 460--466.
}
\examples{
\dontrun{
##look for:
vignette("modbin-foodstamp")
}
}
\keyword{datasets}
