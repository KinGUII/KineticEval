\name{trdog}
\alias{trdog}
\title{Reflected 2d trust region step with box constraints}
\usage{
  trdog(x, g, H, D, delta, dv, mtxmpy = atamult,
    pcmtx = aprecon, pcoptions = Inf, tol = 0.1, kmax = 2,
    theta = 0.95, l = -Inf, u = Inf, Z = NULL,
    dnewt = NULL, preconflag = "jacobprecon", ...)
}
\arguments{
  \item{x}{current parameter value}

  \item{g}{gradient}

  \item{H}{Hessian}

  \item{D}{a matrix}

  \item{delta}{trust region}

  \item{dv}{a vector}

  \item{mtxmpy}{Jacobian-matrix multiply function}

  \item{pcmtx}{pcg multiply function}

  \item{pcoptions}{pcg otpions}

  \item{tol}{tolerance}

  \item{kmax}{max k}

  \item{theta}{default 0.95}

  \item{l}{lower bound}

  \item{u}{upper bound}

  \item{Z}{a matrix}

  \item{dnewt}{default NULL,}

  \item{preconflag}{PCG flag}

  \item{...}{other parameters that passes to functions}
}
\value{
  a list
}
\description{
  Calculate the reflective 2d trust region trial step with
  box constraints
}
\details{
  the trial step s is determined by the best of the 3
  steps: sclaed gradient, 2d trust region solution, and the
  reflected 2d trust region solution. The 2d subspace is
  defined by the scaled gradient direction and a conjugate
  gradient process(an approximate Newton step or a
  direction of the negative curvature)
}
\author{
  Zhenglei Gao
}

