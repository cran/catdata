\name{vaso}
\alias{vaso}
\docType{data}
\encoding{UTF-8}
\title{Vasoconstriciton and Breathing}
\description{
  The \code{vaso} data contains binary data. 
  Three test persons inhaled a certain amount of air with different rates. 
  In some cases a vasoconstriction (neural constriction of vasculature) occured at their skin.
  The goal of the study was to indicate a correlation between breathing and vasoconstriction. 
  The test persons repeated the test 9, 8, 22 times. So the dataframe has 39 observations.     
}
\usage{data(vaso)}
\format{
  A data frame with 39 observations on the following 3 variables.
  \describe{
    \item{\code{vol}}{amount of air}
    \item{\code{rate}}{rate of breathing}
    \item{\code{vaso}}{condition of vasculature: no vasoconstriction = 1, vasoconstriction = 2}
  }
}

\source{
Data Archive Department of Statistics, LMU Munich
}
\references{
  Finney, D. J. (1971) \emph{Probit Analysis}. 3rd edition. Cambridge University Press.
  
  Pregibon, D. (1982) Resistant fits for some commonly used logistic models. Appl. Stat. \bold{29}, 15--24.
  
  Hastie, T. J. and Tibshirani, R. J. (1990) \emph{Generalized Additve Models}. Chapman and Hall.
}
\examples{
\dontrun{
##look for:
vignette("binary-vaso")
}
}
\keyword{datasets}
