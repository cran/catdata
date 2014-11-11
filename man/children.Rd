\name{children}
\alias{children}
\docType{data}
\encoding{UTF-8}
\title{Number of Children}
\description{
  The \code{children} data contains the information about the number of children of women.
}
\usage{data(children)}
\format{
  A data frame with 3548 observations on the following 6 variables.
  \describe{
    \item{\code{child}}{number of children}
    \item{\code{age}}{age of woman in years}
    \item{\code{dur}}{years of education}
    \item{\code{nation}}{nationality of the woman: 0 = German, 1 = otherwise}
    \item{\code{god}}{Beliving in god: 1 = Strong agreement,  2 = Agreement
          3 = No definite opinion, 4 = Rather no agreement, 5= No agreement at all
          6= Never thougt about it}    
    \item{\code{univ}}{visited university: 0 = no, 1 = yes}
  }
}

\source{German General Social Survey Allbus}

\examples{
\dontrun{
##example of analysis:
vignette("count-children")
vignette("semiparametric-children")
}
}
\keyword{datasets}
