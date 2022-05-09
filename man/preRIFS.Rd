\name{preRIFS}
\alias{preRIFS}
\title{Prefractal points in R^n generated with a RIFS}
\description{
\code{preRIFS()} function generates a sample of fractal (prefractal) points in R^n with a random iterated function system (RIFS).
}
\usage{
preRIFS(n=10000, Z=R2ngon(),
       P=rep(1/nrow(Z), times=nrow(Z)),
       M=rep(1, times=nrow(Z)))
}
\arguments{
\item{n}{a number of prefractal points.}
\item{Z}{a set of protofractal points.}
\item{P}{a probability distribution of protofractal points.}
\item{M}{a partition coefficients distribution of protofractal points.}
}
\value{
A list with the prefractal (\code{$pre}) and protofractal points (\code{$proto}); distributions of probabilities & coefficients (\code{$distr}); sample of protofractal indexes (\code{$index}).
}
\details{
A protofractal set \code{Z} is a discrete or continuous set, which in the iterative process generates a prefractal set \code{X}.

A prefractal set \code{X} is a sample of an attractor (fractal) of a random iterated function system:\cr
\code{X[i,] <- (X[i-1,] + M[z[i]]*Z[z[i],])/(1 + M[z[i]])},\cr
where the index \code{i in seq(n)}; the index \code{z} corresponds to a random points sample of a protofractal set \code{Z}.
}
\seealso{
\link{R2ngon},
\link{plotR2pre},
\link{preRSum0}
}
\concept{protofractal set}
\concept{prefractal set}
\concept{random iterated function system}
\author{Pavel V. Moskalev and Alexey G. Bukhovets}
\references{
Bukhovets A.G. and Bukhovets E.A. (2012) Modeling of fractal data structures. \emph{Automation and Remote Control}, Vol.73, No.2, pp.381-385, doi:10.1134/S0005117912020154.\cr
Moskalev P.V. and Bukhovets A.G. (2012) The similarity dimension of the random iterated function system. \emph{Computer Research and Modeling}, Vol.4, No.4, pp.681-691, doi:10.20537/2076-7633-2012-4-4-681-691.
}
\examples{
# Example 1a. Sierpinski triangle, 1st order, p=const, mu=const
l <- preRIFS()
r <- rainbow(n=nrow(l$proto), v=0.9)
plot(l$proto, asp=1, col=r,
     main="Prefractal points for 3-gon: k=3; p=1/3; mu=1")
points(l$pre, pch=46, col=r[l$index])

\dontrun{
# Example 1b. Sierpinski triangle, 1st order, p=var, mu=const
l <- preRIFS(P=c(2,2,5)/9)
r <- rainbow(n=nrow(l$proto), v=0.9)
plot(l$proto, asp=1, col=r,
     main="Prefractal points for 3-gon: k=3; p=(2,2,5)/9; mu=1")
points(l$pre, pch=46, col=r[l$index])

# Example 1c. Sierpinski triangle, 1st order, p=const, mu=var
l <- preRIFS(M=c(4,4,6)/5)
r <- rainbow(n=nrow(l$proto), v=0.9)
plot(l$proto, asp=1, col=r,
     main="Prefractal points for 3-gon: k=3; p=1/3; mu=(4,4,6)/5")
points(l$pre, pch=46, col=r[l$index])

# Example 2a. Sierpinski square, 2nd order, p=const, mu=const
l <- preRIFS(Z=R2ngon(4,2), M=rep(2,8))
r <- rainbow(n=nrow(l$proto), v=0.9)
plot(l$proto, asp=1, col=r,
     main="Prefractal points for 4-gon: k=8, p=1/8, mu=2")
points(l$pre, pch=46, col=r[l$index])

# Example 2b. Sierpinski square, 2nd order, p=var, mu=const
l <- preRIFS(Z=R2ngon(4,2), P=2^abs(seq(-3,4))/45, M=rep(2,8))
r <- rainbow(n=nrow(l$proto), v=0.9)
plot(l$proto, col=r, asp=1,
     main="Prefractal points for 4-gon: k=8, p=2^|-3:4|/45, mu=2")
points(l$pre, pch=46, col=r[l$index])

# Example 2c. Sierpinski square, 2nd order, p=const, mu=var
l <- preRIFS(Z=R2ngon(4,2), M=1.2^abs(seq(-3,4))+0.5)
r <- rainbow(n=nrow(l$proto), v=0.9)
plot(l$proto, col=r, asp=1,
     main="Prefractal points for 4-gon: k=8, p=1/8, mu=0.5+1.2^|-3:4|")
points(l$pre, pch=46, col=r[l$index])
}
}
