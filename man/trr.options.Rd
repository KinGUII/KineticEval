\name{trr.options}
\alias{trr.options}
\title{Define the control parameters for the STIR algorithm}
\usage{
  trr.options(nopar = 1, gradflag = 0, pcflags = Inf,
    MaxPCGIter = 1, TolPCG = 0.1, MaxFunEvals = 100,
    MaxIter = 500, TolFun = 1e-06, TolX = 1e-06)
}
\arguments{
  \item{nopar}{number of parameters}

  \item{gradflag}{gradient function flag}

  \item{pcflags}{pc flag}

  \item{MaxPCGIter}{maximum number of iteration for
  PCG(conjugate gradient)}

  \item{TolPCG}{Tolerance for PCG}

  \item{MaxFunEvals}{maximum number of function
  evaluations}

  \item{MaxIter}{maximum number of iterations}

  \item{TolFun}{tolerance of function value difference}

  \item{TolX}{tolerance of parameter value(norm) differece}
}
\value{
  a list of control parameters
}
\description{
  Define the control parameters for the STIR algorithm
}
\details{
  details check the Matlab function \code{lsqnonlin}
}
\author{
  Zhenglei Gao
}

