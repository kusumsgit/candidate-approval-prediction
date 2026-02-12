# Candidate Approval Prediction Using SVM

## Business Problem
Manual candidate screening can be time-consuming and inconsistent.  
This project demonstrates how HR teams can use data-driven analytics to support application approval decisions.

## Objective
Build a classification model to predict whether a candidate’s application should be approved or rejected based on applicant attributes.

## Dataset
- 654 anonymized applications
- 6 continuous variables
- 4 binary variables
- Target: Approved (1) / Not Approved (0)
- Dataset is adapted for portfolio purposes

## Method
- A Support Vector Machine (SVM) classifier was trained using the `ksvm` function from R's `kernlab` package.  
- Tested multiple regularization parameter (`C`) values to optimize classification accuracy.  
- Key steps included:
  1. Data loading and preparation
  2. Model training
  3. Coefficient and intercept extraction
  4. Prediction and accuracy assessment

## Results
- Maximum classification accuracy: **86.39%**  
- Coefficients and intercept of the classifier were extracted to represent the decision boundary.

## Business Value
- Reduces manual effort for HR teams
- Improves consistency of application approvals
- Provides data-driven insights for workforce analytics

## Code
- The main R script is in the `code/` folder (`svm_model.R`)  
- Input dataset is in `data/`  
- Results and plots are in `output/`

## Disclaimer
This project is inspired by Georgia Tech OMSA coursework.  
All work here has been adapted and anonymized for portfolio purposes only.
