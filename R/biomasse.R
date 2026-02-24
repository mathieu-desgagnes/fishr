#' Calculer biomasse index
#'
#' utilise l'aire balbayées
#'
#' @param cpue nomerci vector
#' @param area_sewpt numeric vector de l'aire balayée
#'
#' @returns value
#' @export
#'
#' @examples
#' biomass_index(10, 10)
biomass_index <- function(cpue,area_sewpt){
  cpue *area_sewpt
}
