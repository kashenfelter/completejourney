#' Causal data.
#'
#' Causal data of the Complete Journey study signifying whether a given product
#' was featured in the weekly mailer or was part of an in-store display (other
#' than regular product placement). This is only a subsample of the complete
#' data set to keep package size manageable.
#'
#' @source 84.51, Customer Journey study, \url{http://www.8451.com/area51/}
#' @format A data frame with 36,786,524 rows and 5 variables
#' \describe{
#'   \item{product_id}{Uniquely identifies each product}
#'   \item{store_id}{Uniquely identifies each store}
#'   \item{week_no}{Week of the transaction; Ranges 1-102}
#'   \item{display}{Display location  (see details for range of values)}
#'   \item{mailer}{Mailer location (see details for range of values)}
#' }
#' @section Display Location Codes:
#' \itemize{
#'   \item 0 - Not on Display
#'   \item 1 - Store Front
#'   \item 2 - Store Rear
#'   \item 3 - Front End Cap
#'   \item 4 - Mid-Aisle End Cap
#'   \item 5 - Rear End Cap
#'   \item 6 - Side-Aisle End Cap
#'   \item 7 - In-Aisle
#'   \item 9 - Secondary Location Display
#'   \item A - In-Shelf
#' }
#' @section Mailer Location Codes:
#' \itemize{
#'   \item 0 - Not on ad
#'   \item A - Interior page feature
#'   \item C - Interior page line item
#'   \item D - Front page feature
#'   \item F - Back page feature
#'   \item H - Wrap from feature
#'   \item J - Wrap interior coupon
#'   \item L - Wrap back feature
#'   \item P - Interior page coupon
#'   \item X - Free on interior page
#'   \item Z - Free on front page, back page or wrap
#' }
#' @examples
#' \dontrun{
#' if (require("dplyr")) {
#' causal_data
#'
#' # Join causal_data to transaction_data to analyze
#' # product promotion/location
#' transactions %>%
#'   left_join(causal_data,
#'             c("product_id", "store_id", "week_no"))
#' }
#' }
"causal_data"

#' @importFrom tibble tibble
NULL