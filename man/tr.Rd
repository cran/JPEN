\name{tr}
\alias{tr}
\title{Trace of matrix
}
\description{Returns the trace of a matrix}
\usage{
tr(A)
}
\arguments{
  \item{A}{
A is the input matrix.
}
}
\details{Returns the trace (sum of diagonal elements )of input matrix).}
\value{
Trace of input matrix.}
\references{
A Well Conditioned and Sparse Estimate of Covariance and Inverse Covariance Matrix Using Joint Penalty. Submitted.
http://arxiv.org/pdf/1412.7907v2.pdf
}
\author{Ashwini Maurya, Email: mauryaas@msu.edu
}
\examples{
p=10;n=100;Sig=diag(p);
y=rmvnorm(n,mean=rep(0,p),sigma=Sig);
S=var(y);
tr(S);
}