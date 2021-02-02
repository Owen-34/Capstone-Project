## Capstone: Coursera Data Science

library(shiny)
library(markdown)

## SHINY UI
shinyUI(
    fluidPage(
        titlePanel("DATA SCIENCE CAPSTONE - SINGLE WORD PREDICTION"),
        sidebarLayout(
            sidebarPanel(
                helpText("Enter Word"),
                hr(),
                textInput("inputText", " ",value = ""),
                
            ),
            mainPanel(
                h2("Predicted Word"),
                verbatimTextOutput("prediction"),
                strong("Word(s) entered:"),
                strong(code(textOutput('sentence1'))),
                br(),
                strong("USING SEARCH AT N-GRAMS TO SHOW NEXT WORD:"),
                strong(code(textOutput('sentence2'))),
                
            )
        )
    )
)
