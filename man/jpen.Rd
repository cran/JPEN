\name{jpen}
\alias{jpen}
\title{JPEN Estimate of covariance matrix
}
\description{
Estimate of covariance Matrix using Joint Penalty Method
}
\usage{
jpen(S,  gam, lam=NULL)
}
\arguments{
  \item{S}{ Sample covariance matrix.
}
  \item{gam}{Tuning parameter gamma. gam is non-negative.
}
  \item{lam}{Tuning parameter lambda. lam is non-negative.
}
}
\details{This function returns an estimate of covariance matrix using Joint Penalty method.}
\value{
Estimate of Covariance Matrix.}
\references{
A Well Conditioned and Sparse Estimate of Covariance and Inverse Covariance Matrix Using Joint Penalty. Submitted.
http://arxiv.org/pdf/1412.7907v2.pdf
}
\author{Ashwini Maurya, Email: mauryaas@msu.edu
}
\seealso{
jpen.tune, jpen.inv}
\examples{
p=10;n=100;
Sig=diag(p);
y=rmvnorm(n,mean=rep(0,p),sigma=Sig);
gam=1.0;S=var(y);
lam=2/p;
Sighat=jpen(S,gam,lam);
}
