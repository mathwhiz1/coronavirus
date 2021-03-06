#' The 2019 Novel Coronavirus COVID-19 (2019-nCoV) Dataset
#'
#' Daily summary of the Coronavirus (COVID-19) cases by state/province.
#'
#' @format A data frame with 7 variables.
#' \describe{
#'   \item{date}{Date in YYYY-MM-DD format.}
#'   \item{province}{Name of province/state, for countries where data is
#'   provided split across multiple provinces/states.}
#'   \item{country}{Name of country/region.}
#'   \item{lat}{Latitude of center of geographic region, defined as either
#'   country or, if available, province.}
#'   \item{long}{Longitude of center of geographic region, defined as either
#'   country or, if available, province.}
#'   \item{type}{An indicator for the type of cases (confirmed, death,
#'   recovered).}
#'   \item{cases}{Number of cases on given date.}
#'   }
#' @source Johns Hopkins University Center for Systems Science and Engineering
#' (JHU CCSE) Coronavirus \href{https://systems.jhu.edu/research/public-health/ncov/}{website}.
#' @keywords datasets coronavirus COVID19
#' @details The dataset contains the daily summary of Coronavirus cases
#' (confirmed, death, and recovered), by state/province.
#' @examples
#' data(coronavirus)
#'
#' require(dplyr)
#'
#' # Get top confirmed cases by state
#' coronavirus %>%
#'   filter(type == "confirmed") %>%
#'   group_by(country) %>%
#'   summarise(total = sum(cases)) %>%
#'   arrange(-total) %>%
#'   head(20)
#'
#' # Get the number of recovered cases in China by province
#' coronavirus %>%
#'   filter(type == "recovered", country == "China") %>%
#'   group_by(province) %>%
#'   summarise(total = sum(cases)) %>%
#'   arrange(-total)
#'
"coronavirus"

