#Mul_Reg_data <- read_excel("~/BIA7105-24/Mul_Reg_data.xlsx")
dim(Mul_Reg_data) 
str(Mul_Reg_data)
#string is for looking at the structure of the files, and other materials.
Mul_Reg_data$Gender <- as.factor(Mul_Reg_data$Gender)
Mul_Reg_data$Department <- as.factor(Mul_Reg_data$Department)
Mul_Reg_Result <- lm(Salary~., data = Mul_Reg_data)
#predict(Mul_Reg_Result, Mul_Reg_data[,-5])
saveRDS(Mul_Reg_Result, "Mul_Reg_Result.rds")
