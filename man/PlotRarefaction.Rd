% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Rarefaction.R
\name{PlotRarefaction}
\alias{PlotRarefaction}
\title{Plot Rarefaction analysis}
\usage{
PlotRarefaction(comparison.list, y.axis = "Statistic",
  x.axis = "Number of sampled specimens")
}
\arguments{
\item{comparison.list}{output from rarefaction functions can be used in ploting}

\item{y.axis}{Y axis lable in plot}

\item{x.axis}{Y axis lable in plot}
}
\description{
A specialized ploting function displays the results from Rarefaction functions in publication quality.
}
\examples{
ind.data <- iris[1:50,1:4]

results.RS <- Rarefaction(ind.data, PCAsimilarity, num.reps = 5)
results.Mantel <- Rarefaction(ind.data, MatrixCor, correlation = TRUE, num.reps = 5)
results.KrzCov <- Rarefaction(ind.data, KrzCor, num.reps = 5)
results.PCA <- Rarefaction(ind.data, PCAsimilarity, num.reps = 5)

#Plotting using ggplot2
a <- PlotRarefaction(results.RS, "Random Skewers")
b <- PlotRarefaction(results.Mantel, "Mantel")
c <- PlotRarefaction(results.KrzCov, "KrzCor")
d <- PlotRarefaction(results.PCA, "PCAsimilarity")

library(grid)
grid.newpage()
pushViewport(viewport(layout = grid.layout(2, 2)))
vplayout <- function(x, y) viewport(layout.pos.row = x, layout.pos.col = y)
print(a, vp = vplayout(1, 1))
print(b, vp = vplayout(1, 2))
print(c, vp = vplayout(2, 1))
print(d, vp = vplayout(2, 2))

}
\seealso{
\code{\link{BootstrapRep}}
}
\author{
Diogo Melo, Guilherme Garcia
}
\keyword{bootstap}
\keyword{rarefaction}
\keyword{repeatability}
