% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Module_1.R
\name{Module_1}
\alias{Module_1}
\title{Perform AVARDA Module 1 Analysis - Accounting for peptide - virus xreactivity}
\usage{
Module_1(case_data, blast, total_prob, threshold = 5)
}
\arguments{
\item{case_data}{A data.frame}

\item{blast}{A data.frame}

\item{total_prob}{A data.frame}

\item{threshold}{A number}
}
\value{
Returns a three element. Element 1 is matrix of all peptide enriched above \code{threshold} in \code{case_data} showing all alignments defined in \code{blast}, thresholded by a predetermined value. Element 2 shows a list of viruses from \code{blast} with potential reactivity. Element 3 is similar to element 1 but not thresholded.
}
\description{
Perform AVARDA Module 1 Analysis - Accounting for peptide - virus xreactivity
}
\examples{
\dontrun{}
}
