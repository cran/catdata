\name{medcare}
\alias{medcare}
\docType{data}
\encoding{UTF-8}
\title{Number of Physician Office Visits}
\description{
  The \code{medcare} data was collected on 4406 individuals, 
  aged 66 and over, that were covered by medcare, 
  a public insurence program
}
\usage{data(medcare)}
\format{
  A data frame with 4406 observations on the following 9 variables.
  \describe{
    \item{\code{ofp}}{number of physician office visits}
    \item{\code{hosp}}{number of hospital stays}
    \item{\code{healthpoor}}{indivudual has a poor health (reference: average health)}
    \item{\code{healthexcellent}}{indivudual has a excellent health}
    \item{\code{numchron}}{number of chronic conditions}
    \item{\code{male}}{female = 0, male = 1}
    \item{\code{age}}{age of individual (centered around 60)}
    \item{\code{married}}{married = 1, else = 0}
    \item{\code{school}}{years of education}
  }
}
\source{
\url{https://www.econ.queensu.ca}
}
\references{
  US National Medical Expenditure Survey in 1987/88
}
\examples{
\dontrun{
##example of analysis:
if(interactive()){vignette("count-medcare")}
if(interactive()){vignette("prediction-medcare")}
}
}
\keyword{datasets}
