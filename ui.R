library(shiny)

shinyUI(fluidPage(
  titlePanel("Would you survive the Titanic Sinking?"),
  sidebarLayout(
    sidebarPanel(
          h5("Select the class of your ticket:"),
          radioButtons("class", "Class", c("1st" = "1st", "2nd" = "2nd", 
                                         "3rd" = "3rd", "Crew" = "Crew")),
          h5("Select your gender:"),
          radioButtons("gender", "Gender", c("Male" = "Male", "Female" = "Female")),
          h5("Are you an Adult or a Child?"),
          radioButtons("age", "Adult/Child", c("Child" = "Child", "Adult" = "Adult"))
    ),

    mainPanel(
          h5("The total number of passengers with your criteria is:"),
          textOutput("total"),
          h5("The number of survivors with your criteria is:"),
          textOutput("survivors"),
          h5("The number of deaths with your criteria is:"),
          textOutput("deaths"),
          h5("Your survival percentage would have been:"),
          textOutput("rate")
    )
  )
))
