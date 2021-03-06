% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/catsim.R
\name{gini}
\alias{gini}
\alias{Corrected Gini-Simpson index}
\alias{ginicorr}
\alias{Modified Gini-Simpson index}
\alias{sqrtgini}
\alias{Modified Corrected Gini index}
\alias{sqrtginicorr}
\title{Diversity Indices}
\usage{
gini(x)

ginicorr(x, k)

sqrtgini(x)

sqrtginicorr(x, k)
}
\arguments{
\item{x}{binary or categorical image or vector}

\item{k}{number of categories}
}
\value{
The index (between 0 and 1), with 0 indicating no variation and 1
being maximal. The Gini index is bounded above by \eqn{1-1/k} for a group
with \code{k} categories. The modified index is bounded above by
\eqn{1-1/\sqrt{k}}.  The corrected indices fix this by dividing by the
maximum.
}
\description{
\code{gini()} is a measure of diversity that goes by a
number of different names, such as the probability of interspecific encounter
or the Gibbs-Martin index. It is \eqn{1 - sum(p_i^2)}, where \eqn{p_i} is the
probability of observing class i.

The corrected Gini-Simpson index, \code{ginicorr} takes the
index and  corrects it so that the maximum possible is 1. If there are
\code{k} categories, the maximum possible of the uncorrected index is
\eqn{1-1/k}. It corrects the index by dividing by the maximum.
\code{k} must be specified.

The modified Gini-Simpson index is similar to the unmodified,
except it uses the square root of the summed squared
probabilities, that is, \eqn{1 - \sqrt{ sum(p_i^2)}}, where \eqn{p_i} is the
probability of observing class i.

The modified corrected Gini index then
corrects the modified index for the number of categories, \code{k}.
}
\examples{
x <- rep(c(1:4), 5)
gini(x)

x <- rep(c(1:4), 5)
ginicorr(x, 4)

x <- rep(c(1:4), 5)
sqrtgini(x)

x <- rep(c(1:4), 5)
sqrtginicorr(x, 4)
}
