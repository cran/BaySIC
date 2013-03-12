\name{fuzzy.FDR.approx}
\alias{fuzzy.FDR.approx}
\title{Generate Approximate Fuzzy Rejection Probabilites}
\description{For hypothesis tests with discrete reference distributions, obtains fuzzy rejection probabilites for a given level of false discovery rate control}
\usage{fuzzy.FDR.approx(pprev, p, alpha, N)}
\arguments{
  \item{pprev}{numeric vector of p-values of length \eqn{l}, corresponding to strict inequality of test statistic values in a one-sided test (i.e., \eqn{P(T>t)})}
  \item{p}{length \eqn{l} numeric vector of p-values corresponding to traditional one-sided test (i.e., \eqn{P(T\geq t)}).}
  \item{alpha}{FDR level of interest (under Benjamini-Hochberg FDR procedure)}
  \item{N}{Number of Monte Carlo samples used to generate fuzzy rejection probability approximations.}
}
\details{This is a Monte Carlo implementation of the fuzzy FDR work developed by Kulinskaya et al. (2007)}
\value{Returns a vector of length \eqn{l} corresponding to the fuzzy rejection probabilities of the hypotheses represented in \code{pprev} and \code{p}, under FDR level \code{alpha}}
\references{
  \url{http://www.bgx.org.uk/alex/Kulinskaya-Lewin-resubmit.pdf}
  }
\author{Nicholas B. Larson}
