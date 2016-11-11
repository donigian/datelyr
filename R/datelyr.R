# datelyr!
#
# This is a package which returns common date dimensions given
# a date with format "YYYY/MM/DD."
library(data.table)

load.data <- function()
{
  readRDS("./data/calendar_date_dim.rds")
}

#' @title is.weekend
#' @description Is a given date a weekend
#' @details  Given a date returns TRUE if Weekend, FALSE otherwise
#' @aliases is.weekend
#' @author armen donigian
#' @export is.weekend
#' @import data.table
#' @param userDate in YYYY/MM/DD format
#' @return TRUE or FALSE
#' @examples
#' userDate <- "2000/01/01"
#' is.weekend(userDate)
is.weekend <- function(userDate) {
  x<- data[ DateName == userDate ,]
  if(x$WeekdayWeekend == "Weekend") (TRUE) else (FALSE)
}

#' @title is.last_day_of_month
#' @description Is a given date last day of month
#' @details  Given a date return TRUE if date is last day of month, FALSE otherwise
#' @aliases is.last_day_of_month
#' @author armen donigian
#' @export is.last_day_of_month
#' @import data.table
#' @param userDate in YYYY/MM/DD format
#' @return TRUE or FALSE
#' @examples
#' userDate <- "2000/01/01"
#' is.last_day_of_month(userDate)
is.last_day_of_month <- function(userDate) {
  x<- data[ DateName == userDate ,]
  if(x$IsLastDayOfMonth == "Y") (TRUE) else (FALSE)
}

#' @title day_name_of_week
#' @description Get day name of week
#' @details  Given a date return day name of week
#' @aliases day_name_of_week
#' @author armen donigian
#' @export day_name_of_week
#' @import data.table
#' @param userDate in YYYY/MM/DD format
#' @return One of the following { c("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday")}
#' @examples
#' userDate <- "2000/01/01"
#' day_name_of_week(userDate)
day_name_of_week <- function(userDate) {
  data[ DateName == userDate ,]$DayNameOfWeek
}

#' @title day_of_week
#' @description Get day of week
#' @details  Given a date return day of week
#' @aliases day_of_week
#' @author armen donigian
#' @export day_of_week
#' @import data.table
#' @param userDate in YYYY/MM/DD format
#' @return One of the following { c("1","2","3","4","5","6","7")}
#' @examples
#' userDate <- "2000/01/01"
#' day_of_week(userDate)
day_of_week <- function(userDate) {
  data[ DateName == userDate ,]$DayOfWeek
}

#' @title day_of_year
#' @description Get day of year
#' @details  Given a date return day of year
#' @aliases day_of_year
#' @author armen donigian
#' @export day_of_year
#' @import data.table
#' @param userDate in YYYY/MM/DD format
#' @return One of the following { c(1:365)}
#' @examples
#' userDate <- "2000/01/01"
#' day_of_year(userDate)
day_of_year <- function(userDate) {
  data[ DateName == userDate ,]$DayOfYear
}

#' @title fiscal_month_of_year
#' @description Get fiscal month of year
#' @details  Given a date return fiscal month of year
#' @aliases fiscal_month_of_year
#' @author armen donigian
#' @export fiscal_month_of_year
#' @import data.table
#' @param userDate in YYYY/MM/DD format
#' @return One of the following { c("1","2","3","4","5","6","7")}
#' @examples
#' userDate <- "2000/01/01"
#' fiscal_month_of_year(userDate)
fiscal_month_of_year <- function(userDate) {
  data[ DateName == userDate ,]$FiscalMonthOfYear
}

#' @title fiscal_quarter
#' @description Get fiscal month of year
#' @details  Given a date return fiscal month of year
#' @aliases fiscal_quarter
#' @author armen donigian
#' @export fiscal_quarter
#' @import data.table
#' @param userDate in YYYY/MM/DD format
#' @return One of the following { c("1","2","3","4","5","6","7")}
#' @examples
#' userDate <- "2000/01/01"
#' fiscal_quarter(userDate)
fiscal_quarter <- function(userDate) {
  data[ DateName == userDate ,]$FiscalQuarter
}

