#' Query Shodan's InternetDB
#'
#' @param ip A single IP address
#' @return data frame
#' @references [Shodan InternetDB API Documentation](# https://internetdb.shodan.io/docs#/)
#' @export
#' @examples
#' query_internetdb("36.94.222.209")
query_internetdb <- function(ip) {

  ip <- ipaddress::as_ip_address(ip[1])

  stopifnot("Please specify a single IP address." = ipaddress::is_ip_address(ip))

  httr::GET(
    url = sprintf("https://internetdb.shodan.io/%s", ip),
    httr::accept_json(),
    httr::user_agent("{internetdb} R package")
  ) -> res

  httr::stop_for_status(res)

  out <- httr::content(res, as = "text", encoding = "UTF-8")
  out <- jsonlite::fromJSON(out)

  for (col in c("ports", "hostnames", "tags", "cpes", "vulns")) {
    if (length(out[[col]]) == 0) {
      out[[col]] <- list(NULL)
    } else {
       out[[col]] <- list(out[[col]])
    }
  }

  out <- list2DF(out)

  out[, c("ip", "ports", "hostnames", "tags", "cpes", "vulns")]

}