\name{deathpenalty}
\alias{deathpenalty}
\docType{data}
\encoding{UTF-8}
\title{Death-Penalty}
\description{
  The \code{deathpenalty} data is about the judgemt of defendants in cases of multiple murders 
  in Florida between 1976 and 1987. They are classified with respect to death penalty, 
  race of defendent and race of victim.     
}
\usage{data(deathpenalty)}
\format{
  A data frame with 8 observations on the following 4 variables. 
  Considering the weighting variable "Freq", there are 674 cases. 
  \describe{
    \item{\code{DeathPenalty}}{Was the judgment death penalty? yes = 1, no = 0}
    \item{\code{VictimRace}}{The race of the victim: white = 1, black = 0}
    \item{\code{DefendantRace}}{The race of the defendant: white = 1, black = 0}
    \item{\code{Freq}}{Frequency of observation}
  }
}

\source{
Agresti, A. (2002) \emph{Categorical Data Analysis}. Wiley
}
\references{
  Agresti, A. (2002) \emph{Categorical Data Analysis}. Wiley
  
  
}
\examples{
\dontrun{
##look for:
data(deathpenalty)
}
}
\keyword{datasets}

