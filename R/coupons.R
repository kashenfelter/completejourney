#' Coupon metadata.
#'
#' Coupon metadata for all coupons used in campaigns advertised to households
#' participating in the Customer Journey study.
#'
#' @source 84.51, Customer Journey study, \url{http://www.8451.com/area51/}
#' @format A data frame with 124,548 rows and 3 variables
#' \describe{
#' \item{coupon_upc}{Uniquely identifies each coupon (unique to household and campaign)}
#' \item{product_id}{Uniquely identifies each product}
#' \item{campaign}{Uniquely identifies each campaign}
#' }
#' @examples
#' \dontrun{
#' if (require("dplyr")) {
#' coupon
#'
#' # Join product metadata to coupon dataset
#' coupons %>%
#'   left_join(products, "product_id")
#' }
#' }
"coupons"

#' @importFrom tibble tibble
NULL