\name{f.K.fold}
\alias{f.K.fold}
\title{ Subset the data into K fold, training and test data.
}
\description{K-fold subsetting.}
\usage{f.K.fold(Nobs, K = 5)}
\arguments{  \item{Nobs}{n is number of observations}
\item{K}{K is number of folds, typically 5 fold.}
}
\details{K-fold subset of observations into training and test data. }
\value{Returns the index for K-fold training and test data subsets.}
\references{
A Well Conditioned and Sparse Estimate of Covariance and Inverse Covariance Matrix Using Joint Penalty. Submitted.
http://arxiv.org/pdf/1412.7907v2.pdf
}
\author{Ashwini Maurya, Email: mauryaas@msu.edu
}
\examples{
n=100;K=5;cv=f.K.fold(n,K);
}
