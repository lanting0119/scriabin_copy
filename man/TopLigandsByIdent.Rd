% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rank_edges.R
\name{TopLigandsByIdent}
\alias{TopLigandsByIdent}
\title{Plot most active ligands in receiver cell type}
\usage{
TopLigandsByIdent(
  seu,
  active_ligands = NULL,
  sender = NULL,
  receiver = NULL,
  group.by = "orig.ident",
  pearson.threshold = 0.1,
  ligands.display = 25,
  assay = "SCT"
)
}
\arguments{
\item{seu}{A seurat object}

\item{active_ligands}{The output of \code{RankActiveLigands}}

\item{sender}{Character vector specifying the name of cells to consider as senders in the \code{group.by} meta.data column}

\item{receiver}{Character vector specifying the name of cells to consider as receivers in the \code{group.by} meta.data column}

\item{group.by}{Name of meta.data column to search for \code{sender} and \code{receiver}}

\item{pearson.threshold}{Pearson coefficient for calculating the percentage of receiver cells with ligand activity (default: 0.1)}

\item{ligands.display}{Number of top ligands to display, ranked by mean ligand activity (default: 25)}

\item{assay}{Assay of Seurat object to calculate average expression}
}
\value{
A ggplot object
}
\description{
Plot most active ligands in receiver cell type
}
