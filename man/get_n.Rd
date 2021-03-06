% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_n.R
\name{get_n}
\alias{get_n}
\alias{get_n.epiflows}
\title{get the number of cases per flow}
\usage{
get_n(x, from = NULL, to = NULL, ...)

\method{get_n}{epiflows}(x, from = NULL, to = NULL, ...)
}
\arguments{
\item{x}{an epiflows object}

\item{from}{a character vector of length one specifying the location from which the flows originate}

\item{to}{a character vector of length one specifying the location to which the flows terminate}

\item{...}{unused}
}
\value{
a character vector
}
\description{
This convenience function will return a named vector containing the number of
cases flowing to or from a given region.
}
\details{
There are three possible outputs of this function:
\itemize{
\item \strong{no options specified}: an un-named vector, equivalent to \code{get_flows(x)$n}
\item \strong{from = X}: a named vector of cases flowing \emph{from} \strong{X}
\item \strong{to = X}: a named vector of cases flowing \emph{to} \strong{X}
}
}
\examples{
data(Brazil_epiflows)
get_n(Brazil_epiflows, from = "Espirito Santo")
get_n(Brazil_epiflows, to   = "Espirito Santo")
}
\seealso{
\code{\link[=get_flows]{get_flows()}};
For location metadata: \code{\link[=get_vars]{get_vars()}}, \code{\link[=get_pop_size]{get_pop_size()}}, \code{\link[=get_coordinates]{get_coordinates()}}
}
