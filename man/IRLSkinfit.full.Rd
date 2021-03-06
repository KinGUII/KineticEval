\name{IRLSkinfit.full}
\alias{IRLSkinfit.full}
\title{Fit a kinetic model using the IRLS algorithm.}
\usage{
  IRLSkinfit.full(mkinmodini, eigen = FALSE, plot = FALSE,
    plottitle = "", quiet = FALSE, err = NULL,
    weight = "none", scaleVar = FALSE,
    ctr = kingui.control(method = "solnp"),
    irls.control = list(), update = NULL,
    useHsolnp = FALSE, ...)
}
\arguments{
  \item{mkinmodini}{A list of class
  \code{\link{mkinmod.full}}, containing the kinetic model
  to be fitted to the data, and the initial parameter
  values, the observed data.}

  \item{eigen}{If TRUE, the solution of the system of
  differential equation should be based on the spectral
  decomposition of the coefficient matrix in cases that
  this is possible.}

  \item{plot}{If TRUE,the observed values and the numerical
  solutions should be plotted at each stage of the
  optimisation.}

  \item{plottitle}{The title of the plot for visualizing
  the optimization process.}

  \item{quiet}{If TRUE, suppress printing out the current
  model cost after each(>1) improvement.}

  \item{err}{See argumetns of \code{\link{mkinfit.full}}}

  \item{weight}{See argumetns of
  \code{\link{mkinfit.full}}}

  \item{scaleVar}{See argumetns of
  \code{\link{mkinfit.full}}}

  \item{ctr}{A list of control values for the estimation
  algorithm to replace the default values including maximum
  iterations and absolute error tolerance.  Defaults to the
  output of \code{\link{kingui.control}}.}

  \item{irls.control}{A list of control values for the
  estimation algorithm to replace the default values
  including the maximum number of iterations for the outer
  iteration and the error tolerance level for the error
  variance estimation updating.}

  \item{update}{If not NULL, should be a list of starting
  values obtained from other optimization methods.}

  \item{useHsolnp}{Whether to use the hessian matrix
  derived from the solnp optimization algorithm.}

  \item{...}{Further arguments that will be passed to
  \code{\link{modFit}}.}
}
\value{
  A list with "kingui", "mkinfit" and "modFit" in the class
  attribute. A summary can be obtained by
  \code{\link{summary.kingui}}.
}
\description{
  Fit a kinetic model using the IRLS algorithm.
}
\details{
  Instead of implicitly assuming equal error variances or
  giving arbitrary weights decided by the researcher as in
  the NLS algorithm, an iteratively reweighted least
  squares (IRLS) algorithm was implemented to obtain the
  maximum likelihood estimates of the kinetic model
  parameters.
}
\examples{
\dontrun{
if(require(mkin)){
complex <- mkinmod.full(
 parent = list(type = "SFO", to = c("A1", "B1", "C1"), sink = FALSE),
 A1 = list(type = "SFO", to = "A2"),
 B1 = list(type = "SFO"),
 C1 = list(type = "SFO"),
 A2 = list(type = "SFO"),
 inpartri='default',
 outpartri='default',
 data=mkin::schaefer07_complex_case,
 weight=NULL)
Fit    <- IRLSkinfit.full(
           complex,
              plot      = TRUE,
              quiet     = TRUE,
              ctr       = kingui.control
                           (method = 'solnp',
                           submethod = 'Port',
                             maxIter = 100,
                           tolerance = 1E-06,
                           odesolver = 'lsoda'),
           irls.control = list(
                             maxIter = 10,
                           tolerance = 0.001))
}}
}
\author{
  Zhenglei Gao
}
\keyword{Kinetic-Evaluations}

