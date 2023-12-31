% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rank_edges.R
\name{IDVariantGenes}
\alias{IDVariantGenes}
\title{Identify genes variable across axis of interest}
\usage{
IDVariantGenes(
  seu,
  assay = "SCT",
  slot = "data",
  n.gene = 500,
  group.by = "orig.ident",
  filter_quality = F
)
}
\arguments{
\item{seu}{A seurat object}

\item{assay}{Which assay to use}

\item{slot}{Which slot to use}

\item{n.gene}{Number of variable genes to return (default: 500)}

\item{group.by}{Name of meta.data column corresponding to how dataset should be split.
This corresponds to the axis of biologically interesting variation.}

\item{filter_quality}{Remove quality-associated genes like mitochondrial, ribosomal, etc.}
}
\value{

}
\description{
Identify genes variable across axis of interest
}
\examples{
\dontrun{
var_genes <- IDVariantGenes(seu)
}
}
