\name{write.baysic}
\alias{write.baysic}
\title{Write BaySIC JAGS model files}
\description{
Procedurally writes JAGS model files based upon the arguments for the BaySIC model fitting function \code{baysic.fit}.}
\usage{
write.baysic(mut.dat, covar = NULL, prior = NULL, fn.jags = "baysic.jags")
}
\arguments{
  \item{mut.dat}{matrix or dataframe containing the observed SNV and indel.  The indel counts should be contained in the final column.  Column names from this object will be used to create the model file.}
  \item{covar}{optional matrix or dataframe of gene-level covariates. Column names from this object will be used to create the model file.}
  \item{prior}{optional vector of character strings which define prior distributions on the model parameters in the JAGS language format.  If \code{prior} is non-NULL, it should be of length equal to all possible model parameters (sum of number of columns of \code{mut.dat} and \code{covar})}
  \item{fn.jags}{file name of JAGS model file to be used.  Defaults to "baysic.jags"}
  }
\details{This function is a subroutine used in \code{baysic.fit}}
\value{Writes JAGS file to the location specified by \code{fn.jags}}
\author{Nicholas B. Larson}
\seealso{
\code{\link{baysic.test}}
}