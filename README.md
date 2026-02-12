# Candidate Approval Prediction Using Machine Learning

## Business Problem

Organizations review large numbers of applicants but manual decision-making can be inconsistent.
This project builds a predictive model to assist in approval decisions using historical applicant data.

## Objective

Develop a classification model that predicts whether an application should be approved or rejected based on applicant attributes.

## Dataset

Based on the Credit Approval dataset (UCI Machine Learning Repository), adapted as an anonymized applicant screening dataset.

* 654 applications
* 6 continuous variables
* 4 binary variables
* Target: Approved / Not Approved

## Method

A Support Vector Machine (SVM) classifier was built using the `kernlab` package in R.

Steps performed:

1. Data preparation
2. Model training
3. Classification evaluation
4. Accuracy assessment

## Outcome

The model successfully classified applications and demonstrated how analytics can support consistent decision-making in approval workflows.

## Business Value

This type of model can assist HR or operations teams by:

* Reducing manual screening effort
* Improving decision consistency
* Supporting data-driven hiring decisions

*(Code and analysis included in repository)*
