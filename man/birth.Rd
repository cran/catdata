\name{birth}
\alias{birth}
\docType{data}
\encoding{UTF-8}
\title{Birth}
\description{
  The \code{birth} data contains information about birth and pregnancy of 500 children
  that were born alive in the time from 1990 to 2004.
  The data was collected among francophone mothers in different forums of the internet.
}
\usage{data(birth)}
\format{
  A data frame with 775 observations on the following 25 variables.
  \describe{
    \item{\code{IndexMother}}{ID variable}
    \item{\code{Sex}}{Sex of child: male = 1, female = 2}
    \item{\code{Weight}}{Weight of child at the birth in gram}
    \item{\code{Height}}{Height of child at the birth in centimetre}
    \item{\code{Head}}{Head circumference of child at the birth in centimetre}
    \item{\code{Month}}{Month of birth from 1 to 12}
    \item{\code{Year}}{Year of birth}
    \item{\code{Country}}{Country of birth: France (FR), 
          Belgium (BE), Switzerland (CH), Canada (CA), Great Britain (GB), Germany (DE), Spain (ES), United States (US)}
    \item{\code{Term}}{Term of pregnancy in weeks from the last menstruation}
    \item{\code{AgeMother}}{Age of mother on the day of birth}
    \item{\code{Previous}}{Number of pragnancies before}
    \item{\code{WeightBefore}}{Weight of mother before the pregnancy}
    \item{\code{HeightMother}}{Height of mother in centimetre}
    \item{\code{WeightEnd}}{Weight of mother after the pregnancy}
    \item{\code{Twins}}{Was the pregnancy a multiple birth? no = 0, yes = 1}
    \item{\code{Intensive}}{Days that child spent in intensive care unit}
    \item{\code{Cesarean}}{Was it a birth with cesarean? no = 0, yes = 1}
    \item{\code{Planned}}{Was the cesarean planned? no = 0, yes = 1}
    \item{\code{Episiotomy}}{Was an episiotomy made? no = 0, yes = 1}
    \item{\code{Tear}}{Did a perineal tear appear? no = 0, yes = 1}
    \item{\code{Operative}}{Was a operative aid like 	delivery forceps or vakuum used? no = 0, yes = 1}
    \item{\code{Induced}}{Was the birth induced artificial? no = 0, yes = 1}
    \item{\code{Membranes}}{Did the membrans burst before the beginning of the 	throes? no = 0, yes = 1}
    \item{\code{Rest}}{Was a strict bed rest ordered to the mother for at least one month during the pregnancy? no = 0, yes = 1}
    \item{\code{Presentation}}{In which presentation was the child befor of the birth? 
          cephalic presentation = 1, pelvic presentation = 2, other presentation (e.g. across) = 3}
  }
}

\source{see Boulesteix (2006),
    Maximally selected chi-squared statistics for ordinal variables,
    Biometrical Journal, 48, 451--462.
  
  }

\examples{
##example of analysis:
# data(birth)
# summary(birth)
}
\keyword{datasets}
