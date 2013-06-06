
\name{oils}
\alias{oils}
\docType{data}
\title{
 Oils data proposed by Ichino
}
\description{
Each row in this table represents a class of oil described by four variables interval quantitives : 'specific gravity', 
'freezing points', 'iodine value', 'saponification'
The four successive pairs of columns contain the five symbolic interval variables. Each pair consists of a min and a max.
}
\usage{data(Judge1)}
\format{
  A data frame with 8 observations on the following 8 variables.
  \describe{
    \item{\code{GRA.MIN}}{a numeric vector, minimum of specific gravity}
    \item{\code{GRA.MAX}}{a numeric vector, maximum of specific gravity}
    \item{\code{FRE.MIN}}{a numeric vector, minimum of freezing points}
    \item{\code{FRE.MAX}}{a numeric vector, maximum of freezing points}
    \item{\code{IOD.MIN}}{a numeric vector, minimum of iodine value}
    \item{\code{IOD.MAX}}{a numeric vector, maximum of iodine value}
    \item{\code{SAP.MIN}}{a numeric vector, minimum of saponification}
    \item{\code{SAP.MAX}}{a numeric vector, maximum saponification}
   
  }
}

\references{
Cazes P., Chouakria A., Diday E. et Schektman Y. (1997). Extension de l'analyse en composantes principales
 a des donnees de type intervalle, Rev. Statistique Appliquee, Vol. XLV Num. 3 pag. 5-24, France. 

Ichino M. (1994). Generalized Minkowski metrics for mixed featuretype data analysis. IEEE , transactions on systems,
man and cybermetrics, vol.24, n 4.
}

\examples{
data(oils)
}

