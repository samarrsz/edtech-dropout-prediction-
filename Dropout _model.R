install.packages("readxl")
library(readxl)
mybrmdata <- read_excel("BRM_cleanedData.xlsx",sheet="Sheet1",skip=2)
head(mybrmdata)
str(mybrmdata)
mybrmdata <- as.data.frame(lapply(mybrmdata[,1:5],as.numeric))
colnames(mybrmdata) <- c("Login_frequency","Assignment_rate","Peer_score","Prior_education","Dropout")
mybrmdata <- na.omit(mybrmdata)
nrow(mybrmdata)
#logistic regression
model <- glm(Dropout~Login_frequency + Assignment_rate + Peer_score + Prior_education, data=mybrmdata,family=binomial)
#results
summary(model)
#odds ratios
exp(coef(model))
#confidence intervals
exp(confint(model))
#classification table
predicted <- ifelse(predict(model, type="response") > 0.5, 1, 0)
table(Actual = mybrmdata$Dropout, Predicted = predicted)
mean(predicted == mybrmdata$Dropout) * 100
#neg r2
install.packages("DescTools")
library(DescTools)
PseudoR2(model,which=c("CoxSnell","Nagelkerke"))
