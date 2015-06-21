Metric   = 1;
Imperial = 2;

bmi = function(weight, height, units) {
  bmi = weight / height^2
  
  if (units == Imperial) {
    bmi = bmi * 703
  }
  
  return (bmi)
}