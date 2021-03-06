\name{kingui.control}
\alias{kingui.control}
\title{Choose the algorithm to use and related control parameters in kinetic
evaluations using NLS and IRLS.}
\usage{
  kingui.control(method = "LM", maxIter = 100,
    tolerance = 1e-08, odesolver = "lsoda", atol = 1e-09,
    rtol = 1e-10, rhobeg = 0.05, iprint = 1, trace = 0,
    goMarq = 0, delta = 1e-06, rho = 1, submethod = "Port",
    Hmethod1 = "LM", Hmethod2 = "L-BFGS-B", quiet.tol = 1,
    automate = TRUE, calcJacob = TRUE, runTRR4 = FALSE,
    ...)
}
\arguments{
  \item{method}{The method to be used, one of "Rsolnp",
  "minqa","spg", "Marq", "Port", "Newton", "Nelder-Mead",
  "BFGS", "CG", "L-BFGS-B", "SANN", "Pseudo" - see
  details.}

  \item{maxIter}{Numerber of maximum iterations}

  \item{tolerance}{A positive numeric value specifying the
  tolerance level for the relative offset convergence
  criterion.}

  \item{odesolver}{The integration routines used. see
  \code{\link{ode}}}

  \item{atol}{absolute error tolerance, either a scalar or
  an array as long as 'y'. See \code{\link{ode}}}

  \item{rtol}{Relative error tolerance, either a scalar or
  an array as long as 'y'.See \code{\link{ode}}.}

  \item{rhobeg}{Initial trust region radius for method
  'bobyqa'. See details of see \code{\link{bobyqa}}.}

  \item{iprint}{Control the amount of printing by setting
  iprint to 0, 1 2, or 3.  See details of see
  \code{\link{bobyqa}}.}

  \item{trace}{A logical variable (TRUE/FALSE). If 'TRUE',
  information on the progress of optimization is printed.
  See details of see \code{\link{spg}}.}

  \item{goMarq}{If TRUE, using "Marq" for the iterations
  after the first step in IRLS.}

  \item{delta}{Control parameters for 'solnp'. See details
  of see \code{\link{solnp}}.}

  \item{rho}{Control parameters for 'solnp'. See details of
  see \code{\link{solnp}}.}

  \item{submethod}{If the method chosen failed to produce
  results, run the optimization using a substitute method.}

  \item{Hmethod1}{The method used to calculate Hessian
  matrix}

  \item{Hmethod2}{The substitute method if \code{Hmethod1}
  fails.}

  \item{quiet.tol}{The improvement level at which the
  objective function(cost value) and the plot should be
  updated and reported.}

  \item{runTRR4}{if the number of compartments exceeds 4 in
  the system, do not run TRR when reach boundary}

  \item{...}{Other characteristics of different optimizer
  for the users to play with.}
}
\value{
  A list of control parameters for the ODE solver and the
  optimization routines.
}
\description{
  Choose the algorithm to use and related control
  parameters in kinetic evaluations using NLS and IRLS.
}
\note{
  Should have a control function for
  \code{\link{mcmckinfit.full}}
}
\examples{
kingui.control()
}
\author{
  Zhenglei Gao
}
\keyword{Kinetic-Evaluations}

