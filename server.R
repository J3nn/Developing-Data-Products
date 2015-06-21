source("./bmi.R")

shinyServer(function(input, output) {
  output$input <- renderText({
    if (input$units == Metric) {
      unit.weight = "kg"
      unit.height = "m"
    } else {
      unit.weight = "lb"
      unit.height = "in"
    }
    
    paste0("You weigh ", "<strong>",input$weight, " ", unit.weight, " at ", input$height, " ", unit.height, "</strong>")
  })
  
  output$result <- renderText({
    bmi = bmi(weight = input$weight, height = input$height, units = input$units)
    
    if      (bmi <  18.5) info = "<span style='color: red'>Underweight</span>"
    else if (bmi < 25.0) info = "<span style='color: green'>Normal</span>"
    else if (bmi < 30.0) info = "<span style='color: orange'>Overweight</span>"
    else                info = "<span style='color: red'>Obese</span>"
    
    paste0("Your BMI is ", "<code>", round(bmi, 1), "</code>", ". You are ", info)
  })
  
})