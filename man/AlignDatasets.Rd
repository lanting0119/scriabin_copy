% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/binning.R
\name{AlignDatasets}
\alias{AlignDatasets}
\title{Align Datasets through binning}
\usage{
AlignDatasets(
  seuObj,
  split.by = "time.orig",
  dims = 1:50,
  snn.reduction = "pca",
  anchor_score_threshold = 0.5,
  optim_quan.threshold = 0.1,
  optim_k.unique = 6,
  verbose = F
)
}
\arguments{
\item{seuObj}{A seurat object}

\item{split.by}{Name of meta.data column containing the factor by which the dataset will be split}

\item{dims}{Dimensions of reduction to use as input for neighbor graph calculation}

\item{snn.reduction}{Name of reduction used as input to building the SNN}

\item{anchor_score_threshold}{Anchor pairs scoring below this threshold will be discarded.}

\item{optim_quan.threshold}{Percentage of poor connectivity bins to remove on each iteration of connectivity optimization}

\item{optim_k.unique}{Mean number of datasets represented in each bin at which connectivity optimization will be considered complete}
}
\value{
A binned Seurat object with bin assignments in the "bins" column of the meta.data slot
}
\description{
Align Datasets through binning
}
\examples{
seu <- AlignDatasets(seu, split.by = "time")
}
