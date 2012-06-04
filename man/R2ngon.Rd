\name{R2ngon}
\alias{R2ngon}
\title{Regular polygonal protofractal set in R^2}
\description{
\code{R2ngon()} function generates a regular polygonal protofractal set in R^2.
}
\usage{
R2ngon(n1=3, n2=1, r=1, o=c(0,0), cycle=FALSE)
}
\arguments{
\item{n1}{a number of vertices of a regular polygon.}
\item{n2}{a number of partition points for the edges of a regular polygon.}
\item{r}{a radius of the circumscribed circle.}
\item{o}{a center of the circumscribed circle.}
\item{cycle}{logical; if \code{cycle=FALSE}, first & last points are not equal.}
}
\value{
A matrix of points coordinates of a protofractal set in R^2.
}
\details{
A regular polygon is a convex polygon in which all edges and all angles are equal.

A protofractal set \code{Z} is a discrete or continuous set, which in the iterative process generates a sample \code{X} of a fractal set.
}
\seealso{
\link{preRIFS}
}
\concept{regular polygon}
\concept{protofractal set}
\author{Pavel V. Moskalev}
\examples{
plot(R2ngon(n1=90, cycle=TRUE), type="l", asp=1, col="gray",
     main="Regular {3,4,5,7,11}-gonal sets in R^2")
for (n in c(3,4,5,7,11)) 
  lines(R2ngon(n1=n, cycle=TRUE), 
        type="b", pch=16, col=hsv(h=(n-2)/9,v=0.9))
}
