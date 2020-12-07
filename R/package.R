#' Convenience function to record package metadata
#'
#' @description
#'
#' @details All arguments are of type character, except for `tag_string`, `data_collector`, `keywords`, `sampling_procedure`, and `operational_purpose_of_data` which accept multiple values and as such must be provided as a list of character strings.
#'
#' @param title Title - Make sure to include: 'Survey name/title', 'Location', 'Country', and 'Year(s)' in the order indicated.
#' @param name URL - The canonical name of the dataset, eg. my-dataset.
#' @param short_title Short title - eg. Short title for the project.
#' @param notes Description - Some useful notes about the data. Please include the number of observations.
#' @param tag_string Tags - eg. economy, mental health, government.
#' @param url Project URL - Website URL associated with this data project (if applicable).
#' @param owner_org Data container. Provided using the canonical name for the container.
#' @param private Visibility (Private/Public).
#' @param visibility Internal Access Level. Allowed values: `restricted` (Private), `public` (Internally Visible).
#' @param external_access_level External access level. Allowed values: `not_available` (Not available), `direct_access` (Direct access), `public_use` (Public use), `licensed_use` (Licensed use), `data_enclave` (Data enclave), `open_access` (Open access).
#' @param data_sensitivity Data sensitivity - Apply to both Anonymized and Personally identifiable data. Allowed values: `yes` (Yes), `no` (No).
#' @param original_id Original ID - If the dataset already has an ID from the source org, DDI, etc...
#' @param data_collector Data Collector - Which organization owns / collected the data. Multiple values are allowed.
#' @param date_range_start Date collection first date.
#' @param date_range_end Date collection last date.
#' @param keywords Topic classifications - Tags useful for searching for the datasets. Multiple values are allowed.
#' @param unit_of_measurement Unit of measurement - Unit of measurement / observation for the dataset.
#' @param sampling_procedure Sampling Procedure. Multiple values are allowed. Allowed values: `total_universe_complete_enumeration` (Total universe/Complete enumeration), `probability_simple_random` (Probability: Simple random), `probability_systematic_random` (Probability: Systematic random), `probability_stratified` (Probability: Stratified), `probability_stratified_proportional` (Probability: Stratified: Proportional), `probability_stratified_disproportional` (Probability: Stratified: Disproportional), `probability_cluster` (Probability: Cluster), `probability_cluster_simple_random` (Probability: Cluster: Simple random ), `probability_cluster_stratified_random` (Probability: Cluster: Stratified random), `probability_multistage` (Probability: Multistage), `nonprobability` (Non-probability), `nonprobability_availability` (Non-probability: Availability), `nonprobability_purposive` (Non-probability: Purposive), `nonprobability_quota` (Non-probability: Quota), `nonprobability_respondentassisted` (Non-probability: Respondent-assisted), `mixed_probability_nonprobability` (Mixed probability and non-probability), `other_other` (Use if the sampling procedure is known, but not found in the list..).
#' @param operational_purpose_of_data Operational purpose of data - Classification of the type of data contained in the file. Multiple values are allowed. Allowed values: `participatory_assessments` (Participatory assessments), `baseline_household_survey` (Baseline Household Survey), `rapid_needs_assessment` (Rapid Needs Assessment), `protection_monitoring` (Protection Monitoring), `programme_monitoring` (Programme monitoring), `population_data` (Population Data), `cartography` (Cartography, Infrastructure & GIS).
#' @param `hxl-ated` HXL-ated.
#' @param process_status Dataset Process Status. Allowed values: `raw` (Raw-Uncleaned), `cleaned` (Cleaned Only), `anonymized` (Cleaned & Anonymized).
#' @param identifiability Identifiability. Allowd values: `personally_identifiable` (Personally identifiable), `anonymized_enclave` (Anonymized 1st level: Data Enclave - only removed direct identifiers), `anonymized_scientific` (Anonymized 2st level: Scientific Use File (SUF)), `anonymized_public` (Anonymized 3rd level: Public Use File (PUF)).
#' @param geog_coverage Geographic Coverage - eg. National coverage, or name of the area, etc.
#' @param data_collection_technique Data collection technique. Allowed values: `nf` (Not specified), `f2f` (Face-to-face interview), `capi` (Face-to-face interview: Computerised), `cami` (Face-to-face interview: Mobile), `papi` (Face-to-face interview: Paper-and-pencil), `tri` (Telephone interview), `eri` (E-mail interview), `wri` (Web-based interview: audio-visual technology enabling the interviewer(s) and interviewee(s) to communicate in real time), `easi` (Self-administered questionnaire: E-mail), `pasi` (Self-administered questionnaire: Paper), `sasi` (Self-administered questionnaire: SMS/MMS), `casi` (Self-administered questionnaire: Computer-assisted), `cawi` (Self-administered questionnaire: Web-based), `foc` (Face-to-face focus group), `tfoc` (Telephone focus group), `obs` (Observation), `oth` (Other).
#' @param linked_datasets Linked Datasets - Links to other RIDL datasets. It supports multiple selections.
#' @param archived Archived - Allows users to indicate if the dataset is archived or active. Allowed values: `False` (No), `True` (Yes).
#' @param admin_notes Admin Notes - General. You can use Markdown formatting here.
#' @param sampling_procedure_notes Admin Notes - Sampling Procedure. You can use Markdown formatting here.
#' @param response_rate_notes Admin Notes - Response Rate. You can use Markdown formatting here.
#' @param data_collection_notes Admin Notes - Data Collection. You can use Markdown formatting here.
#' @param weight_notes Admin Notes - Weighting. You can use Markdown formatting here.
#' @param clean_ops_notes Admin Notes - Cleaning. You can use Markdown formatting here.
#' @param data_accs_notes Admin Notes - Access authority. You can use Markdown formatting here.
#' @param ddi DDI.
#'
#' @return A list with the provided metadata.
#' @export
package_metadata <- function(title = NULL,
                                  name = NULL,
                                  short_title = NULL,
                                  notes = NULL,
                                  tag_string  = NULL,
                                  url = NULL,
                                  owner_org = NULL,
                                  private = NULL,
                                  visibility = NULL,
                                  external_access_level  = NULL,
                                  data_sensitivity = NULL,
                                  original_id = NULL,
                                  data_collector = NULL,
                                  date_range_start = NULL,
                                  date_range_end = NULL,
                                  keywords = NULL,
                                  unit_of_measurement = NULL,
                                  sampling_procedure = NULL,
                                  operational_purpose_of_data = NULL,
                                  `hxl-ated` = NULL,
                                  process_status = NULL,
                                  identifiability = NULL,
                                  geog_coverage = NULL,
                                  data_collection_technique = NULL,
                                  linked_datasets = NULL,
                                  archived = NULL,
                                  admin_notes = NULL,
                                  sampling_procedure_notes = NULL,
                                  response_rate_notes = NULL,
                                  data_collection_notes = NULL,
                                  weight_notes = NULL,
                                  clean_ops_notes = NULL,
                                  data_accs_notes = NULL,
                                  ddi = NULL) {
  as.list(match.call())[-1]
}

#' Work with RIDL datasets (packages)
#'
#' @name package
#' @details You must have the necessary permissions to create, edit, or delete packages.
#'
#' For `package_update()`/`package_patch()` operations, it is recommended to call `package_show()`, make the desired changes to the result, and then call `package_update()`/`package_patch()` with it.
#'
#' The difference between the update and patch methods is that the patch will perform an update of the provided parameters, while leaving all other parameters unchanged, whereas the update methods deletes all parameters not explicitly provided in the `metadata`.
#'
#' @param metadata Metadata created by \code{\link{package_metadata()}}.
#' @param id The id or name of the dataset.
#'
#' @return The dataset.
#' @export
package_create <- function(metadata) { ridl("package_create", !!!metadata)$results }

#' @rdname package
#' @export
package_show <- function(id) { ridl("package_show", id = id)$results }

#' @rdname package
#' @export
package_update <- function(id, metadata) { ridl("package_update", id = id, !!!metadata)$results }

#' @rdname package
#' @export
package_patch <- function(id, metadata) { ridl("package_patch", id = id, !!!metadata)$results }

#' @rdname package
#' @export
package_delete <- function(id) { ridl("package_delete", id = id); NULL }

package_search <- function(query) { ridl("package_search", q = query) }

resource_metadata <- function(type = NULL,
                              url = NULL,
                              name = NULL,
                              description = NULL,
                              format = NULL,
                              file_type = NULL,
                              date_range_start = NULL,
                              date_range_end = NULL,
                              version = NULL,
                              `hxl-ated` = NULL,
                              process_status = NULL,
                              identifiability = NULL) {
  as.list(match.call())[-1]
}

ridl_resource_create <- function(pkgid, metadata) {
  ridl("resource_create", package_id = pkgid, clear_upload = "", url_type = "upload", !!!metadata)
}

ridl_resource_upload <- function(id, path) {
  r <- ridl("cloudstorage_initiate_multipart",
            id = id, name = fs::path_file(path), size = as.numeric(fs::file_size(path)))

  uid <- r$id

  r <- ridl("cloudstorage_upload_multipart",
            id = id, uploadId = uid, partNumber = 1, upload = httr::upload_file(path))

  r <- ridl("cloudstorage_finish_multipart",
            id = id, uploadId = uid, save_action = "go-dataset-complete")
}

ridl_resource_search <- function(query) { ridl("resource_search", q = query) }

ridl_resource_update <- function(id, metadata) { ridl("resource_update", id = id, !!!metadata) }

ridl_resource_patch <- function(id, metadata) { ridl("resource_patch", id = id, !!!metadata) }

ridl_resource_delete <- function(id) { ridl("resource_delete", id = id) }
