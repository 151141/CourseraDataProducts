conversion <- function(amount, curr){
  switch(curr, 
         "ATS" = amount * 13.76,
         "BEF" = amount * 40.34,
         "DEM" = amount * 1.96, 
         "ESP" = amount * 166.39,
         "FIM" = amount * 5.95, 
         "FRF" = amount * 6.56,
         "IEP" = amount * 0.79, 
         "ITL" = amount * 1396.27, 
         "LUF" = amount * 40.34, 
         "NLG" = amount * 2.20, 
         "PTE" = amount * 200.48 )

  }

shinyServer(
  function(input, output){
    output$oamount <- renderPrint({input$amount})
    output$ocurr <- renderPrint({input$radio})
    output$oconv <- renderPrint({conversion(input$amount, input$radio)})
    }
)