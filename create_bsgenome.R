#!/usr/bin/env Rscript

## Forge a drosohila BS genome with ENSEMBL files in our repo
dm6seed <- "bsgenome_dm6.seed"
library(BSgenome)
forgeBSgenomeDataPkg(dm6seed)
