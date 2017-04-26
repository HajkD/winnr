#' @title Retrieve Author Names
#' @description R package author name retrieval
#' @param pkg.name name of the R package for which author names shall be retrieved.
#' @examples 
#' get_r_package_authors("MASS")
#' @export
get_r_package_authors <- function(pkg.name) {
  
  authors <- httr::content(httr::GET(paste0("http://crandb.r-pkg.org/", pkg.name)))$Author
  authors <- unlist(stringr::str_split(authors, "\n"))
  if (is.null(authors))
    authors <- ""
  
  
  return(authors)
}