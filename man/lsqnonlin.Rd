\name{lsqnonlin}
\alias{lsqnonlin}
\title{Optimization of lease square problems using STIR}
\usage{
  lsqnonlin(fun, xstart, l, u, options = NULL, ...)
}
\arguments{
  \item{fun}{function that returns a vector of residuals}

  \item{xstart}{starting values for the parameters}

  \item{l}{lower bound}

  \item{u}{upper bound}

  \item{options}{a list of user defined control parameters}

  \item{...}{other input arguments to fun}
}
\value{
  a list of result items including par, ssr, etc.
}
\description{
  The R clone of subspace trust region reflective
  algorithm.
}
\details{
  This is a modification of the Matlab lsqnonlin function,
  with only implementation of STIR, no LM
}
\author{
  Zhenglei
}

