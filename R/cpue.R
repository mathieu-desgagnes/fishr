#' Calculate something
#'
#' @param catch Numerci vector of catch
#' @param effort numeric
#' @param gear_factor Numeric
#' @param verbose logical
#'
#' @returns someting vector of numeric
#' @export
#'
#' @examples
#' cpue(100,10)
#' cpue(100, 10, gear_factor=0.5)
#'
cpue <- function(catch, effort, gear_factor = 1, verbose = FALSE) {
  if (verbose) {
    message("Processing ", length(catch), " records")
  }
  raw_cpue <- catch / effort

  raw_cpue * gear_factor
}
