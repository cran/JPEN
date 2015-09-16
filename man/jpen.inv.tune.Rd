\name{jpen.inv.tune}
\alias{jpen.inv.tune}
\title{Tuning parameter Selection for inverse covariance matrix estimation based on minimization of Gaussian log-likelihood.}
\description{ Returns optimal values of tuning parameters lambda and gamma}
\usage{
jpen.inv.tune(Ytr, gama, lambda=NULL)
}
\arguments{
  \item{Ytr}{
Ytr is matrix of observations.}
  \item{gama}{
A  vector of gamma values.}
  \item{lambda}{
Optional vector of values of lambda. If optional, the algorithm automatically calculates 10 values of lambda for each gamma and finds the optimal values of 
(lambda,gamma) that minimizes the negative of Gaussian likelihood function using K-fold cross validation.}
}
\details{
Returns the value of optimal tuning parameters. The function uses  K-fold cross validation to select the best tuning parameter from among a set of of values of lambda and gamma.
}
\value{
Returns the optimal values of lambda and gamma.
}
\references{
A Well Conditioned and Sparse Estimate of Covariance and Inverse Covariance Matrix Using Joint Penalty. Submitted.
http://arxiv.org/pdf/1412.7907v2.pdf
}
\author{Ashwini Maurya, Email: mauryaas@msu.edu.
}
\seealso{
jpen}
\examples{
p=10;n=100;
Sig=diag(p);
y=rmvnorm(n,mean=rep(0,p),sigma=Sig);
gama=c(0.5,1.0);
opt=jpen.inv.tune(var(y),gama);
}

