\name{preRSum0}
\alias{preRSum0}
\title{Prefractal points in R^n generated with a matrix of random sums}
\description{
\code{preRSum0()} function generates a sample of fractal (prefractal) points in R^n with a matrix of random sums of a numerical series.
}
\usage{
preRSum0(n=10000, mu=1, eps=1e-9, Z=R2ngon(), 
         P=rep(1/nrow(Z), times=nrow(Z)))
}
\arguments{
\item{n}{a number of prefractal points.}
\item{mu}{a partition coefficient for iterative segments.}
\item{eps}{an error of a random sum of a numerical series.}
\item{Z}{a set of protofractal points.}
\item{P}{a probability distribution of protofractal points.}
}
\value{
A list with the prefractal (\code{$pre}) and protofractal points (\code{$proto}); distributions of probabilities & coefficients (\code{$distr}).
}
\details{
A protofractal set \code{Z} is a discrete or continuous set, which in the iterative process generates a prefractal set \code{X}.

A prefractal set \code{S\%*\%Z} is a sample of a fractal set generates with a matrix of random sums \code{S} of a numerical series:
\code{S[i,j] <- sum(X[l==j])}, \cr
where \code{i in seq(n)}; \code{j in seq(k)}; \code{k <- nrow(Z)}; \code{X <- mu/(mu+1)^seq(m)}; \code{m <- 1-log(eps*mu)/log(1+mu)}; \code{l <- sample.int(k, size=m, prob=P, replace=TRUE)}.
}
\seealso{
\link{R2ngon},
\link{preRIFS},
\link{plotR2pre}
}
\concept{protofractal set}
\concept{prefractal set}
\concept{random iterated function system}
\author{Pavel V. Moskalev, Alexey G. Bukhovets and Tatyana Ya. Biruchinskay}
\references{
Bukhovets, A.G. and Bukhovets, E.A. (2012), Modeling of fractal data structures. \emph{Automation and Remote Control}, Vol.73, No.2, pp.381-385.\cr
Bukhovetc, A.G. and Biruchinskay, T.Y. (2011), Modelling fractal's properties of system objects. \emph{Proceedings of Voronezh State University. Series: Systems Analysis and Information Technologies}, No.2 (July-December), pp.22-26; in Russian.
}
\examples{
# Example 1a. Sierpinski triangle, 1st order, p=const, mu=const
l <- preRSum0()
plot(l$proto, asp=1, col="red",
     main="Prefractal points for 3-gon: k=3; p=1/3; mu=1")
points(l$pre, pch=46, col="red")

# Example 1b. Sierpinski triangle, 1st order, p=var, mu=const
l <- preRSum0(P=c(2,2,5)/9)
plot(l$proto, asp=1, col="red",
     main="Prefractal points for 3-gon: k=3; p=(2,2,5)/9; mu=1")
points(l$pre, pch=46, col="red")

# Example 2a. Sierpinski square, 2nd order, p=const, mu=const
l <- preRSum0(Z=R2ngon(4,2), mu=2)
plot(l$proto, asp=1, col="red", 
     main="Prefractal points for 4-gon: k=8, p=1/8, mu=2")
points(l$pre, pch=46, col="red")

# Example 2b. Sierpinski square, 2nd order, p=var, mu=const
l <- preRSum0(Z=R2ngon(4,2), P=2^abs(seq(-3,4))/45, mu=2)
plot(l$proto, asp=1, col="red", 
     main="Prefractal points for 4-gon: k=8, p=2^|-3:4|/45, mu=2")
points(l$pre, pch=46, col="red")
}
