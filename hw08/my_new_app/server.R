library(tidyverse)
library(DT)
library(stringr)
library(shinyjs)
library(shiny)
server <- function(input, output) {
	bcl_data<-read.csv("data/bcl-data.csv")
	Filtered_bcl<-reactive({
		bcl_data%>%
	  filter(Price>=input$priceIn[1],Price<=input$priceIn[2],
						 Type==input$typeIn,Country == input$countryInput)
	})
	
 output$Hist_AlcCont<-renderPlot({
 	  Filtered_bcl()%>%
		ggplot()+aes(x=Alcohol_Content)+
 		geom_histogram(bg = input$col,col = input$col)
		})
 
 output$table_head<-DT::renderDataTable({
			dat<-Filtered_bcl()
			DT::datatable(dat)
	})
 datasetInput <- reactive({
 		Filtered_bcl()
 })
 
 output$downloadData<-downloadHandler(
 	 filename = function() {
   paste('results-', Sys.Date(), '.csv', sep='')
 	 },
 	 content = function(file) {
 	 write.csv(datasetInput(),file,row.names = FALSE)
 	 }
 	)
 output$selected_var <- renderText({ 
   n<-nrow(Filtered_bcl())
   paste("We found",n,"options for you")
 })
	
}
