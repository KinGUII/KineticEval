\name{MCstd}
\alias{MCstd}
\title{Standard error estimator for transformed parameters}
\usage{
  MCstd(mu, sigma, transformations, N = 10000, fixed)
}
\arguments{
  \item{mu}{mean vector.}

  \item{sigma}{sd vector.}

  \item{transformation}{a vecotr of transformation
  functions}

  \item{N}{default 10,000, number of samples.}
}
\value{
  standard error of the transformed parameters.
}
\description{
  This function use Monte Carlo simulations to calculate
  the standard error of the transformed parameters.
}

