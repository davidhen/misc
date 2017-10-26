#Byte compiling
#Compile package functions on installation


byte_compile <- function(package) {
  install.packages(package,
                 type = "source",
                 INSTALL_opts = "--byte-compile") 
}



byte_compile(c("corrplot", "data.table", "irlba", "purrr", "RcppArmadillo", "rex", "rJava", "tidyr", "tidyselect"))

#Alternative

#Add 
# R_COMPILE_PKGS=3
# to ~/.Renviron file



