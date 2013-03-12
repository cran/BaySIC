\name{BaySIC-package}
\alias{BaySIC-package}
\alias{BaySIC}
\docType{package}
\title{Bayesian Analysis of Significantly Mutated Genes in Cancer}
\description{Software implementation of the algorithm BaySIC, a Bayesian approach toward analysis of significantly mutated genes in cancer data.}
\details{
\tabular{ll}{
Package: \tab BaySIC\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2013-03-12\cr
License: \tab GPL (>=2)\cr
}
This package provides functions for Bayesian SMG analysis, which includes plotting functions, model definition and fitting, and evaluation of individual genes using posterior predictive methods.  BaySIC is a flexible algorithm that can accommodate gene-level covariate data, varying subject-specific sequence coverage, and subtype analysis.  It also includes two reference data files (\code{ccds.18} and \code{ccds.19}) corresponding to human genome builds hg18 and hg19, which respectively consist of sequence context enumeration of the Consensus Coding Sequence genes in each build. 
}
\author{Nicholas B. Larson

Maintainer: Nicholas B. Larson <larson.nicholas@mayo.edu>
}
\keyword{ package }
