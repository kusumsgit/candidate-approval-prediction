# Candidate Approval Prediction Using SVM

## Business Problem
Manual candidate screening is time-consuming and prone to inconsistency.  
This project develops a predictive model to help HR teams decide which applicants to approve, using historical anonymized applicant data.

## Objective
Build a machine learning classifier to predict whether a candidate’s application should be approved or not.

## Dataset
- 654 applications
- 6 continuous variables
- 4 binary variables
- Target: Approved (1) / Not Approved (0)
- Source: Adapted from UCI Credit Approval dataset

## Method
A Support Vector Machine (SVM) classifier was trained using the `ksvm` function from R's `kernlab` package.  
Key steps:
1. Data loading and preparation
2. Model training with different regularization parameter `C` values
3. Extraction of classifier coefficients and intercept
4. Prediction and accuracy calculation on full dataset

## Results
- Maximum classification accuracy: **86.39%** (for C values between 0.01 and 100)
- Coefficients and intercept extracted to represent the hyperplane equation

## Business Value
- Supports HR teams by reducing manual screening effort
- Ensures consistent decision-making
- Provides data-driven insights for candidate approval processes

## Code
All scripts are included in the `code/` folder. 
Run `svm_model.R` to reproduce results.
