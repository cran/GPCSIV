\name{Resdata}
\alias{Resdata}

\title{
class of objects 'Resdata'
}
\description{
This class return two list of data frames (list of minimum data and list of maximum
}
\usage{
Resdata(enter = list)
}

\arguments{
  \item{enter}{
list of data input
}
}
\value{
 \item{tablemin }{List of all arrays containing all minimum of initial data}
 \item{tablemax }{List of all arrays containing all maximum of initial data}
}

\author{
Brahim Brahim and Sun Makosso-Kallyth
}
\examples{
data(video1)
data(video2)
data(video3)
preparation2<-Resdata(list(video1,video2,video3))
List2min<-preparation2$tablemin
List2max<-preparation2$tablemax
}
