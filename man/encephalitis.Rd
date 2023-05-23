  \name{encephalitis}
\alias{encephalitis}
\docType{data}
\encoding{UTF-8}
\title{Cases of Herpes Encephalitis in Bavaria and Saxony}
\description{
The \code{encephalitis} data is based on a study on the occurence of herpes encephalitis in children. 
It was observed in Bavaria and Lower Saxony  between 1980 and 1993.
}
\usage{data(encephalitis)}
\format{
  A data frame with 26 observations containing the following variables
  \describe{
    \item{\code{year}}{years 1980 to 1993 (1 -- 14)}
    \item{\code{country}}{Bavaria = 1, Lower Saxony = 2}
    \item{\code{count}}{number of cases with herpes encephalitis}
  }
}
\references{
  Karimi, A., Windorfer, A., Dreesemann, J. (1980) Vorkommen von zentralvenösen Infektionen in europäischen Ländern. 
  Technical report, Schriften des Niedersächsischen Landesgesundheitsamtes.
}
\examples{
\dontrun{
##look for:
if(interactive()){vignette("count-encephalitis")}
}
}
\keyword{datasets}
