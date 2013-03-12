\name{BMR.plot}
\alias{BMR.plot}
\title{Visualize Sequence Context BMRs}
\description{Generates a heatmap of mutation rates by sequence context to assist in determining somatic point sequence context categories for BMR model}
\usage{
BMR.plot(dat.out)
}
\arguments{
  \item{dat.out}{output from \code{baysic.data}}
}
\value{Generates a heatmap of point mutation rates by trinucleotide sequence context motif, which is corrected for values in \code{ref.dat}, on the log10 scale}
\author{Nicholas B. Larson}
\seealso{
\code{\link{baysic.data}}
}
\examples{
\dontrun{
data(example.dat)
data(ccds.19)
baysic.dat.ex<-baysic.data(example.dat,ccds.19)
BMR.plot(baysic.dat.ex)
}
}

