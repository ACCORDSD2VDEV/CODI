rVersion <- version[['major']]
cat(paste0("R version ",rVersion," detected\n"))
Sys.setenv(RENV_PROFILE = paste0("R", rVersion, sep=''))
options(pkgType="win.binary")
options(install.packages.check.source = "no")
options(install.packages.compile.from.source = "never")
options(install.opts = c("--no-multiarch, --no-lock"))
source("renv/activate.R")
