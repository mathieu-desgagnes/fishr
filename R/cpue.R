#' Calculate something
#'
#' @param catch Numerci vector of catch
#' @param effort numeric
#' @param gear_factor Numeric
#'
#' @returns someting vector of numeric
#' @export
#'
#' @examples
#' cpue(100,10)
#' cpue(100, 10, gear_factor=0.5)
#'
cpue <- function(catch, effort, gear_factor = 1) {
  raw_cpue <- catch /    effort

  raw_cpue * gear_factor
}
