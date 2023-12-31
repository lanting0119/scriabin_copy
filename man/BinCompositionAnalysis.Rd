% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/binning.R
\name{BinCompositionAnalysis}
\alias{BinCompositionAnalysis}
\title{Plot composition of each bin}
\usage{
BinCompositionAnalysis(seu, split.by = "time.orig", fill.colors = NULL)
}
\arguments{
\item{seu}{A seurat object with binning IDs in the "bins" column of meta.data}

\item{split.by}{Name of meta.data column defining how sub-datasets were binned}

\item{fill.colors}{Character of colors for each sub-dataset ID}
}
\value{

}
\description{
Plot composition of each bin
}
\examples{
\dontrun{
BinCompositionAnalysis(seu)
}
}
