# Stock Research  Tool Shiny Application.
# Coursera Data Products Project - 7/11/2016
# Roderic N. Reckley
# Description: Simple Server that uses that quantmod package to generate a chart and 
# financial reports for a valid stock symbol.

library(shiny)
library(quantmod)


shinyServer(function(input, output) {
  
  
  output$distPlot <- renderPlot({
    
    getSymbols(as.character(input$ticker), src="yahoo", from = input$dates[1], to = input$dates[2])
    
    if (length(input$TA_check)!=0){
      chartSeries(eval(parse(text=input$ticker)), TA=paste(input$TA_check, collapse=";"), name=paste("Symbol:", input$ticker), type=input$chart_type, up.col='green', dn.col='red', theme="white")
    }
    if (length(input$TA_check)==0){
      chartSeries(eval(parse(text=input$ticker)), TA=NULL, name=paste("Symbol:", input$ticker), type=input$chart_type, up.col='green', dn.col='red', theme="white")
    }
    
  })
  

  output$financialsText <- renderTable({
    
    x <- getFinancials(input$ticker)
    cat(x, class(x), "\n")
    as.table(viewFinancials(eval(parse(text=x)), as.character(input$report_type), as.character(input$report_period)))
  
  })

})
