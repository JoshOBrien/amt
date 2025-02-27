% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/random_steps.R
\name{remove_incomplete_strata}
\alias{remove_incomplete_strata}
\alias{remove_incomplete_strata.random_steps}
\title{Remove strata with missing values for observed steps}
\usage{
remove_incomplete_strata(x, ...)

\method{remove_incomplete_strata}{random_steps}(x, col = "ta_", ...)
}
\arguments{
\item{x}{An object of class \code{random_steps}.}

\item{...}{Further arguments, none implemented.}

\item{col}{A character with the column name that will be scanned for missing values.}
}
\value{
An object of class \code{random_steps}, where observed steps (\code{case_ == TRUE}) with missing values (\code{NA}) in the column \code{col} are removed (including all random steps).
}
\description{
Remove strata with missing values for observed steps
}
\examples{

mini_deer <- deer[1:4, ]

# The first step is removed, because we have `NA` turn angles.
mini_deer \%>\% steps() \%>\% random_steps() \%>\% remove_incomplete_strata() \%>\%
  select(case_, ta_, step_id_)
}
