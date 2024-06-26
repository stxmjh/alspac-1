% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dictionary.r
\name{createDictionary}
\alias{createDictionary}
\title{Create a dictionary from ALSPAC STATA files}
\usage{
createDictionary(
  datadir = "Current",
  name = NULL,
  quick = F,
  sourcesFile = NULL
)
}
\arguments{
\item{datadir}{ALSPAC data subdirectory from which to create the index
(Default: "Current"). .}

\item{name}{If not \code{NULL}, then the resulting dictionary
will be saved to a file in the R package for use next time the package
is loaded. The dictionary will be available with the given name (Default: NULL).

The function uses multiple processors using \code{\link{mclapply}()}.
Use multiple processors by setting \code{mc.cores} option using
\code{options()}.}
}
\value{
Data frame dictionary listing available variables.
}
\description{
Create a dictionary from ALSPAC STATA files
}
