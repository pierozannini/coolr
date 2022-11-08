#' Retrieve a cool R-related website
#'
#' @return Nothing
#' @export
#'
#' @examples
#' coolR()
coolR <- function() {
  coolr_page <- rvest::read_html("https://github.com/pierozannini/coolr-list/blob/main/README.md")
  coolr_sites <- coolr_page |>
    rvest::html_elements("article") |>
    rvest::html_elements("ul") |>
    rvest::html_elements("a") |>
    rvest::html_text()

  browseURL(sample(coolr_sites, size = 1))
}
