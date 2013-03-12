\name{baysic.data}
\alias{baysic.data}
\title{Organizes data for BaySIC functions}
\description{Creates a \code{list} object from mutation and reference data for use with BaySIC fitting and testing functions} 
\usage{baysic.data(dat, ref.dat, plot = FALSE, N = NULL, silent = TRUE)}
\arguments{
  \item{dat}{matrix; Mutation input data.  Baysic requires a specific format similar to the MUT format file, and should be an \eqn{M\times7} matrix with column headings "chr", "start", "end", "id","type", "gene","context," where each row details an individual mutation.}
  \item{ref.dat}{a dataframe or \code{list} of dataframes; \code{ref.dat} is a representation of the sequence content of each gene of interest, for 32 unique trinucleotide sequence contexts, yielding an \eqn{G\times34} matrix, where \eqn{G} is the total number of genes.  If \code{ref.dat} is a matrix, it is assumed that all subjects correspond to the same reference data. It is possible that reference data may vary from subject to subject due to different platforms or coverages.  In this case, \code{ref.dat} can also be a list of \code{N} reference data matrices, where \code{N} is the number of subjects.  The names of each list element should correspond to ids used in the \code{dat} file.}
  \item{plot}{logical; if \code{TRUE}, a plot summarizing the mutation data at an overall and per subject basis is generated.  Defaults to \code{FALSE}.}
  \item{N}{an integer (optional); equal to the number of subjects represented in \code{dat}.  If \code{N=NULL} and \code{is.list(ref.dat)==FALSE}, \code{N} is assumed to the number of unique subject ids in \code{dat}.  If \code{is.list(ref.dat)=TRUE}, then \code{N=length(ref.dat)}.}
  \item{silent}{logical; if \code{FALSE}, mutations defined as 'Synonymous' or 'Silent' will be removed from the dataset and subsequent analyses. Defaults to \code{TRUE}.}
  }
\details{The mutation data \code{dat} is a 7-column matrix similar in style to other popular mutation file formats.  The first three columns ("chr","start","end") correspond to the positional information of the somatic mutation.  The "id" column represents an identification vector including subject ids for each documented mutation.  The "type" column corresponds to the type of mutation for each entry.  This is relatively flexible for point mutations, and only requires some form of "silent" or "synonymous" for such mutations if \code{silent=FALSE}, but insertion/deletion events should be designated as "INDEL."  The "gene" column represents the name of the gene the mutation corresponds to, and must match the gene names used in \code{ref.dat}.  The "context" entries represent the trinucleotide sequence context of each point mutation (\code{NA} for INDELS)

 The first two columns of the data matrix (or matrices) in \code{ref.dat} should correspond to the gene name and corresponding chromosome, and the column names of the remaining 32 columns should correspond to the trinucleotide motif (e.g. "ACA").  The sequence content entries should be integer values which correspond to the number of nucleotides in the coding content of a given gene which satisify the trinucleotide motif (central base with flanking 5' and 3' bases).  Each base should be uniquely represented, such that the sum of all 32 counts is equivalent to the basepair length of the total coding sequence for a given gene.

The \code{baysic.data} function has its own trinucleotide naming convention, in that all motifs are in all caps and have either "T" or "C" as the central base.  Column names of \code{ref.dat} and "context" entries in \code{dat} will be adjusted to accommodate this convention if they deviate from it. 
} 

\value{
Returns a \code{list} data structure with the following components:

\item{all.dat}{Original mutation data object \code{dat}}
\item{ref.dat}{Original reference data object \code{ref.dat}}
\item{N}{Number of subjects with observed data}
\item{genes}{Vector of length \eqn{G} of gene names included in analysis, where \eqn{G} is the total number of genes. Derived from \code{ref.dat}}
\item{snv.dat}{A \eqn{G\times32} matrix of total number of SNV mutations per sequence context and gene}
\item{indel.dat}{Vector of length \eqn{G} of total number of indel mutations per gene} 
}

\author{Nicholas B. Larson}
\seealso{
\code{\link{baysic.fit}},\code{\link{baysic.test}}
}
\examples{
\dontrun{
data(example.dat)
data(ccds.19)
baysic.dat.ex<-baysic.data(example.dat,ccds.19)
}
}