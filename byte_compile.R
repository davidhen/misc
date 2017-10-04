#Byte compiling
#Compile package functions on installation


byte_compile <- function(package) {
  install.packages(package,
                 type = "source",
                 INSTALL_opts = "--byte-compile") 
}



byte_compile(c("doParallel", "dplyr", "ggrepel", "ggsci", "memisc", "odbc"))

#Alternative

#Add 
# R_COMPILE_PKGS=3
# to ~/.Renviron file



