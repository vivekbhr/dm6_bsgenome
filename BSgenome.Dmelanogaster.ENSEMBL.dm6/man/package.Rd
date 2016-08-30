\name{BSgenome.Dmelanogaster.ENSEMBL.dm6}
\docType{package}

\alias{BSgenome.Dmelanogaster.ENSEMBL.dm6-package}
\alias{BSgenome.Dmelanogaster.ENSEMBL.dm6}
\alias{Dmelanogaster}

\title{Full genome sequences for Drosophila melanogaster (ENSEMBL version
dm6)}

\description{
  Full genome sequences for Drosophila melanogaster (Fly) as provided by ENSEMBL (dm6, Aug. 2014) and stored in Biostrings objects.
}

\details{
  
}

\note{
  This BSgenome data package was made from the following source data files:
  \preformatted{
genome.2bit created from ftp://ftp.ensembl.org/pub/release-79/fasta/drosophila_melanogaster/dna/Drosophila_melanogaster.BDGP6.dna_sm.toplevel.fa.gz
  }

  See \code{?\link[BSgenome]{BSgenomeForge}} and the BSgenomeForge
  vignette (\code{vignette("BSgenomeForge")}) in the \pkg{BSgenome}
  software package for how to make a BSgenome data package.
}

\author{The Bioconductor Dev Team}

\seealso{
  \itemize{
    \item \link[BSgenome]{BSgenome} objects and the
          \code{\link[BSgenome]{available.genomes}} function
          in the \pkg{BSgenome} software package.
    \item \link[Biostrings]{DNAString} objects in the \pkg{Biostrings}
          package.
    \item The BSgenomeForge vignette (\code{vignette("BSgenomeForge")})
          in the \pkg{BSgenome} software package for how to make a BSgenome
          data package.
  }
}

\examples{
BSgenome.Dmelanogaster.ENSEMBL.dm6
genome <- BSgenome.Dmelanogaster.ENSEMBL.dm6
head(seqlengths(genome))
genome$2L  # same as genome[["2L"]]

## ---------------------------------------------------------------------
## Genome-wide motif searching
## ---------------------------------------------------------------------
## See the GenomeSearching vignette in the BSgenome software
## package for some examples of genome-wide motif searching using
## Biostrings and the BSgenome data packages:
if (interactive())
    vignette("GenomeSearching", package="BSgenome")
}

\keyword{package}
\keyword{data}
