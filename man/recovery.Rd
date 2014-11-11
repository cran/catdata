\name{recovery}
\alias{recovery}
\docType{data}
\encoding{UTF-8}
\title{Post-Surgery Recovery of Children}
\description{

The \code{recovery} data contains information on 60 children after a surgery.
}
\usage{data(recovery)}
\format{
  A data frame with 240 observations on the following 10 variables
  \describe{
    \item{\code{y}}{recovery score}  
    \item{\code{Dos1}}{Dosage=15 (yes = 1, no = 0)}
    \item{\code{Dos2}}{Dosage=20 (yes = 1, no = 0)}
    \item{\code{Dos3}}{Dosage=25 (yes = 1, no = 0)}
    \item{\code{Age}}{Age of child (in months)}
    \item{\code{Age2}}{Squared age}
    \item{\code{Dur}}{Duration of surgery (in minutes)}
    \item{\code{Rep1}}{First repetition (yes = 1, no = 0)}
    \item{\code{Rep2}}{Second repetition (yes = 1, no = 0)}
    \item{\code{Rep3}}{Third repetition (yes = 1, no = 0)}
    \item{\code{Person}}{ID-Variable for each child (1--60)}
  }
}
\details{
In a randomized study 60 children undergoing surgery were treated with
one of four dosages of an anaesthetic (15, 20, 25, 30). Upon admission to the
recovery room and at minutes 5, 15 and 30 following admission,
recovery scores were assigned on a categorical scale ranging from 1
(least favourable) to 6 (most favourable). Therefore one has four
repetitions of a variable having 6 categories. One wants to model
how recovery scores depend on covariables as dosage of the
anaesthetic (four levels), duration of surgery (in minutes) and age
of the child (in months).
}

\references{
Davis, C.S. (1991) Semi-parametric and Non-parametric Methods for the
          Analysis of Repeated Measurements with Applications
          to Clinical Trials. Statistics in Medicine \bold{10}, 1959--1980 
}

\keyword{datasets}
