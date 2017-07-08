
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(DT)

shinyServer(function(input, output) {
  adat <- read.csv('foldatlatszo_master.csv')
  
  output$table <- DT::renderDataTable(
    DT::datatable(adat,extensions = c('Buttons','FixedHeader'),class = 'cell-border stripe',rownames = FALSE,
                  filter = 'top', options = list(dom = 'Blfrtip', fixedHeader = TRUE,pageLength = 50,lengthMenu = c(10,50,500,5000, 10000, 25000 ),
                                                 buttons = c('copy', 'csv', 'excel', 'pdf', 'print'))) 
  )

})
