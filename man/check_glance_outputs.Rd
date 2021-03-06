% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/check_glance_outputs.R
\name{check_glance_outputs}
\alias{check_glance_outputs}
\title{Check the output of a glance method}
\usage{
check_glance_outputs(..., strict = TRUE)
}
\arguments{
\item{...}{Outputs returned from calls to (the same) \link{glance} method.}

\item{strict}{Logical indicating whether the strict version of tests should be used. Defaults
to \code{TRUE}.}
}
\value{
An invisible \code{NULL}. This function should be called for side effects, not return values.
}
\description{
Call this function to perform tests. If a tests fails, an informative error
will be thrown. Otherwise silent.

Tests when \code{strict = FALSE}:
\itemize{
\item Each item passed to \code{...} passes \code{\link[=check_tibble]{check_tibble()}}
\item Each item passed to \code{...} has exactly 1 row.
}

Additional tests when \code{strict = TRUE}:
\itemize{
\item Column names and order agree across all elements of \code{...}.
}
}
\seealso{
\code{\link[=check_tibble]{check_tibble()}}
}
