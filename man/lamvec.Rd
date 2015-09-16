\name{lamvec}
\alias{lamvec}
\title{returns a vector of values of lambda for given value of gamma }
\description{returns 10 values of lambda for each gamma.}
\usage{
lamvec(c, gam, p)
}
\arguments{
  \item{c}{
c is absolute maximum of off-diagonal entries of sample covariance matrix.
}
  \item{gam}{
gamma is a non-negative constant. 
}
  \item{p}{
p is number of rows/columns of matrix.
}
}
\details{The lamvec function retuns a 10 values of lambda for each value of gamma. A larger value of lambda yields sparse estimate but need not be positive definite, however at least one combination of (lambda, gamma) will yield a positive definite solution. If two different combination of (lambda, gamma) yeilds same cross validation error, a larger values of lambda will be selected which results in more sparse solution.}
\value{
A vector of values of lambda for each combination of gama. By choosing c as the maximum of off-diagonal elements of sample covariance matrix, the largest value of lambda yields an estimate which diagonal matrix with elements proportional to the diagonal elements of sample covariance matrix.}
\references{
A Well Conditioned and Sparse Estimate of Covariance and Inverse Covariance Matrix Using Joint Penalty. Submitted.
http://arxiv.org/pdf/1412.7907v2.pdf
}
\author{ Ashwini Maurya, Email: mauryaas@msu.edu
}
\seealso{
jpen, jpen.inv, jpen.tune, jpen.tune.inv}
\examples{
p=10;n=100;Sig=diag(p);
y=rmvnorm(n,mean=rep(0,p),sigma=Sig);
gam=c(0.5);
S=var(y);
c=max(abs(S[row(S)!=col(S)]));
lambda=lamvec(c,gam,p);
}