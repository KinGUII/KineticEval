\name{fdjacobian}
\alias{fdjacobian}
\title{Jacobian by finite difference}
\usage{
  fdjacobian(func, x, method = "Richardson",
    method.args = list(eps = sqrt(.Machine$double.eps)),
    fval = NULL, lb = -Inf, ub = Inf, ...)
}
\arguments{
  \item{func}{function}

  \item{x}{parameter vector}

  \item{method}{see \code{jacobian}}

  \item{method.args}{control parameters for the choosen
  method}

  \item{fval}{function value at x}

  \item{lb}{lower bound}

  \item{ub}{upper bound}

  \item{...}{other parameters to be passed into func}
}
\value{
  the Jacobian of the function at x
}
\description{
  Calculate the jacobian by finite differece with lower and
  upper bounds
}
\details{
  modified according to numDeriv::jacobian. Calculate the
  jacobian by finite differece with lower and upper bounds
}
\author{
  Zhenglei Gao
}

