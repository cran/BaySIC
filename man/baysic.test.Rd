\name{baysic.test}
\alias{baysic.test}
\title{BaySIC Evaluation of SMGs}
\description{Evaluates genes for SMGs using Bayesian posterior predictive methods}
\usage{baysic.test(dat.out, fit.out, fdr.level = 0.15, fuzzy.cnt = 10000, r = NULL,subtype = NULL, PB.approx = FALSE)}
\arguments{
  \item{dat.out}{output from \code{baysic.data}}
  \item{fit.out}{output from \code{baysic.fit} which utilized \code{dat.out}}
  \item{fdr.level}{numeric (\eqn{\in(0,1)}) defining FDR level for multiple assessment passed to \code{fuzzy.FDR.approx}.  Defaults to 0.15}
  \item{fuzzy.cnt}{number of Monte Carlo iterations to use in approximating fuzzy FDR values passed to \code{fuzzy.FDR.approx}.  Defaults to 10000.}
  \item{r}{Optional number of MCMC draws to thin to for Monte Carlo integration, such that \code{r}<\eqn{R}, where \eqn{R} is the total number of MCMC draws.}
  \item{subtype}{Optional \eqn{N_s\times 2} dataframe that defines membership of cancer subtype(s), where \eqn{N_s\leq N}.  The first column of \code{subtype} should consist of subject ids (same as in \code{dat}) and the second the corresponding subtype membership.  When \code{subtype} is provided, \code{baysic.test} will also generate analysis results for subtype-specific analyses.}
  \item{PB.approx}{logical; if \code{TRUE}, the Refined Normal Approximation (RNA) of the Poisson-Binomial distribution is used when \code{ref.dat} is a \code{list}.  Defaults to \code{FALSE}.}
}
\details{When \code{is.list{ref.dat}} is \code{TRUE}, BaySIC evaluates whether or not a gene is an SMG using the Poisson-Binomial rather than the traditional binomial distribution.  This accomodates subject-specific mutation rates given varying sequence content.  When \eqn{N} is relatively large (e.g., \eqn{N\geq50}) it is recommended that optional arguments \code{r} and \code{PB.approx} be considered to alleviate computational burden.} 
\value{Returns a \code{list} object with the following components:
  \item{test.res}{a matrix with \eqn{G} rows containing the SMG analysis results from BaySIC.  This includes the gene, the posterior predictive p-values, and fuzzy rejection probabilities under FDR level \code{fdr.level}.  It will also contain results for any subtype analyses if \code{subtype} is specified.}
  \item{fdr.level}{value of \code{fdr.level} used}
  \item{fuzzy.cnt}{value of \code{fuzzy.cnt} used}
  \item{subtype}{value of \code{subtype}, if supplied}
}

\author{Nicholas B. Larson}
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
baysic.test.ex<-baysic.test(baysic.dat.ex,baysic.fit.ex)
}
}
