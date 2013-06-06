\name{gpca}
\alias{gpca}
\title{
Main function gpca, Generalized Principal Component of Symbolic Interval variables
}
\description{
Performs an analysis in principal axes of multiple tables of symbolic interval variables. 
The function uses a class  "Resdata" object. 

}
\usage{
gpca(xmin = list, xmax = list, reduire = 0, nomVar = NULL, 
axes = c(1, 2), axes2=c(1,2,3), nomInd = NULL, legend = NULL, xlim = NULL,
 ylim = NULL, nametable = NULL, plot3d.table=NULL)
}

\arguments{
  \item{xmin}{   
  List of all data frames containing all min of initial data.
  These data have the same number of rows and columns.
}
  \item{xmax}{
  List of all data frames containing all max of initial data.
  These data have the same number of rows and columns.
}
  \item{reduire}{
  is a logical argument of the Centrage function. To centering without scaling by standard deviation,
  use reduire=0. Otherwise use reduire=1.
}
  \item{nomVar}{
    Set the column names of all data frames
}
  \item{axes}{
a length 2 vector specifying the components to plot
}
  \item{axes2}{
a length 2 vector specifying the components to plot
}
  \item{nomInd}{
 Set the column row names  of  all data frames
}
  \item{legend}{
This function could be used to add legends to plots. 
}
  \item{xlim}{
range for the plotted "x" values, defaulting to the range of the finite values of "x"}
  \item{ylim}{
range for the plotted "y" values, defaulting to the range of the finite values of "y"}
  \item{nametable}{
 Set the column names of the tables
}
  \item{plot3d.table}{
  for visualization in 2D and 3D of tables 
}
}

\value{
Returns a list including: 

\item{PC}{array containing the projections of the min and max of the average of input interval datasets.}
%%\item{X}{List of all data frames containing all min of initial data} %%pas besion de renvoyer
\item{Correl}{Correlations based on interval  variables - dimensions}
\item{Pval2}{a matrix containing all the eigenvalues, the percentage of variance 
  and the cumulative percentage of variance}
 \item{PCinterval}{array list  containing the coordinates of the individuals on the principal axes}

}
\references{
S.Makosso-Kallyth, Analysis of m sets of symbolic interval variables.  Revue des Nouvelles Technologies de l"Informatique,
 vol. RNTI-E25. pp. 97-108, 2013.
}
\author{
Brahim Brahim and Sun Makosso-Kallyth
}

\examples{
data(Judge1)
data(Judge2)
data(Judge3)

preparation1<-Resdata(list(Judge1,Judge2,Judge3))
List1min<-preparation1$tablemin
List1max<-preparation1$tablemax

# example 1 with the use of some parameters by default
example1<-gpca(xmin=List1min,xmax=List1max,nomInd=paste('Region',1:6),
              nomVar=c('Banana','Coffee','Thea','Cocoa'))

# example 1 with visualization of table containing the coordinates
# of the individuals onto the principal axes
example1<-gpca(xmin=List1min,xmax=List1max,nomInd=paste('Region',1:6),nomVar=c('Banana',
              'Coffee','Thea','Cocoa'),axes=c(1,2),axes2=c(1,2,3),plot3d.table=c(1:3),
			   nametable=paste('Expert',1:3,sep='-'))

# example 1 with visualization of the table 2 and 3 containing
#the coordinates of the individuals onto the principal axes
example1<-gpca(xmin=List1min,xmax=List1max,nomInd=paste('Region',1:6),
              nomVar=c('Banana','Coffee','Thea','Cocoa'),axes=c(1,2),
			  axes2=c(1,2,3),plot3d.table=c(2:3))

#### print numeric output of example1
# input tables onto the axes of the compromise
example1$PCinterval

# Principal components of the compromise
example1$PCCompromise

# Correlation between initial interval variables and principal
#component of the compromise
example1$Correl

# print eigenvalue, % of variance, cumulative % percentage
# of PCA of the compromise
example1$Pval


data(video1)
data(video2)
data(video3)
preparation2<-Resdata(list(video1,video2,video3))
List2min<-preparation2$tablemin
List2max<-preparation2$tablemax

# example2 : analysis of video dataset
example2<-gpca(xmin=List2min,xmax=List2max,nomVar=c('nvisit','nwatch',
'nlike','ncoment','nshare'),
nametable=paste('Video', 1:3))

# example2 : analysis of video dataset with the 3D graphics
example2<-gpca(xmin=List2min,xmax=List2max,nomVar=c('nvisit',
'nwatch','nlike','ncoment','nshare'),nametable=paste('Video', 1:3),
nomInd=paste('Obs',1:10),plot3d.table=c(1,2,3))


data(oils)
preparation3<-Resdata(list(oils))
List3min<-preparation3$tablemin
List3max<-preparation3$tablemax

# example3 Interval Principal component analysis based on min and max
example3<-gpca(xmin=List3min,xmax=List3max,nomInd=rownames(oils),
nomVar=c('Gravity','Freezing','Iodine','Saponification'))

#### print numeric output of example3

# interval Principal components
example3$PCinterval

# Correlation between initial interval variables and principal
#components
example3$Correl

# print eigenvalue, % of variance, cumulative % percentage
# of PCA of the compromise
example3$Pval

# example3 Interval Principal component analysis based on min and max
#with standardisation of variables
example3bis<-gpca(xmin=List3min,xmax=List3max,nomInd=rownames(oils),
nomVar=c('Gravity','Freezing','Iodine','Saponification'),reduire=1)

# interval Principal components
example3bis$PCinterval

# Correlation between initial interval variables and principal
#components
example3bis$Correl

# print eigenvalue, % of variance, cumulative % percentage
# of PCA of the compromise
example3bis$Pval
}