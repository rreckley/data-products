Stock Research Application  Presentation
========================================================
author:  Roderic N. Reckley 
date:  July 10, 2016
autosize: false

Stock Research Application Overview
========================================================
<small>  
    For any investor, the decision to invest or sell a stock is based on performing a basic technical analysis. A technical analysis is the study of price and volume changes over time. Technical analysis usually involves the use of financial charts to help study these changes.

   The R development environment is a robust programming environment for Data analysis, manipulation and visualization. These capabilities make it a good tool for performing a technical analysis of a individual stock. All that is needed is access to the necessary financial data.
 
   Access to financial data and the ability to generate the necessary charts is provided by the quantmod package. This package provides a method to download financial data via http from a variety of sources and generate the technical charts. Google and Yahoo are the primary sources for obtaining the financial data. 
</small>
 
Stock Chart Generation 
========================================================
![sample stock chart](stock_presentation-figure/stock_image1.png)
 
The application uses Apple Inc. (AAPL) as the default stock.  

The chart application allows you to:
 * Select the stock symbol you wish to work with.
 * The Date Range for the stock data.
 * Chart Type.
 * Select additional technical indicators to apply to the chart.
 

Stock Financials Report
========================================================
![sample financial report](stock_presentation-figure/stock_image2.png)

The financials application allows you to:
* Select the stock symbol you wish to work with.
* Report Type.
* Report Period.

Try the application
========================================================

The stock research application is available at: https://rreckley.shinyapps.io/StockQuote/

The source code for the application is available at: https://github.com/rreckley/data-products/tree/master/StockQuote

Use the power of R to become a better investor.


