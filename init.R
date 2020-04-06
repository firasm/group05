
# R script to run author supplied code, typically used to install additional R packages
# contains placeholders which are inserted by the compile script
# NOTE: this script is executed in the chroot context; check paths!

r <- getOption('repos')
r['CRAN'] <- 'http://cloud.r-project.org'
options(repos=r)

# ======================================================================

# packages go here
install.packages('remotes')

remotes::install_github('plotly/dashR', upgrade=TRUE)
install.packages('tidyverse')
install.packages('dplyr')
install.packages('stringr')
install.packages('purrr')
install.packages('here')
install.packages('janitor')
install.packages('docopt')
install.packages('glue')
install.packages('corrplot')
install.pacakges('broom')
install.packages('dotwhisker')
install.packages('tinytex')
install.packages('kableExtra')
install.packages('modelr')
install.packages('tidyquant')
install.packages('DT')
install.packages('plotly')
install.packages('ggsci')
install.packages('ggplot2')
