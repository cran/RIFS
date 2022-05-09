\name{plotR2pre}
\alias{plotR2pre}
\title{Plot a prefractal set in R^2}
\description{
\code{plotR2pre()} function draws a prefractal set in R^2.
}
\usage{
plotR2pre(l=preRIFS(),
          s="Prefractal points for 3-gon: k=3; p=1/3; mu=1")
}
\arguments{
\item{l}{a list with prefractal (\code{$pre}) and protofractal (\code{$proto}) points & indexes (\code{$index}).}
\item{s}{a string for the main title.}
}
\details{
A regular polygon is a convex polygon in which all edges and all angles are equal.

A protofractal set \code{Z} is a discrete or continuous set, which in the iterative process generates a sample of the fractal set (a prefractal set) \code{X}.
}
\seealso{
\link{preRIFS},
}
\concept{protofractal set}
\concept{prefractal set}
\concept{random iterated function system}
\author{Pavel V. Moskalev and Alexey G. Bukhovets}
\examples{
# Example 1. Sierpinski triangle, 1st order, p=const, mu=var
for (m in seq(-4,0)) {
  plotR2pre(preRIFS(M=2^rnorm(n=3, mean=m, sd=-m/4)),
            s="Prefractal points for 1st order 3-gon")
  Sys.sleep(0.1)
}

\dontrun{
# Example 2. Uniform distribution, 1st order, p=const, mu=var
for (m in seq(-4,0)) {
  plotR2pre(preRIFS(Z=R2ngon(4,1),
                    M=2^rnorm(n=4, mean=m, sd=-m/4)),
            s="Prefractal points for 1st order 4-gon")
  Sys.sleep(0.1)
}

# Example 3. Sierpinski triangle, 2nd order, p=const, mu=var
for (m in seq(-3,1)) {
  plotR2pre(preRIFS(Z=R2ngon(3,2),
                    M=2^rnorm(n=6, mean=m, sd=-(m-1)/4)),
            s="Prefractal points for 2nd order 3-gon")
  Sys.sleep(0.5)
}

# Example 4. Sierpinski square, 2nd order, p=const, mu=var
for (m in seq(-3,1)) {
  plotR2pre(preRIFS(Z=R2ngon(4,2),
                    M=2^rnorm(n=8, mean=m, sd=-(m-1)/4)),
            s="Prefractal points for 2nd order 4-gon")
  Sys.sleep(0.5)
}
}
}
