#!/lila/data/bicgrp/opt/common/CentOS_7/R/R-4.0.5/bin/R

# must run: 
#    export LD_LIBRARY_PATH=/opt/common/CentOS_7/gcc/gcc-7.3.0/lib64:$LD_LIBRARY_PATH

### these are loaded by the R being run in RunDE.R
#suppressPackageStartupMessages(library(rlang))
#suppressPackageStartupMessages(library(ellipsis))

if(is.null(bin)){
    stop("ERROR: 'bin' must be set in script sourcing source_all.R (e.g., RunDE.R")
}

suppressPackageStartupMessages(library(parallel))
suppressPackageStartupMessages(library(lattice))
suppressPackageStartupMessages(library(locfit))
suppressPackageStartupMessages(library(DESeq))
suppressPackageStartupMessages(library(limma))
suppressPackageStartupMessages(library(gplots))
suppressPackageStartupMessages(library(MASS))
#suppressPackageStartupMessages(library(piano))
suppressPackageStartupMessages(library(data.table))
suppressPackageStartupMessages(library(RColorBrewer))
suppressPackageStartupMessages(library(plyr))
suppressPackageStartupMessages(library(reshape))
suppressPackageStartupMessages(library(ggplot2))
suppressPackageStartupMessages(library(grid))
suppressPackageStartupMessages(library(gridExtra))
suppressPackageStartupMessages(library(ggrepel))
suppressPackageStartupMessages(library(scales))
suppressPackageStartupMessages(library(GSA))
suppressPackageStartupMessages(library(tidyverse))
suppressPackageStartupMessages(library(openxlsx))
#suppressPackageStartupMessages(library(piano))
suppressPackageStartupMessages(library(matrixStats))

#suppressPackageStartupMessages(library(Rserve))    # DON'T NEED??
#suppressPackageStartupMessages(library(RSclient))  # don't need??

suppressPackageStartupMessages(library(cowplot))
suppressPackageStartupMessages(library(logger))
suppressPackageStartupMessages(library(pheatmap, lib = file.path(bin, "lib/R-4.0.5/")))
suppressPackageStartupMessages(library(sysfonts, lib = file.path(bin, "lib/R-4.0.5/"))) 
suppressPackageStartupMessages(library(showtextdb, lib = file.path(bin, "lib/R-4.0.5/"))) 
suppressPackageStartupMessages(library(showtext, lib = file.path(bin, "lib/R-4.0.5/"))) 
suppressPackageStartupMessages(library(ggdendro, lib = file.path(bin, "lib/R-4.0.5/"))) 
suppressPackageStartupMessages(library(viridisLite, lib = file.path(bin, "lib/R-4.0.5/"))) ## necessary for dendextend
suppressPackageStartupMessages(library(dendextend, lib = file.path(bin, "lib/R-4.0.5/"))) 

log_threshold(DEBUG)
font <- "Roboto"
font_add_google(font, font)
showtext_opts(dpi = 300)
showtext_auto(enable = TRUE)

source(file.path(bin,"bicrnaseqR/bic_analyze_counts.R"))
source(file.path(bin,"bicrnaseqR/bic_plots.R"))
source(file.path(bin,"bicrnaseqR/bic_util.R"))
source(file.path(bin,"bicrnaseqR/bic_deseq_report.R"))
source(file.path(bin,"bicrnaseqR/bic_gsea.R"))
