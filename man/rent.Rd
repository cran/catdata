\name{rent}
\alias{rent}
\docType{data}
\encoding{UTF-8}
\title{Rent in Munich}
\description{
  The \code{rent} data contains the rent index for Munich in 2003. 
}
\usage{data(rent)}
\format{
  A data frame with 2053 observations on the following 13 variables.
  \describe{
    \item{\code{rent}}{clear rent in euros}
    \item{\code{rentm}}{clear rent per square meter in euros}
    \item{\code{size}}{living space in square meter}
    \item{\code{rooms}}{number of rooms}
    \item{\code{year}}{year of construction}
    \item{\code{area}}{municipality}
    \item{\code{good}}{good adress, yes = 1, no =0}
    \item{\code{best}}{best adress, yes = 1, no = 0}
    \item{\code{warm}}{warm water, yes = 0, no = 1}
    \item{\code{central}}{central heating, yes = 0, no = 1}
    \item{\code{tiles}}{bathroom with tiles, yes = 0, no = 1}
    \item{\code{bathextra}}{special furniture in bathroom, yes = 1, no = 0}
    \item{\code{kitchen}}{upmarket kitchen, yes = 1, no = 0}
  }
}
\source{
Data Archive Department of Statistics, LMU Munich
}
\references{
Fahrmeir, L., Künstler, R., Pigeot, I., Tutz, G. (2004) \emph{Statistik: der Weg zur Datenanalyse}. 
5. Auflage, Berlin: Springer-Verlag.
}
\examples{
##example of analysis:
data(rent)
summary(rent)
}
\keyword{datasets}
