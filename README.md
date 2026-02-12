# Employee Attrition Prediction

## Business Problem
Employee turnover is costly for organizations. HR teams need to identify employees at risk of leaving to improve retention strategies.  
This project demonstrates a data-driven approach to predict employee attrition using HR analytics.

## Objective
Build a predictive model to classify employees as likely to **stay** or **leave** the organization based on key HR metrics.

## Dataset
- Simulated anonymized HR dataset for portfolio purposes  
- 100 employee records with features such as:
  - Age
  - Job Level
  - Years at Company
  - Job Satisfaction
  - Overtime status (Yes/No)  
- Target variable: `Attrition` (Yes = leaving, No = staying)

## Methodology
1. **Data Exploration:**  
   - Summary statistics to understand feature distributions  
   - Visualization of attrition by job satisfaction and overtime (plots saved in `output/`)  

2. **Model Building:**  
   - Decision tree classifier trained on HR features to predict attrition  
   - Easy to interpret and explain to HR stakeholders

3. **Evaluation:**  
   - Confusion matrix and model accuracy calculated and saved in `output/confusion_matrix.csv`  
   - Accuracy reported for the simulated dataset

4. **Output & Visualization:**  
   - Plots saved in `output/`:
     - `attrition_by_job_satisfaction.png`  
     - `attrition_by_overtime.png`  
     - Decision tree visualized in RStudio
   - Confusion matrix saved as CSV

## Key Insights (from simulated data)
- Employees with low **Job Satisfaction** and high **Overtime** are more likely to leave  
- Decision tree highlights **Years at Company**, **Job Level**, and **Overtime** as important predictors  
- Model accuracy on simulated dataset: ~77% (varies due to random simulation)

## Business Value
- Helps HR teams proactively manage retention  
- Provides actionable insights for workforce planning  
- Demonstrates ability to apply analytics in HR contexts

## Repository Structure
employee-attrition-prediction/
├── README.md
├── code/
│ └── attrition_model.R
├── data/
│ └── employee_attrition.csv
└── output/
├── confusion_matrix.csv
├── attrition_by_job_satisfaction.png
└── attrition_by_overtime.png

## Tools & Skills Demonstrated
- R programming for data analysis and modeling  
- Data visualization using `ggplot2`  
- Decision tree modeling with `rpart` and `rpart.plot`  
- HR analytics insights and interpretation

## Disclaimer
Dataset is simulated and anonymized for portfolio purposes. All analysis is for demonstration of HR analytics skills.
