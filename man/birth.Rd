\name{birth}
\alias{birth}
\docType{data}
\encoding{UTF-8}
\title{Birth}
\description{
  The \code{birth} data contain information about birth and pregnancy of 775 children that were born alive in the time from 1990 to 2004. The data were collected from internet users recruited on french-speaking pregnancy and birth websites
}
\usage{data(birth)}
\format{
  A data frame with 775 observations on the following 25 variables.
  \describe{
    \item{\code{IndexMother}}{ID variable}
    \item{\code{Sex}}{Sex of child: male = 1, female = 2}
    \item{\code{Weight}}{Weight of child at the birth in grams}
    \item{\code{Height}}{Height of child at the birth in centimeter}
    \item{\code{Head}}{Head circumference of child at the birth in centimeter}
    \item{\code{Month}}{Month of birth from 1 to 12}
    \item{\code{Year}}{Year of birth}
    \item{\code{Country}}{Country of birth: France (FR), 
          Belgium (BE), Switzerland (CH), Canada (CA), Great Britain (GB), Germany (DE), Spain (ES), United States (US)}
    \item{\code{Term}}{Term of pregnancy in weeks from the last menstruation}
    \item{\code{AgeMother}}{Age of mother on the day of birth}
    \item{\code{Previous}}{Number of pregnancies before}
    \item{\code{WeightBefore}}{Weight of mother before the pregnancy}
    \item{\code{HeightMother}}{Height of mother in centimeter}
    \item{\code{WeightEnd}}{Weight of mother after the pregnancy}
    \item{\code{Twins}}{Was the pregnancy a multiple birth? no = 0, yes = 1}
    \item{\code{Intensive}}{Days that child spent in intensive care unit}
    \item{\code{Cesarean}}{Has the child been born by cesarean section? no = 0, yes = 1}
    \item{\code{Planned}}{Has the cesarean been planned? no = 0, yes = 1}
    \item{\code{Episiotomy}}{Has an episiotomy been made? no = 0, yes = 1}
    \item{\code{Tear}}{Did a perineal tear appear? no = 0, yes = 1}
    \item{\code{Operative}}{Has an operative aid like delivery forceps or vakuum been used? no = 0, yes = 1}
    \item{\code{Induced}}{Has the birth been induced artificially? no = 0, yes = 1}
    \item{\code{Membranes}}{Did the membrans burst before the beginning of the throes? no = 0, yes = 1}
    \item{\code{Rest}}{Has a strict bed rest been ordered to the mother for at least one month during the pregnancy? no = 0, yes = 1}
    \item{\code{Presentation}}{Presentation of the child before the birth? 
          cephalic presentation = 1, pelvic presentation = 2, other presentation (e.g. across) = 3}
  }
}

\source{see Boulesteix (2006),
    Maximally selected chi-squared statistics for ordinal variables,
    Biometrical Journal, 48, 451--462.
  
  }

\examples{
\dontrun{
##look for:
vignette("loglinear-birth")
vignette("multivariate-birth1")
vignette("multivariate-birth2")
}
}
\keyword{datasets}
