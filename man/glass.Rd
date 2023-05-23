\name{glass}
\alias{glass}
\docType{data}
\encoding{UTF-8}
\title{Glass Identification}
\description{
A dataset coming from USA Forensic Science Service that distinguishes between six types of glass (four types of window glass, and three types nonwindow). Predictors are the refractive index and the oxide content of various minerals.
}
\usage{data(heart)}
\format{
  A data frame with 214 observations on the following 10 variables.
  \describe{
    \item{\code{RI}}{Refractive index}
    \item{\code{Na}}{Oxide content of sodium}
    \item{\code{Mg}}{Oxide content of magnesium}
    \item{\code{Al}}{Oxide content of aluminium}
    \item{\code{Si}}{Oxide content of silicon}
    \item{\code{K}}{Oxide content of potassium}
    \item{\code{Ca}}{Oxide content of calcium}
    \item{\code{Ba}}{Oxide content of barium}
    \item{\code{Fe}}{Oxide content of iron}
    \item{\code{type}}{Type of glass}
  }
}
\source{\url{http://archive.ics.uci.edu/ml/datasets/Glass+Identification}}
\references{
Ripley, B. D. (1996), Pattern Recognition and Neural Networks, Cambridge University Press.
}
\examples{
\dontrun{
##example of analysis:
if(interactive()){vignette("prediction-glass")}
}
}
\keyword{datasets}
