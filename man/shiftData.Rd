% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shiftData.R
\name{shiftData}
\alias{shiftData}
\title{Shift Data}
\usage{
shiftData(x, k = 1, fill = NA, circular = FALSE)
}
\arguments{
\item{x}{any vector.}

\item{k}{a positive or negative whole number of positions to shift the data.
Positive values shift data to a higher position and negative values shift
data to a lower position.}

\item{fill}{a scalar value like \code{x} used to fill in the first \code{k}
positions or the last -\code{k} positions if \code{circular}=\code{FALSE}. Ignored if
\code{circular}=\code{TRUE}. The default value is \code{NA}. If \code{x} is class
"factor," then \code{fill} must be \code{NA} or a valid level in \code{x}.}

\item{circular}{logical (\code{TRUE} or \code{FALSE}). If \code{TRUE}, then treat 
\code{x} as a circular buffer, rotating values from the end into the beginning 
if \code{k} is positive and vice versa if \code{k} is negative. If \code{FALSE}, 
then use the value of fill. The default value is \code{FALSE}.}
}
\value{
A vector like \code{x}, with data shifted in position.
}
\description{
Returns a vector like the input, but with the position of the data shifted up
or down.
}
\examples{

shiftData(1:5, k=1)
# [1] NA  1  2  3  4
shiftData(1:5, k=1, circ=TRUE)
# [1] 5 1 2 3 4
}
\seealso{
\code{\link[stats]{lag}}
}
\keyword{manip}

