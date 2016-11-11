# datelyr!
#
# This is a package which returns common date dimensions given
# a date with format "YYYY/MM/DD."
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'
library(data.table)

load.data <- function()
{
  readRDS("./data/calendar_date_dim.rds")
}

is.weekend <- function(userDate) {
  x<- data[ DateName == userDate ,]
  if(x$WeekdayWeekend == "Weekend") (TRUE) else (FALSE)
}

is.last_day_of_month <- function(userDate) {
  x<- data[ DateName == userDate ,]
  if(x$IsLastDayOfMonth == "Y") (TRUE) else (FALSE)
}

day_name_of_week <- function(userDate) {
  data[ DateName == userDate ,]$DayNameOfWeek
}

day_of_week <- function(userDate) {
  data[ DateName == userDate ,]$DayOfWeek
}

day_of_year <- function(userDate) {
  data[ DateName == userDate ,]$DayOfYear
}

fiscal_month_of_year <- function(userDate) {
  data[ DateName == userDate ,]$FiscalMonthOfYear
}

fiscal_quarter <- function(userDate) {
  data[ DateName == userDate ,]$FiscalQuarter
}

