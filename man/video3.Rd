\name{video3}
\alias{video3}
\docType{data}
\title{
 Video data, GPCSIV, Generalized Principal Component of Symbolic Interval variables
}
\description{
This  is a simulated dataset which contains informations about   behaviour  of internauts concerning  one video published  on the  web. This dataset (video3) contains 5 symbolic interval variables. 
In these data, the five successive pairs of columns represented the five symbolic variables of type interval.
Each pair consists of a min and a max. 

}
\usage{data(video3)}
\format{
  A data frame with 10 observations on the following 10 variables.
  \describe{
    \item{\code{nvisitmin}}{a numeric vector, minimum daily average number of visits.}
    \item{\code{nvisitmax}}{a numeric vector, maximum daily average number of visits.}
    \item{\code{nwatchmin}}{a numeric vector, minimum daily average number of people who clicked on play.}
    \item{\code{nwatchmax}}{a numeric vector, maximum daily average number of people who clicked on play.}
    \item{\code{nlikemin}}{a numeric vector, minimum daily average number of people who clicked on 'I like'.}
    \item{\code{nlikemax}}{a numeric vector, maximum daily average number of people who clicked on 'I like'.}
    \item{\code{ncomntmin}}{a numeric vector, minimum daily average number of people who commented.}
    \item{\code{ncomntmax}}{a numeric vector, maximum daily average number of people who commented.}
    \item{\code{nsharemin}}{a numeric vector, minimum daily average number of people who shared the video.}
    \item{\code{nsharemax}}{a numeric vector, maximum daily average number of people who shared the video.}
  }
}


\examples{
data(video3)
}

