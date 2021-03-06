\name{pcgr}
\alias{pcgr}
\title{Preconditioned conjugate gradients}
\usage{
  pcgr(DM, DG, g, kmax, tol, mtxmpy = atamult, H, R, pR,
    callerflag = "jacobprecon", pcoptions = Inf, ...)
}
\arguments{
  \item{DM}{a matrix}

  \item{DG}{a matrix}

  \item{g}{a gradient vector}

  \item{kmax}{maximum number of CG iterations.}

  \item{tol}{stopping tolerance}

  \item{mtxmpy}{function to compute products with the
  Hessian matrix H}

  \item{H}{Hessian}

  \item{R}{the cholesky factor of the preconditioner of M}

  \item{pR}{a permutation vector so R'R=M(pR,pR)}

  \item{callerflag}{whether to use "jacobprecon"}

  \item{pcoptions}{Preconditioner option}

  \item{...}{other parameters passed to mtxmpy and others}
}
\value{
  a list \itemize{ \item{"p"}{computed direction}
  \item{"posdef"}{whether positive definite}
  \item{"k}{number of iterations} }
}
\description{
  compute new direction using a Preconditioned conjugate
  gradient procedure.
}
\details{
  for q(p)=.5p'Mp+g'p, M=DM.H.DM+DG
}
\author{
  Zhenglei Gao
}

