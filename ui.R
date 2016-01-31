library(shiny)
shinyUI(
    pageWithSidebar(
      #Application title
      headerPanel("Currency conversion calculator Euro (EUR)"),
      
      sidebarPanel(
        numericInput("amount", "Amount (EUR):", 0, min=0, step = 10),
        
        radioButtons("radio", "Currency: \n", choices = list(
          "Austrian Schilling (ATS)" = "ATS",
          "Belgian Franc (BEF)" = "BEF", 
          "German Mark (DEM)" = "DEM", 
          "Spanish Peseta (ESP)" = "ESP", 
          "Finnish Markka (FIM)" = "FIM",
          "French Franc (FRF)" = "FRF", 
          "Irish Punt (IEP)" = "IEP", 
          "Italian Lira (ITL)" = "ITL", 
          "Luxembourg Franc (LUF)" = "LUF", 
          "Dutch Guilder (NLG)" = "NLG", 
          "Portuguese Escudo (PTE)" = "PTE")),
        
        submitButton("Submit")
      ),
      mainPanel(
        #h3("Summary:"), 
        h4("You entered the amount (EUR): "), 
        verbatimTextOutput("oamount"),
        h4("You chose the currency: "),
        verbatimTextOutput("ocurr"),
        h4("Your converted amount: "),
        verbatimTextOutput("oconv")
    )
  )
)