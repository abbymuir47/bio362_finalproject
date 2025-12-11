library(tidyverse)
tib = read_tsv("BRCA_known_drivers.tsv")
View(tib)
sum(pull(tib,`Samples (%)`))
#This is over 100% because some samples have multiple mutations