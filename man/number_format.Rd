% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/formatter.r
\name{number_format}
\alias{number_format}
\alias{number}
\title{Number formatter: a generic formatter for numbers}
\usage{
number_format(accuracy = 1, scale = 1, prefix = "", suffix = "",
  big.mark = " ", decimal.mark = ".", trim = TRUE, ...)

number(x, accuracy = 1, scale = 1, prefix = "", suffix = "",
  big.mark = " ", decimal.mark = ".", trim = TRUE, ...)
}
\arguments{
\item{accuracy}{Number to round to, \code{NULL} for automatic guess.}

\item{scale}{A scaling factor: \code{x} will be multiply by \code{scale} before
formating (useful if the underlying data is on another scale,
e.g. for computing percentages or thousands).}

\item{prefix, suffix}{Symbols to display before and after value.}

\item{big.mark}{Character used between every 3 digits to separate thousands.}

\item{decimal.mark}{The character to be used to indicate the numeric
decimal point.}

\item{trim}{Logical, if \code{FALSE}, values are right-justified to a common
width (see \code{\link[base:format]{base::format()}}).}

\item{...}{Other arguments passed on to \code{\link[base:format]{base::format()}}.}

\item{x}{A numeric vector to format.}
}
\value{
\code{number_format} returns a function with single parameter
\code{x}, a numeric vector, that returns a character vector.
}
\description{
Number formatter: a generic formatter for numbers
}
\examples{
v <- c(12.3, 4, 12345.789, 0.0002)
number(v)
number(v, big.mark = ",")
number(v, accuracy = .001)
number(v, accuracy = .001, decimal.mark = ",")
number(v, accuracy = .5)

my_format <- number_format(big.mark = "'", decimal.mark = ",")
my_format(v)

# Per mille
per_mille <- number_format(
  scale = 1000,
  suffix = "\\u2030",
  accuracy = .1
)
per_mille(v)
}
