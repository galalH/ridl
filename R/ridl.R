#' Helper function to make API calls
#'
#' @description
#'
#' @param action Operation to execute. See [CKAN's API documentation](https://docs.ckan.org/en/2.9/api/) for details.
#' @param ...
#'
#' @return httr::response object with the result of the call.
#' @export
ridl <- function(action, ...) {
  r <-
    httr::POST(glue::glue("https://ridl.unhcr.org/api/action/{action}"),
               httr::add_headers("Authorization" = Sys.getenv("RIDL_API_KEY")),
               body = rlang::list2(...)) %>%
    httr::content(simplifyVector = TRUE)

  if (r$success)
    purrr::pluck(r, "result") %>% tibble::as_tibble()
  else
    stop(r$error %>%
           purrr::imap(~glue::glue("{.y}: {.x}")) %>%
           unlist() %>%
           stringr::str_c(collapse = "\n"))
}
