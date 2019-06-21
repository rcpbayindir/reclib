load_packages <- function(pkg_name){
  new.pkg <- pkg_name[!(pkg_name %in% installed.packages()[,"Package"])]
  if(length(new.pkg)){
    install.packages(new.pkg,dependencies = TRUE)
  }
  sapply(pkg_name, require,only=TRUE)
}
