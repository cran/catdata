\name{catdata-package}
\alias{catdata-package}
\alias{catdata}
\encoding{UTF-8}
\docType{package}
\title{
Categorical Data
}
\description{
This R-package contains examples from the book

\bold{Tutz (2011): Regression for Categorical Data, Cambridge University Press} 

The names of the examples refer to the chapter and the data set that is used. 

\bold{The data sets are}  

addiction,\cr
aids,\cr
birth,\cr
children,\cr
deathpenalty,\cr 
dust, \cr
encephalitis,\cr
foodstamp,\cr
insolvency,\cr
knee,\cr
leucoplakia, \cr
medcare,\cr
reader,\cr
recovery,\cr
rent,\cr
rethinopathy,\cr
teratology,\cr
teratology2,\cr
unemployment,\cr
vaso. \cr

\bold{The chapters are abbreviated in the following way}

\tabular{lll}{
intro \tab Chapter 1 \tab Introduction\cr
binary \tab Chapter 2 \tab Binary Regression: The Logit Model\cr
glm \tab Chapter 3 \tab Generalized Linear Models\cr
modbin \tab Chapter 4 \tab Modeling of Binary Data\cr
altbin \tab Chapter 5 \tab Alternative Binary Regression Models\cr
regsel \tab Chapter 6 \tab Regularization and Variable Selection for Parametric Models\cr
count \tab Chapter 7 \tab Regression Analysis of Count Data\cr
multinomial \tab Chapter 8 \tab Multinomial Response Models\cr
ordinal \tab Chapter 9 \tab Ordinal Response Models\cr
semiparametric \tab Chapter 10 \tab Semi- and Nonparametric Generalized Regression\cr
tree \tab Chapter 11 \tab Tree-Based Methods \cr
loglinear \tab Chapter 12 \tab The Analysis of Contingency Tables\cr
multivariate \tab Chapter 13 \tab Multivariate Response Models\cr
random \tab Chapter 14 \tab Random Effects and Finite Mixtures\cr
prediction \tab Chapter 15 \tab Prediction and Classification
}

The examples are abbreviated by chaptername-dataset. Thus, for example, 

     \bold{modbin-dust} 

refers to Chapter 4 (Modeling of Binary Data) and the data set dust.

\bold{Overview of examples:}
\itemize{
\item Chapter 2:
\itemize{
\item binary-vaso: Example 2.2
\item binary-unemployment: Example 2.3
}
\item Chapter 4:
\itemize{
\item modbin-unemployment: Example 4.3
\item modbin-foodstamp: Example 4.4
\item modbin-dust: Example 4.7
}
\item Chapter 5:
\itemize{
\item altbin-teratology: Example 5.1
}
\item Chapter 7:
\itemize{
\item count-children: Example 7.3
\item count-encephalitis: Example 7.4
\item count-insolvency: Example 7.5
\item count-medcare: Example 7.6
}
\item Chapter 8:
\itemize{
\item multinomial-party1: Example 8.3
\item multinomial-party2: Example 8.3
\item multinomial-travel: Example 8.4
\item multinomial-addiction1: Example 8.5
\item multinomial-addiction2: Example 8.6
}
\item Chapter 9:
\itemize{
\item ordinal-knee1: Example 9.3
\item ordinal-knee2: Example 9.4
\item ordinal-retinopathy1: Example 9.5
\item ordinal-retinopathy2: Example 9.6
\item ordinal-arthritis: Example 9.8
}
\item Chapter 10:
\itemize{
\item semiparametric-unemployment: Example 10.2
\item semiparametric-dust: Example 10.3
\item semiparametric-children: Example 10.4
\item semiparametric-addiction: Example 10.5
}
\item Chapter 11:
\itemize{
\item tree-unemployment: Example 11.1
\item tree-dust: Example 11.2
}
\item Chapter 12:
\itemize{
\item loglinear-birth: Example 12.3
\item loglinear-leukoplakia: Example 12.5
}
\item Chapter 13:
\itemize{
\item multivariate-birth1: Examlpe 13.3
\item multivariate-knee: Example 13.4
\item multivariate-birth2: Example 13.5
}
\item Chapter 14:
\itemize{
\item random-knee1: Example 14.3
\item random-knee2: Example 14.4
\item random-aids: Example 14.6
\item random-betablocker: Example 14.7
\item random-knee3: Example 14.8
}
}
}
\author{
Gerhard Tutz, Marcus Groß, Sarah Maierhofer, Gunther Schauberger

Maintainer: \cr
Gunther Schauberger <gunther.schauberger@stat.uni-muenchen.de> \cr
Gerhard Tutz <gerhard.tutz@stat.uni-muenchen.de>
}

\references{Gerhard Tutz (2011),
\emph{Regression for Categorical Data},
Cambridge University Press
}

\keyword{
package
}
\examples{
\dontrun{
vignette("modbin-dust")
}
}