# Stock Research  Tool Shiny Application.
# Coursera Data Products Project - 7/11/2016
# Roderic N. Reckley
# Description: Simple client that allows a user to enter a stock symbol that will be used to generate a chart and
# financial report.
# The default stock provided is for Apple Inc.

library(shiny)

# Define UI for application that draws a histogram
shinyUI(navbarPage("Stock Research Application",
                   
                   tabPanel("Charts",
                            fluidRow(
                              
                              ##################### SIDEPANEL
                              column(4,
                                     
                                     #INFO TEXT
                                     helpText("Select a stock from a US Exchange to view chart.") ,
                                     
                                     #TICKER
                                     textInput("ticker", 
                                               label=h5("Stock Symbol:"),
                                               "AAPL"),
                                     
                                     #DATE PERIOD
                                     dateRangeInput("dates", 
                                                    label=h5("Date Range:"),
                                                    format = "mm-dd-yy",
                                                    start=Sys.Date()-180,
                                                    end=Sys.Date()),
                                     
                                     
                                     #CHART TYPE
                                     selectInput("chart_type",
                                                 label =h5("Chart Type:"),
                                                 choices=list("candlesticks", "matchsticks", "bars", "line")),
                                     
                                     #TA OPTIONS
                                     checkboxGroupInput("TA_check",
                                                        label=h5("Technical Indicators:"),
                                                        choices=list(
                                                          "Average True Range"="addATR()",
                                                          "Bollinger Bands"="addBBands()",
                                                          "Commodity Channel Index"="addCCI()",
                                                          "Chaiken Money Flow"="addCMF()",
                                                          "Directional Movement Index"="addADX()",
                                                          "Exponential Moving Average"="addEMA()",
                                                          "Moving Average Convergence Divergence"="addMACD()",
                                                          "Parabolic Stop and Reversal"="addSAR()",
                                                          "Rate of Change"="addROC()",
                                                          "Relative Strength Index"="addRSI()",
                                                          "Simple Moving Average"="addSMA()",
                                                          "Stochastic Momentum Indicator"="addSMI()",
                                                          "Volume"="addVo()",
                                                          "Weighted Moving Average"="addWMA()",
                                                          "Welles Wilder's Directional Movement"="addADX()",
                                                          "William's %R"="addWPR()",
                                                          "Zero Lag Exponential Moving Average"="addZLEMA()"))
                                  
                                     
                                     
                              ),
                              
                              ###################### CHARTS
                              column(8,plotOutput("distPlot"))#, plotOutput("returnsPlot"))
                              
                              
                              
                            ) #END fluidRow
                   ), #END tab
                   
                   tabPanel("Financials",     
                            fluidRow(             
                              #column(6,plotOutput("returnsPlot")), 
                              column(4, 
                                     
                                     #INFO TEXT
                                     helpText("Select a stock from a US Exchange to view financials.") ,
                                     
                                     #TICKER
                                     textInput("ticker", 
                                               label=h5("Stock Symbol:"),
                                               "AAPL"),
  
                                     #REPORT TYPE
                                     selectInput("report_type",
                                                 label =h5("Report Type:"),
                                                 choices=list("Income Statements" = "IS",
                                                              "Balance Sheets" = "BS", 
                                                              "Cash Flow Statements" = "CF")),
                                     
                                     #REPORT PERIOD
                                     selectInput("report_period",
                                                 label =h5("Report Period:"),
                                                 choices=list("Annual" = "A",
                                                              "Quarterly" = "Q"))
                                     
                              ),
                              
                              column(8,tableOutput("financialsText"))))
))
