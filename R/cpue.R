#' Calculate something
#'
#' @param catch Numerci vector of catch
#' @param effort numeric
#' @param gear_factor Numeric
#' @param method Character; one of "ration" or "log"
#' @param verbose logical
#'
#' @returns someting vector of numeric
#' @export
#'
#' @examples
#' cpue(100,10)
#' cpue(100, 10, gear_factor=0.5)
#'
cpue <- function(
  catch,
  effort,
  gear_factor = 1,
  method = c("ratio", "log"),
  verbose = getOption("fishr.verbose", default = FALSE)
) {
  if (verbose) {
    message("Processing ", length(catch), " records")
  }

  method <- match.arg(method) # seulement les valeurs dans l'entête de fonction

  raw_cpue <- switch(
    # par de problème
    method,
    ratio = catch / effort,
    log = log(catch / effort)
  )

  raw_cpue * gear_factor
}
