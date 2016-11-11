## datelyr

Date dimensions are a key part of an agile data warehouse. Whether you're a student of [Ralph Kimball](http://www.kimballgroup.com/) or a data engineering enthusiast looking to do dimensional modeling, you will need to build a *fact table* to represent **date dimensions**.

R is commonly used by data scientists, business analysts, data and machine learning engineers. `datelyr` is a R package to help you get some common date dimensions to power your OLTP queries.

Here are the types of questions `datelyr` helps you answer:

- Given a date, is it a weekday or weekend?
- Given a date, is it the last day of month?
- Given a date, what is the name of week?
- Given a date, what is the day of week?
- Given a date, what is the day of year?
- Given a date, what is the month of year?
- Given a date, what is the fiscal quarter?
