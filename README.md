# edtech-dropout-prediction-
Logistic regression model predicting student dropout using R
# EdTech Dropout Prediction using Logistic Regression

## Overview
This project analyses factors affecting student dropout in edtech platforms using logistic regression.

## Dataset
- Sample size: 39 students  
- Variables: login frequency, assignment submission rate, peer interaction score, prior education  

## Methodology
- Logistic Regression implemented in R (glm function)  
- Binary classification: Dropout (1) vs Completed (0)  

## Key Results
- Model Accuracy: ~66.7%  
- Nagelkerke R²: ~0.16  
- Assignment submission rate is the strongest predictor (OR = 0.742)  
- Higher assignment submission reduces dropout likelihood  

## Insights
- Engagement quality matters more than just login frequency  
- Students with consistent assignment submission are less likely to drop out  

## Limitations
- Small sample size (n=39)  
- Results not statistically significant at 5% level  

## Tools Used
- R  
- Excel  
