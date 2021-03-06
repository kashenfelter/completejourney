
#' Household demographic metadata.
#'
#' Household demographic metadata for households participating in the Customer Journey study.
#' Due to nature of the data, the demographic information is not available for all
#' households.
#'
#' @source 84.51, Customer Journey study, \url{http://www.8451.com/area51/}
#' @format A data frame with 801 rows and 8 variables
#' \describe{
#' \item{household_key}{Uniquely identifies each household}
#' \item{age_desc}{Estimated age range}
#' \item{marital_status_code}{Marital status (A - Married, B - Single, U - Unknown)}
#' \item{income_desc}{Household income}
#' \item{homeowner_desc}{Homeowner status (Homeowner, Renter, Unknown)}
#' \item{hh_comp_desc}{Household composition description}
#' \item{household_size_desc}{Size of household up to 5+}
#' \item{kid_category_desc}{Number of children present up to 3+}
#' }
#' @examples
#' \dontrun{
#' if (require("dplyr")) {
#' hh_demographic
#'
#' # Transaction line items that don't have household metadata
#' transactions %>%
#'   anti_join(hh_demographics, "household_key")
#' }
#' }
#' 
"hh_demographics"

#' @importFrom tibble tibble
NULL