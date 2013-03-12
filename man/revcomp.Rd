\name{revcomp}
\alias{revcomp}
\title{DNA Reverse Complementation}
\description{Returns the reverse complement of a given DNA character string}
\usage{
revcomp(dna.seq)
}
\arguments{
  \item{dna.seq}{character string; genetic sequence composed of "A","C","T", and "G" characters, of which the reverse complement sequence is desired}
}
\value{A character string that is the reverse complement of \code{dna.seq}}
\author{Nicholas B. Larson}
\examples{
test.sequence<-"ACTGATGAT"
revcomp(test.sequence)
}