download_coolr_sites <- function() {
  coolr_page <- rvest::read_html("https://github.com/pierozannini/coolr-list/blob/main/README.md")
  coolr_sites <- coolr_page |>
    rvest::html_elements("article") |>
    rvest::html_elements("ul") |>
    rvest::html_elements("a") |>
    rvest::html_text()
  return(coolr_sites)
}
