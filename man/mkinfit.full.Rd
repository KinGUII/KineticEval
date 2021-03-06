\name{mkinfit.full}
\alias{mkinfit.full}
\alias{mkinfit.gui}
\title{Fit a kinetic model using the NLS or WNLS algorithm.}
\usage{
  mkinfit.full(mkinmodini, eigen = FALSE, plot = FALSE,
    plottitle = "", quiet = FALSE, err = NULL,
    weight = "none", scaleVar = FALSE,
    ctr = kingui.control(method = "solnp"), update = NULL,
    ...)
}
\arguments{
  \item{mkinmodini}{A list of class \code{mkinmod.full},
  containing the kinetic model to be fitted to the data,
  and the initial parameter values, the observed data.}

  \item{eigen}{If TRUE, the solution of the system of
  differential equations should be based on the spectral
  decomposition of the coefficient matrix in cases that
  this is possible.}

  \item{plot}{If TRUE,the observed values and the numerical
  solutions should be plotted at each stage of the
  optimization.}

  \item{plottitle}{The title of the plot for visualizing
  the optimization process.}

  \item{quiet}{If TRUE, suppress printing out the current
  model cost after each(>1) improvement.}

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

  \item{ctr}{A list of control values for the estimation
  algorithm to replace the default values including maximum
  iterations and absolute error tolerance.  Defaults to the
  output of \code{\link{kingui.control}}.}

  \item{update}{An object either of class \code{kingui} or
  a vector of to be optimized parameters}

  \item{\dots}{Further arguments that will be passed to
  \code{\link{modFit}}.}
}
\value{
  A list with "kingui", "mkinfit" and "modFit" in the class
  attribute. A summary can be obtained by
  \code{\link{summary.kingui}}.
}
\description{
  KinGUI2 version of \code{\link{mkinfit}}. This function
  uses the Flexible Modelling Environment package
  \code{\link{FME}} to create a function calculating the
  model cost with weigths, which is then minimised , using
  the specified initial or fixed parameters and starting
  values. This is deprecated! Use
  \code{\link{mkinfit.full}} instead.
}
\details{
  ##
}
\examples{
\dontrun{
guitest <- mkinmod.full(
    parent = list(
      time = c(     0,      3,      7,     14,     30,     62,     90,    118),
   residue = c(101.24,  99.27,  90.11,  72.19,  29.71,   5.98,   1.54,  NA),
    weight = c(     1,      1,      1,      1,      1,      1,      1,      1),
                  sink  = TRUE,
      type = "SFO",
         k = list(ini   = 0.040,
                  fixed = 0,
                  lower = 0.0,
                  upper = Inf),
        M0 = list(ini   = 100.15,
                  fixed = 0,
                  lower = 0.0,
                  upper = Inf)),
         inpartri='default',outpartri='default' )
 Fit    <- IRLSkinfit.full(
           guitest,
              plot      = TRUE,
              quiet     = TRUE,
             ctr       = kingui.control(
                              method = 'solnp',
                           submethod = 'Port',
                             maxIter = 100,
                           tolerance = 1E-06,
                           odesolver = 'lsoda'),
           irls.control = list(
                             maxIter = 10,
                           tolerance = 0.001))
}
}
\author{
  Zhenglei Gao
}
\seealso{
  \code{\link{mkinfit}}
}
\keyword{Kinetic-Evaluations}

