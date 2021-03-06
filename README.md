KineticEval - An R package for Kinetic Evaluations
===========

This package is developed based on the R package [`mkin`](https://github.com/jranke/mkin). It is used by the **KinGUII v2.1**, which is a successor of the first version of KinGUI. 

The package is used to determine kinetic parameters from results of environmental fate studies, e.g. aerobic soil degradation, by fitting respective mathematical models to the observed data.

The package allows the choice between different optimization algorithms. In particular the estimation of parameter confidence intervals is much improved/corrected as compared to other commonly used evaluation softwares by providing the methods Iteratively Reweighted Least Squares (IRLS) and Markov Chain Monte Carlo (MCMC).

## Installation

* **Officially released version**

    Official version comes together with a GUI which can be obtained from 

* **development version**

    
    ```r
    require(devtools)
    install_github("KineticEval", "zhenglei-gao")
    ```



## License

* Under the [GNU General Public License (GPL)](http://www.gnu.org/licenses/gpl.html)

## Questions, Bug reports, and new feature requests

* https://github.com/zhenglei-gao/KineticEval/issues?page=1&state=open

## Contributions



## News

CHANGES IN KineticEval VERSION 1.0-17

NEW FEATURES

  - Add an option to compute the exact Hessian using `numDeriv`, produce p-value 0.5 instead of NA's.
  - 

MINOR CHANGES

  - Warning messages modified.
  - 

CHANGES IN KineticEval VERSION 1.0-16

NEW FEATURES

  - Issue an warning when changing the initial values.

BUG FIXES

  - M0 not fixed at 100 for parent substance.

CHANGES IN KineticEval VERSION 1.0-15

NEW FEATURES

  - No new features
  
BUG FIXES

  - CI different from different optimization, NA or not NA?.


CHANGES IN KineticEval VERSION 1.0-14

NEW FEATURES

  - No new features
  
BUG FIXES

  - minor changes for `KinReport` function.
  
CHANGES IN KineticEval VERSION 1.0-13

NEW FEATURES

  - No new features
  
BUG FIXES

  - fixed #15, MCMC bug for incomplete data.
  

CHANGES IN KineticEval VERSION 1.0-12

NEW FEATURES

  - No new features
  
BUG FIXES

  - internal function `norm` to `KineticEval:::norm`
  - fixed #15, test cases for `ginv`

CHANGES IN KineticEval VERSION 1.0-11

MAJOR CHANGES
  
  - Add routines generating logging files. #14
  - Add routines generating report files, .kgg, .kgo when the model is not correctly set up or when the optimization could not be finished. #14

CHANGES IN KineticEval VERSION 1.0-10

NEW FEATURES

  - Add Comment lines in the output summary file.

CHANGES IN KineticEval VERSION 1.0-9

BUG FIXES

  - fixed #10. using generalized inverse to calculate inverse of the hessian.
  - fixed #16, with Generalized inverse, output NA where is appropriate.

CHANGES IN KineticEval VERSION 1.0-8

BUG FIXES

  - fixed #11. TRR problematic case
  - fixed #6. Ghost compartment is correctly handled now.
  - fixed #5. 3 DFOP models.
  
CHANGES IN KineticEval VERSION 1.0-7

NEW FEATURES

  - No new features
  
BUG FIXES

  - fixed #1, FOMC not calculated.

CHANGES IN KineticEval VERSION 1.0-5

NEW FEATURES

  - No new features
  
BUG FIXES

  - fixed starting value problem. starting value reported by lab people need to be changed.

CHANGES IN KineticEval VERSION 1.0-4

NEW FEATURES

  - added a function `summay.kingui` to summarize a model
 
  - added a few example data sets
  
  - added a demo named `Complex_Model`
  
  
CHANGES IN KineticEval VERSION 1.0-3

BUG FIXES

  - fixed #1 FOMC model result is not calculated.
  - fixed #2 DFOP DT90 is not correctly calculated.

CHANGES IN KineticEval VERSION 1.0-2

BUG FIXES

  - fixed #0, DFOP model for metabolite is re-established in the correct form.

CHANGES IN KineticEval VERSION 1.0-1

NEW FEATURES

  - first release of the package KineticEval: it covers most features in KinGUII and was developed based on the package **mkinfit**; see package homepage for documentation and examples:
  http://github.com/zhenglei-gao/KineticEval
  
  - added two new optimization algorithms implementation
  
  - added a demo named `simple_KinEval`
  
  - added a function `update_kin_mod` to compare fitting results from different methods or algorithms.
  

MAJOR CHANGES

  - DFOP model for metabolite is re-established in the correct form.
  
  - Combined `IRLSkinfit.full`, `mkinfit.full`, `mcmckinfit.full` into a single function `KinEval` to avoid replicated codes.

BUG FIXES

  - fixed #2: when DFOP k=0 or g=0, the calculation of DT50 and DT90 run into errors.
  
MISC

  - in this NEWS file, #n means the issue number on GitHub, e.g. #2 is https://github.com/zhenglei-gao/KineticEval/issues/2



**Warning: Still under development**







