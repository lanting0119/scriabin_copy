% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bin_diff.R
\name{BinPostHoc}
\alias{BinPostHoc}
\title{Perform post-hoc analysis of perturbed bins}
\usage{
BinPostHoc(
  seu,
  bin_pvals,
  interaction_graphs,
  split.by = "orig.ident",
  cell.type.calls = "celltype",
  kw_p.value = 0.001,
  bin_sd.quantile = 0
)
}
\arguments{
\item{seu}{A binned Seurat object with bin identities in the "bin" column of meta.data}

\item{bin_pvals}{Bin perturbation signifance data, ie. the output of \code{PerturbedBins}}

\item{interaction_graphs}{List of summarized interaction graphs built from \code{BuildPriorInteraction} or \code{BuiltWeightedInteraction}}

\item{split.by}{Meta.data column name indicating how data was split for interaction graph generation}

\item{cell.type.calls}{Meta.data slot column corresponding to cell type annotations for summarization}

\item{kw_p.value}{Bin-bin combinations with a KW p value above this threshold will be discarded. Default: 0.001}

\item{bin_sd.quantile}{Bin-bin combinations with a summarized interaction standard deviation below this quantile will be discarded. Ensures that bin-bin combinations displaying both statistical significance and effect size of perturbation are analyzed. Default: 0.9.}
}
\value{
Performs Dunn's Kruskal-Wallis multiple comparison post-hoc test to evaluate which samples within perturbed bins are significantly perturbed
}
\description{
Perform post-hoc analysis of perturbed bins
}
