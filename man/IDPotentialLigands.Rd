% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{IDPotentialLigands}
\alias{IDPotentialLigands}
\title{Identify potential ligands for ligand activity prediction}
\usage{
IDPotentialLigands(
  seu,
  assay = "SCT",
  slot = "data",
  min.pct = 0.025,
  species = "human",
  database = "OmniPath",
  ligands = NULL,
  recepts = NULL
)
}
\arguments{
\item{seu}{A Seurat object}

\item{assay}{Assay in Seurat object from which to pull expression values}

\item{slot}{Slot within assay from which to pull expression values}

\item{min.pct}{Minimum percentage of cells in which a gene must be detected in order to be considered an "expressed" gene. Default 0.025 (ie. 2.5\%)}

\item{species}{character. Name of species from which to load ligand-receptor databases. One of: "human", "mouse", "rat". Default: "human"}

\item{database}{Name of ligand-receptor database to use. Default: "OmniPath"
When species is "human", one of: OmniPath, CellChatDB, CellPhoneDB, Ramilowski2015, Baccin2019, LRdb, Kirouac2010, ICELLNET, iTALK, EMBRACE, HPMR, Guide2Pharma, connectomeDB2020, talklr, CellTalkDB
When species is "mouse" or "rat", only "OmniPath" is supported.
To pass a custom ligand-receptor database to this function, set database = "custom"}

\item{ligands}{Character vector of custom ligands to use for interaction graph generation. Ignored unless database = "custom"
When ligands is supplied, recepts must also be supplied and equidimensional.}

\item{recepts}{Character vector of custom receptors to use for interaction graph generation. Ignored unless database = "custom"
When recepts is supplied, ligands must also be supplied and equidimensional.}
}
\value{
Returns a list of length 2: 1) a character vector of potential ligands, 2) a character vector of background expressed genes
}
\description{
Identify potential ligands for ligand activity prediction
}
