\name{jpen.tune}
\alias{jpen.tune}
\title{Tuning parameter selection based on minimization of 5 fold mean square error. 
}
\description{ Returns optimal values of tuning parameters lambda and gamma which minimizes the K-fold crossvalidation error on
}
\usage{
jpen.tune(Ytr, gama, lambda=NULL)
}
\arguments{
  \item{Ytr}{
Ytr is matrix of observations.
}
  \item{gama}{
gama is vector of gamma values. gamma is non-negative.} 
  \item{lambda}{
lambda is vector of lambda values. lambda is non-negative. 
}
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
opt=jpen.tune(Ytr=y,gama);
}