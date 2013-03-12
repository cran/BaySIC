\name{example.dat}
\alias{example.dat}
\docType{data}
\title{Example Mutation Data (Build hg19)}
\description{An example simulated dataset in the input format used by BaySIC (MUT-style), consisting of observed somatic mutations for 200 subjects}
\usage{data(example.dat)}
\format{A dataframe object with 9882 observations on 7 variables}
\details{BaySIC utilizes a MUT-style format for input into its functions, which is a \eqn{M\times7} dataframe where \eqn{M} is the number of observed mutations, and has the following structure:
  \itemize{
    \item{\code{chr}}{character string; chromosome (e.g.,"chr#","chrX","chrY")}
    \item{\code{start}}{integer; start basepair position}
    \item{\code{end}}{integer; end basepair position}
    \item{\code{id}}{character string; subject identification}
    \item{\code{type}}{character string; type of somatic mutation (e.g., "SNV", "INDEL")}
    \item{\code{gene}}{character string; corresponding gene of mutation}
    \item{\code{context}}{character string; sequence context (trinucleotide motif) of point mutation (\code{NA} for INDEL)}
  }
  }
\keyword{datasets}
