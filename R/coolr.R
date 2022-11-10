#' Retrieve a cool R-related website
#'
#' @return Nothing
#' @export
#'
#' @examples
#' coolr()
coolr <- function() {
  if (!exists("coolr_sites")) {
    coolr_sites <<- download_coolr_sites()
  }

  browseURL(sample(coolr_sites, size = 1))
}
