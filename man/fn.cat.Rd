\name{fn.cat}
\alias{fn.cat}
\title{Collapses SNV and reference data into sequence mutation categories}
\description{Subroutine for \code{baysic.fit} and \code{baysic.test} which generates reduced data representations of mutation and reference data by collapsing sequence categories into single columns}
\usage{
fn.cat(dat, snv.cat)
}
\arguments{
  \item{dat}{\eqn{G\times 32} \code{ref.dat} or \code{snv.dat} data matrix} 
  \item{snv.cat}{a \code{list} of length \eqn{C}, where \eqn{C} is the number of sequence categories desired to be modeled (\eqn{C\leq32}).  Each element of \code{snv.cat} should be a vector of character strings of trinucleotide motifs (e.g., c("ATA","ACA")) which define a group of motifs which are assumed to have the same background mutation rate.}
}
\value{a \eqn{G\times C} matrix where each column corresponds to an SNV sequence category in \code{snv.cat}}
\author{Nicholas B. Larson}
\seealso{
\code{\link{baysic.fit}},\code{\link{baysic.test}}
}
