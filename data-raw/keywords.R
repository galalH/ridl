## code to prepare `keywords` dataset goes here

ridl_schema <- jsonlite::fromJSON("https://raw.githubusercontent.com/okfn/ckanext-unhcr/master/ckanext/unhcr/schemas/dataset.json")

keywords <-
  ridl_schema$dataset_fields %>%
  dplyr::filter(field_name == "keywords") %>%
  purrr::pluck("choices", 1) %>%
  tibble::as_tibble()

usethis::use_data(keywords, overwrite = TRUE)
