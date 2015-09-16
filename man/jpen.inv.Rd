\name{jpen.inv}
\alias{jpen.inv}
\title{JPEN estimate of inverse cov matrix}
\description{
A well conditioned and sparse estimate of inverse covariance matrix using Joint Penalty}
\usage{
jpen.inv(S, gam, lam=NULL)
}
\arguments{
\item{S}{Sample cov matrix or a positive definite estimate based on covariance matrix.}
\item{gam}{gam is tuning parameter for eigenvalues shrinkage.}
\item{lam}{lam is tuning parameter for sparsity.}
}
\details{
Estimates a well conditioned and sparse inverse covariance matrix using Joint Penalty. If input matrix is singular or nearly singular, a JPEN estimate of covariance matrix is used in place of S.}
\value{
Returns a well conditioned and positive inverse covariance matrix.
}
\references{
A Well Conditioned and Sparse Estimate of Covariance and Inverse Covariance Matrix Using Joint Penalty. Submitted.
http://arxiv.org/pdf/1412.7907v2.pdf
}
\author{
Ashwini Maurya, Email: mauryaas@msu.edu.
}

\seealso{
jpen,jpen.tune,jpen.inv.tune}
\examples{
p=10;n=100;
Sig=diag(p);
y=rmvnorm(n,mean=rep(0,p),sigma=Sig);
S=var(y);
gam=1.0;
lam=2*max(abs(S[col(S)!=row(S)]))/p;
Omghat=jpen.inv(var(y),gam,lam);
}
