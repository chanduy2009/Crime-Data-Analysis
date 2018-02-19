#Project Title: Analysis of crime and categories of educational levels involved in cities of United States.
#Team Members: Chandu Yerragopu, Saran Prasad, Wen Xie


#Read the data into Read
project_data<- read.csv("E:/Data Science/ASM/Project/asm_project_data.csv")
d=data.frame(project_data)
#slicing the data frame to get only required columns
d1=d[c("Cities","X1","X2","X3","X4","X5","X6","X7")]
head(d1)

# Create the relationship model.
model <- lm(X1~X3+X4+X5+X6+X7, data = d1)

# Show the model.
print(model)



# Get the Intercept and coefficients as vector elements.
cat("# # # # The Coefficient Values # # # ","\n")
# # # The Coefficient Values # # #  

a <- coef(model)[1]
police_funding <- coef(model)[2]
highschool_25 <- coef(model)[3]
nostudy_16to19<- coef(model)[4]
college_18to24 <- coef(model)[5]
college_25 <- coef(model)[6]

#Printing the coefficients of regression
print(a)

print(police_funding)

print(highschool_25)

print(nostudy_16to19)

print(college_18to24)
  
print(college_25)
 
