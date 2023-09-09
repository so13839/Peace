library(shiny)
library(readr)
model <- readRDS("model.RDS")
# Server
server <- function(input, output) {
  # Define an eventReactive for calculating the predicted charge
  predicted_charge <- eventReactive(input$predict_button, {
    new_data <- data.frame(age = input$age_input, sex = input$sex_input, bmi = input$bmi_input, region = input$region_input)
    predict(model, new_data)
  })
  
  # Define the behavior of the "charge" output element using renderText
  output$charge <- renderText({
    charge_value <- predicted_charge()
    paste("The charge is:", round(charge_value, 2), "Shs")
  })
}

# Run the app
shinyApp(ui, server)
