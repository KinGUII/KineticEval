\name{mcmckinfit.full}
\alias{mcmckinfit.full}
\alias{mcmckinfit.gui}
\title{Fit a kinetic model using MCMC methods.}
\usage{
  mcmckinfit.full(mkinmodini, eigen = FALSE,
    ctr = kingui.control(quiet.tol = 1e-05, method = "solnp"),
    plottitle = "", plot = FALSE, quiet = FALSE,
    err = NULL, weight = "none", scaleVar = FALSE,
    commonsigma = FALSE, jump = NULL, prior = NULL,
    wvar0 = 0.1, niter = 1000, outputlength = niter,
    burninlength = 0, updatecov = niter, ntrydr = 1,
    drscale = NULL, verbose = TRUE, fitstart = TRUE,
    update = NULL, ...)
}
\arguments{
  \item{mkinmodini}{A list of class
  \code{\link{mkinmod.full}}, containing the kinetic model
  to be fitted to the data, and the initial parameter
  values, the observed data.}

  \item{eigen}{If TRUE, the solution of the system of
  differential equations should be based on the spectral
  decomposition of the coefficient matrix in cases that
  this is possible.}

  \item{ctr}{Used when fitstart is TRUE. A list of control
  values for the estimation algorithm to replac the default
  values including maximum iterations and absolute error
  tolerance.  Defaults to the output of
  \code{\link{kingui.control}}.}

  \item{plottitle}{The title of the plot for visualizing
  the optimization process.}

  \item{plot}{When fitstart==TRUE, if TRUE,the observed
  values and the numerical solutions should be plotted at
  each stage of the first optimization step.}

  \item{quiet}{If TRUE, suppress printing out the current
  model cost after each(>1) improvement.}

  \item{commonsigma}{If TRUE,the error model has constant
  error variance and the NLS algorithm will be used for the
  first optimizatio step.}

  \item{jump}{Jump length, either a number, a vector with
  length equal to the total number of parameters, a
  covariance matrix, or a function that takes as input the
  current values of the parameters and produces as output
  the perturbed parameters.  See details of
  \code{\link{modMCMC}}.}

  \item{prior}{Prior probability of the parameters, either
  a function of the parameters or 'NULL'; in the latter
  case a flat prior is used (i.e. all parameters are
  equally likely).}

  \item{wvar0}{"weight" for the initial model variance. See
  details of \code{\link{modMCMC}}.}

  \item{niter}{number of iterations for the MCMC.}

  \item{outputlength}{number of iterations kept in the
  output.}

  \item{burninlength}{number of discarded initial
  iterations.}

  \item{updatecov}{number of iterations after which the
  parameter covariance matrix is (re)evaluated based on the
  parameters kept thus far, and used to update the MCMC
  jumps.}

  \item{ntrydr}{maximal number of tries for the delayed
  rejection procedure.}

  \item{drscale}{for each try during delayed rejection, the
  cholesky decomposition of the proposal matrix is scaled
  with this amount; if 'NULL', it is assumed to be
  'c(0.2,0.25, 0.333, 0.333, ...)'}

  \item{verbose}{if 'TRUE': prints extra output.}

  \item{fitstart}{if 'TRUE': first perform an optimization
  step and using the fitted parameters as the starting
  values for MCMC.}

  \item{update}{if not NULL, using the values in the update
  as the starting values for MCMC.}

  \item{err}{Either \code{NULL}, or the name of the column
  with the \emph{error} estimates, used to weigh the
  residuals (see details of \code{\link{modCost}}); if
  \code{NULL}, then the residuals are not weighed.  In the
  GUI version, there is no need to consider this argument
  since a default weight one matrix is setup in
  \code{mkinmod.gui}. The err argument turned into 'err'
  automatically in the codes.}

  \item{weight}{only if \code{err}=\code{NULL}: how to
  weigh the residuals, one of "none", "std", "mean", see
  details of \code{\link{modCost}}.}

  \item{scaleVar}{Will be passed to \code{\link{modCost}}.
  Default is not to scale Variables according to the number
  of observations.}

  \item{\dots}{Further arguments that will be passed to
  \code{\link{modFit}}.}
}
\value{
  A list with "mcmckingui" and "modMCMC" in the class
  attribute. A summary can be obtained by
  \code{\link{summary.mcmckingui}}.
}
\description{
  This function does kinetic evaluations using MCMC
  algorithm with function \code{\link{modMCMC}} in the
  \code{\link{FME}} package.
}
\note{
  \code{mcmckinfit.gui} is the deprecated version.
}
\examples{
\dontrun{
SFO_SFO_gui <- mkinmod.gui(Parent = list(type = "SFO", to = "Metab", sink = TRUE,
                           k = list(ini = 0.1,
                      fixed = 0,
                      lower = 0,
                      upper = Inf),
              M0 = list(ini = 195,
                      fixed = 0,
                      lower = 0,
                      upper = Inf),
                           FF = list(ini = c(.1),
                      fixed = c(0),
                      lower = c(0),
                      upper = c(1)),
                      time=c(0.0,2.8,   6.2,  12.0,  29.2,  66.8,  99.8,
127.5, 154.4, 229.9, 272.3, 288.1, 322.9),
                    residue = c( 157.3, 206.3, 181.4, 223.0, 163.2,
144.7,  85.0,  76.5,  76.4,  51.5,  45.5,  47.3, 42.7)),
                           Metab = list(type = "SFO",
                           k = list(ini = 0.1   ,
                      fixed = 0,
                      lower = 0,
                      upper = Inf),
              M0 = list(ini = 0,
                      fixed = 1,
                      lower = 0,
                      upper = Inf),
                    residue =c( 0.0,  0.0,  0.0,  1.6,  4.0, 12.3, 13.5,
12.7, 11.4, 11.6, 10.9,  9.5,  7.6))                           )

fit <- mcmckinfit.gui(SFO_SFO_gui)

summary(fit)
plot(fit)
}
}
\author{
  Zhenglei Gao
}
\seealso{
  \code{\link{modMCMC}}
}
\keyword{Kinetic-Evaluations}

