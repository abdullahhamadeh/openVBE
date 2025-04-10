% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NPOD-main.R
\name{NPODObject}
\alias{NPODObject}
\title{NPODObject}
\description{
An NPOD object
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{simulation}}{An \code{ospsuite} Simulation object.}

\item{\code{optimizationParameterList}}{A list of parameters for optimization}

\item{\code{outputPath}}{The path to the output of the simulation.}

\item{\code{pkData}}{A data.frame of PK parameters}

\item{\code{demographicData}}{A data.frame of demographic parameters}

\item{\code{populationData}}{A data.frame of population parameters}

\item{\code{npodRunSettings}}{A \code{NPODRunSettings} object}

\item{\code{cached_mu}}{Numeric value of cached means}

\item{\code{n_err}}{A data.frame of demographic parameters}

\item{\code{theta_0}}{A data.frame of demographic parameters}

\item{\code{pyl}}{A data.frame of demographic parameters}

\item{\code{err_log}}{A data.frame of demographic parameters}

\item{\code{sigma}}{A data.frame of demographic parameters}

\item{\code{useLogNormalLikelihood}}{A logical to define if using log normal likelihood}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-NPODObject-new}{\code{NPODObject$new()}}
\item \href{#method-NPODObject-parsePKData}{\code{NPODObject$parsePKData()}}
\item \href{#method-NPODObject-parsePopulationData}{\code{NPODObject$parsePopulationData()}}
\item \href{#method-NPODObject-setGrid}{\code{NPODObject$setGrid()}}
\item \href{#method-NPODObject-runNPOD}{\code{NPODObject$runNPOD()}}
\item \href{#method-NPODObject-Dopt}{\code{NPODObject$Dopt()}}
\item \href{#method-NPODObject-prune}{\code{NPODObject$prune()}}
\item \href{#method-NPODObject-multi_D}{\code{NPODObject$multi_D()}}
\item \href{#method-NPODObject-getPSI}{\code{NPODObject$getPSI()}}
\item \href{#method-NPODObject-getLikelihood}{\code{NPODObject$getLikelihood()}}
\item \href{#method-NPODObject-multi_mu}{\code{NPODObject$multi_mu()}}
\item \href{#method-NPODObject-clone}{\code{NPODObject$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-NPODObject-new"></a>}}
\if{latex}{\out{\hypertarget{method-NPODObject-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new NPODObject
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{NPODObject$new(
  simulationFilePath,
  optimizationParameterList,
  outputPath,
  pkDataFilePath,
  studyPopulationDataFilePath = NULL,
  cofactorPaths = NULL,
  initialGridSize = NULL,
  useLogNormalLikelihood = NULL,
  npodRunSettings = NULL
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{simulationFilePath}}{A string path to the simulation file}

\item{\code{optimizationParameterList}}{A list of \code{VBEParameter} objects}

\item{\code{outputPath}}{A string path to the output of the simulation}

\item{\code{pkDataFilePath}}{A string path to the PK data file}

\item{\code{studyPopulationDataFilePath}}{A string path to the study population data file}

\item{\code{cofactorPaths}}{A list of cofactor paths}

\item{\code{initialGridSize}}{An integer for the initial grid size}

\item{\code{useLogNormalLikelihood}}{A logical to define if using log normal likelihood}

\item{\code{npodRunSettings}}{A \code{NPODRunSettings} object}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-NPODObject-parsePKData"></a>}}
\if{latex}{\out{\hypertarget{method-NPODObject-parsePKData}{}}}
\subsection{Method \code{parsePKData()}}{
Parse PK data and convert to base unit
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{NPODObject$parsePKData(pkDataFilePath)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{pkDataFilePath}}{A string path to the PK data file}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-NPODObject-parsePopulationData"></a>}}
\if{latex}{\out{\hypertarget{method-NPODObject-parsePopulationData}{}}}
\subsection{Method \code{parsePopulationData()}}{
parse Population data and convert to base unit
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{NPODObject$parsePopulationData(
  studyPopulationDataFilePath,
  cofactorPaths = NULL
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{studyPopulationDataFilePath}}{A string path to the study population data file}

\item{\code{cofactorPaths}}{A list of cofactor paths}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-NPODObject-setGrid"></a>}}
\if{latex}{\out{\hypertarget{method-NPODObject-setGrid}{}}}
\subsection{Method \code{setGrid()}}{
setGrid Set Grid for optimization
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{NPODObject$setGrid(initialGridSize)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{initialGridSize}}{An integer for the initial grid size}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-NPODObject-runNPOD"></a>}}
\if{latex}{\out{\hypertarget{method-NPODObject-runNPOD}{}}}
\subsection{Method \code{runNPOD()}}{
Run NPOD
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{NPODObject$runNPOD()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-NPODObject-Dopt"></a>}}
\if{latex}{\out{\hypertarget{method-NPODObject-Dopt}{}}}
\subsection{Method \code{Dopt()}}{
Dopt Optimization algorithm
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{NPODObject$Dopt()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-NPODObject-prune"></a>}}
\if{latex}{\out{\hypertarget{method-NPODObject-prune}{}}}
\subsection{Method \code{prune()}}{
The \code{prune} function checks if a candidate support point (\code{theta_plus})
is sufficiently different from the existing set of support points (\code{theta}) and within
specified bounds (\code{a}, \code{b}). If these conditions are met, \code{theta_plus} is
added as a new column to \code{theta}.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{NPODObject$prune(theta, theta_plus)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{theta}}{A matrix of support points}

\item{\code{theta_plus}}{A candidate support point}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-NPODObject-multi_D"></a>}}
\if{latex}{\out{\hypertarget{method-NPODObject-multi_D}{}}}
\subsection{Method \code{multi_D()}}{
multi_D computes a likelihood-based metric, \code{D_comp}, by summing the
probabilities from \code{getPSI()}, normalized by \code{self$pyl}.
It starts with a penalty term of \code{-N}, calls \code{getPSI()}, and updates \code{D_comp}.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{NPODObject$multi_D(theta_parameter)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{theta_parameter}}{A matrix of support points}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-NPODObject-getPSI"></a>}}
\if{latex}{\out{\hypertarget{method-NPODObject-getPSI}{}}}
\subsection{Method \code{getPSI()}}{
getPIS The \code{getPSI} function calculates the probability of the observed data
\code{mprob} is an N x K matrix where each entry \verb{[i, l]} represents the probability
of observing \code{y[[i]]} given the model prediction \code{ySimList[[i, l]]}.
A small lower bound, \code{1e-100}, is enforced for numerical stability.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{NPODObject$getPSI(
  theta,
  ySimList = NULL,
  useLog = self$useLogNormalLikelihood,
  optimizeSigma = FALSE,
  lambda = NULL
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{theta}}{A matrix of support points}

\item{\code{ySimList}}{A list of model predictions}

\item{\code{useLog}}{A logical to define if using log normal likelihood}

\item{\code{optimizeSigma}}{A logical to define if optimizing sigma}

\item{\code{lambda}}{A list of lambda values}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-NPODObject-getLikelihood"></a>}}
\if{latex}{\out{\hypertarget{method-NPODObject-getLikelihood}{}}}
\subsection{Method \code{getLikelihood()}}{
Calculates the likelihood of the observed data, \code{y},
given the model predictions, \code{ySim}, and measurement error, \code{sigma}.
The default case uses arithmetic error, but if \code{use_log = TRUE},
it calculates the likelihood using the logarithmic (ratio) error.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{NPODObject$getLikelihood(y, t, theta, sigma, ySim, useLog = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{y}}{A vector of observed data}

\item{\code{t}}{A vector of time points}

\item{\code{theta}}{A matrix of support points}

\item{\code{sigma}}{A vector of measurement errors}

\item{\code{ySim}}{A vector of model predictions}

\item{\code{useLog}}{A logical to define if using log normal likelihood}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-NPODObject-multi_mu"></a>}}
\if{latex}{\out{\hypertarget{method-NPODObject-multi_mu}{}}}
\subsection{Method \code{multi_mu()}}{
computes the model predictions for each individual in the study population
given a set of support points, \code{theta}.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{NPODObject$multi_mu(theta)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{theta}}{A matrix of support points}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-NPODObject-clone"></a>}}
\if{latex}{\out{\hypertarget{method-NPODObject-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{NPODObject$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
