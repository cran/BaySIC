\name{baysic.fit}
\alias{baysic.fit}
\title{Fits BaySIC BMR model}
\description{Generates an MCMC model fit of the BaySIC BMR model}
\usage{
baysic.fit(dat.out, snv.cat, covar = NULL, excl.list = NULL, burn.in = 10000,n.samp = 25000, fn.jags = "baysic.jags", prior = NULL)
}
\arguments{
  \item{dat.out}{Output from \code{baysic.data}}
  \item{snv.cat}{a \code{list} of length \eqn{C}, where \eqn{C} is the number of sequence categories desired to be modeled (\eqn{C\leq32}).  Each element of \code{snv.cat} should be a vector of character strings of trinucleotide motifs (e.g., c("ATA","ACA")) which define a group of motifs which are assumed to have the same background mutation rate.}
  \item{covar}{optional \eqn{G \times Q} matrix of gene-level covariate data, where \eqn{G} is the total number of genes and \eqn{Q} the number of covariates.}
  \item{excl.list}{optional vector of genes to be excluded from model fitting process.  The format of \code{excl.list} can be either character or numeric, the former indicating the names of genes and the latter their order in \code{ref.dat}.}
  \item{burn.in}{an integer; represents the burn-in size to apply in the MCMC model fitting using JAGS.  Defaults to 10,000}
  \item{n.samp}{an integer; represents the size of the MCMC posterior sample draw from the fitted model.  Defaults to 25,000}
  \item{fn.jags}{a character string; corresponds to the file name and location of the JAGS model file to be written.  Defaults to "baysic.jags" in the current working directory.}
  \item{prior}{optional vector of prior distribution specifications (as character strings).  If \code{is.null(prior)==FALSE}, \code{prior} should be of length equal to all of the model parameters and formatted to follow the distributional notation of the JAGS model language.  The order of the prior specification follows the format: SNV categories, any covariates (optional), indel \eqn{\lambda} parameter.} 
}

\value{Returns a \code{list} object with the following components:
  \item{fit.post}{an \code{mcmc} object of the posterior draws of the BaySIC BMR model parameters}
  \item{covar}{\code{covar} object (if included in \code{baysic.fit} argument)}
  \item{snv.cat}{the \code{snv.cat} object in the original call}
  \item{excl.list}{\code{excl.list} object (if included in \code{baysic.fit} argument)}
}
\author{Nicholas B. Larson}
\seealso{
\code{\link{baysic.data}},\code{\link{baysic.test}}
}
\examples{
\dontrun{
data(example.dat)
data(ccds.19)
baysic.dat.ex<-baysic.data(example.dat,ccds.19)
snv.cat.ex<-list()
snv.cat.ex[[1]]<-grep("[^T]C[^G]",colnames(ccds.19)[-c(1:2)])
snv.cat.ex[[2]]<-unique(c(grep("TC.",colnames(ccds.19)[-c(1:2)]),grep(".CG",colnames(ccds.19)[-c(1:2)])))
snv.cat.ex[[3]]<-grep(".T.",colnames(ccds.19)[-c(1:2)])
baysic.fit.ex<-baysic.fit(baysic.dat.ex,snv.cat.ex)
}
}

