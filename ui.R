shinyUI(fluidPage(
  titlePanel("BMI Calculator for Adults"),

  sidebarLayout(sidebarPanel(
    
                radioButtons(
                        inputId  = "units",
                        label    = "Units:",
                        choices  = c("Metric" = 1, "Imperial" = 2),
                        selected = 1
                ),
                
                numericInput(
                        inputId = "weight",
                        label = strong("Your weight:"),
                        value = 55
                ),
                
                numericInput(
                        inputId = "height",
                        label = strong("Your height:"),
                        value = 1.70,
                        step  = 0.01
                )
        ),
        
        mainPanel(
          uiOutput("input"),
          uiOutput("result"),
          
          h3("Documentation"),
          p("This application calculates the Body Mass Index (BMI). The BMI is a common measure of body fat based on one's height and weight."),
          br(),
          h4("Calculation"),
          p("BMI = Weight(kg)/Height(m)^2", br(), br(), "or", br(), br(), "BMI = Weight(lb)*703/Height(in)"),
          br(),
          h4("Intepretation"),
          p("Intepretation of results are based on the explanation provided by the US Centers for Disease Control and Prevention."),
          p("* Underweight: Less than 18.5"),
          p("* Normal weight: 18.5 to 24.9"), 
          p("* Overweight: 25 to 29.9"),
          p("* Obese: 30 or greater")
                 
        ))
))