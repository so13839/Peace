library(shiny)
#library(randomForest)  # You may need to load any required libraries, including the one for the model

# Sample data for demonstration
model <- readRDS("model.RDS")

# UI
ui <- fluidPage(
  titlePanel("Insurance Charge Platform"),
  sidebarLayout(
    sidebarPanel(
      selectInput("sex_input", "Sex Input:", choices = c("male", "female")),
      numericInput("age_input", "Age Input:", value = 0, min = 0, max = 100),
      numericInput("bmi_input", "BMI Input:", value = 0, min = 0, max = 100),
      selectInput("region_input", "Region Input:", choices = c("southwest", "northwest","southeast", "northeast")),
      actionButton("predict_button", "Calculate charge"),
      verbatimTextOutput("charge")
    ),
    mainPanel(
      h3("Insurance Charges Prediction!"),
      
      h3("How to use the Prediction Platform"),
      h4(tags$b("Sex Input:")),
      h5(" Select the sex for which you want to predict the charge. Input should be either female or male."),
      h4(tags$b("Region Input:")),
      h5(" Select the Region for which you want to predict the charge. Input should be either southeast, southwest, northeast, or northwest."),
      h4(tags$b("BMI Input:")),
      h5("Enter the bmi for which you want to predict the charge. Input should be numeric."),
      h4(tags$b("Predict charge:")),
      h5("Click on the Predict charge button to display the charge")   
    ) 
  )
)


#shinyApp(ui, server)
