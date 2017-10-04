install.packages("drat", 
                 type = "source",
                 INSTALL_opts = "--bytecompile")

drat::addRepo("jr-packages")

install.packages("efficientTutorial",
                 type = "source",
                 INSTALL_opts = "--bytecompile")

vignette("common", package = "efficientTutorial")
vignette("parallel", package = "efficientTutorial")


