#' @title Winner Retrieval
#' @description Retrieval of winner names.
#' @param language programming language for which winners shall be retrieved.
#' @export
list_winners <- function(language = "R") {
  
  if (!is.element(language, available_languages()))
    stop("Do you also want to become a winner for the ",language," language? Or are you already a winner? No problem! Just write me an issue: https://github.com/HajkD/winnr/issues.")
  
  if (language == "R") {
    
    
    
  }
  
  
}