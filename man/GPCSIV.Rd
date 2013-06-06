\name{GPCSIV-package}
\alias{GPCSIV}
\docType{package}
\title{
Generalized Principal Component of Symbolic Interval Variables.
}
\description{
This package implements an extension of principal component analysis (PCA) tailored to handle multiple data tables. 
These multiple data tables contain the same number of  Interval variables and the same observations.
This package can handle Big Data in the sense that the variation in massive data can be described by intervals [a, b] and multiple tables.
If only one data table is specified, in this case this package performs a PCA of interval data.
}
\details{
\tabular{ll}{
Package: \tab GPCSIV\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2013-06-06\cr
License: \tab GPL (>= 2)\cr
}

Each dataset can be in csv, excel, access, txt,...,file. The only constraint is that for each variable,
the maximum column must follow the minimum column. The Resdata class implemented returns two list of data frames
(list of minimums and maximums). These lists of data frames are the inputs of the gpca function. 
}
\author{
Brahim Brahim and Sun Makosso-Kallyth
Maintainer : Brahim Brahim <brahim.brahim@bigdatavisualizations.com>
}

\references{
 Billard, L. and E. Diday (2006). Symbolic Data Analysis: conceptual statistics and data Mining.
 Berlin: Wiley series in computational statistics.

 Diday, E. and M. Noirhomme-Fraiture (2008). Symbolic Data Analysis and the SODAS Software.
 Chichester: Wiley Interscience.

 Makosso-Kallyth, S (2013). Analysis of m sets of symbolic interval variables.  Revue des Nouvelles Technologies de l'Information, vol. RNTI-E25. pp. 97-108. 
}

\keyword{ package }

