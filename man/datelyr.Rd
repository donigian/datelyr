\name{datelyr}
\alias{datelyr}
\title{Data Dimensions for your data warehouse}
\usage{
is.weekend()
is.last_day_of_month()
day_name_of_week()
day_of_week()
day_of_year()
fiscal_month_of_year()
fiscal_quarter()

}
\description{
Get data dimensions to power your data warehouse analytical queries.
}
\examples{
userDate <- "2000/01/01"

is.weekend(userDate)
[1] TRUE

is.last_day_of_month(userDate)
[1] FALSE

dayNameOfWeek(userDate)
[1] "Saturday"

dayOfWeek(userDate)
[1] 7

dayOfYear(userDate)
[1] 1

fiscal_month_of_year(userDate)
[1] 7

fiscal_quarter(userDate)
[1] 3
}
