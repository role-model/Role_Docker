install.packages("remotes")
install.packages("reticulate") # <- Necessary for installing/configuring conda base
install.packages("dplyr")
install.packages("tidyr")
install.packages("ape")
install.packages("taxize")
install.packages("hillR")
install.packages("spoc")
install.packages("rotl")
install.packages("rentrez") # <- Workshop Part I reqs
library(reticulate)
library(remotes)
reticulate::use_condaenv('base') # <- Tell reticulate to use the externally installed conda env
# NB: use reticulate::conda_list() to check the env name if this is not correct, but it should be by default
remotes::install_github('role-model/roleR', force=TRUE)
