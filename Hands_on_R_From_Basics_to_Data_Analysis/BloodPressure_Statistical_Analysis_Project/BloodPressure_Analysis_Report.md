# **Project A – Blood Pressure Analysis and Statistical Interpretation**

This document provides a detailed analysis of blood pressure reduction in response to different drug doses and gender. The analysis demonstrates data exploration, descriptive statistics, visualization, outlier detection, hypothesis testing, and linear regression modeling in **R**.
It serves as a structured example of **biostatistical analysis and reproducible R programming**.

---

## **Prepared by:** Mohamed Hussein

**Date:** 2025-08-23.  
**R Notebook:** [ProjectA_BloodPressure_Analysis.Rmd](ProjectA_BloodPressure_Analysis.Rmd)   
**PDF Output:** [ProjectA_BloodPressure_Analysis.pdf](ProjectA_BloodPressure_Analysis.pdf)    

---

## **1. Objective**

The primary goal of this project is to analyze how **dose** and **gender** influence **blood pressure reduction**.
This is achieved by applying descriptive and inferential statistical techniques using R programming.

---

## **2. Dataset Description**

* **Dataset name:** [BloodPressure.RData](./BloodPressure.RData)

* **Variables:**

  * `bp.reduction` — Reduction in blood pressure (numeric)
  * `dose` — Drug dosage (mg/day)
  * `gender` — Participant gender (0 = male, 1 = female)

---

## **3. Analytical Workflow**

| Step | Analysis Component           | Description                                                                      |
| ---- | ---------------------------- | -------------------------------------------------------------------------------- |
| 3.1  | Load Packages                | Imported essential R libraries: `dplyr`, `ggplot2`, `psych`, `car`, and `Hmisc`. |
| 3.2  | Data Import                  | Downloaded and loaded the dataset using `googledrive` and `load()`.              |
| 3.3  | Data Exploration             | Checked structure, summary statistics, and variable names.                       |
| 3.4  | Descriptive Statistics       | Computed correlations, frequency tables, and central tendency measures.          |
| 3.5  | Visualization                | Created bar charts, histograms, scatterplots, and boxplots.                      |
| 3.6  | Outlier Detection            | Identified extreme values using boxplots.                                        |
| 3.7  | Normality & Homoscedasticity | Verified data assumptions via Shapiro–Wilk and Levene’s tests.                   |
| 3.8  | Confidence Intervals         | Calculated 90%, 95%, and 99% confidence intervals per dose.                      |
| 3.9  | Hypothesis Testing           | Conducted t-tests and ANOVA to compare groups.                                   |
| 3.10 | Linear Regression            | Modeled BP reduction as a function of dose and gender.                           |

---

## **4. Descriptive Statistics**

| Variable                     | Mean                               | Min | Max | N  |
| ---------------------------- | ---------------------------------- | --- | --- | -- |
| **Dose (mg/day)**            | 4.25                               | 0   | 10  | 40 |
| **BP Reduction (mmHg)**      | 7.625                              | -8  | 26  | 40 |
| **Gender (0=male,1=female)** | Mean = 0.45 (22 males, 18 females) | –   | –   | 40 |

* **Correlation:** Positive correlation between dose and blood pressure reduction (**r = 0.859**).

---

## **5. Figures**

| Figure No. | Name (in PDF)                           | Description                                                                                                   |
| ---------- | --------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| Figure 1   | Gender Distribution                     | Bar chart showing the number of male and female participants.                                                 |
| Figure 2   | Mean Blood Pressure Reduction by Gender | Bar chart comparing average BP reduction between genders.                                                     |
| Figure 3   | Histogram of Dose                       | Histogram showing the distribution of drug doses among participants.                                          |
| Figure 4   | Histogram of BP Reduction               | Histogram illustrating the distribution of blood pressure reduction values.                                   |
| Figure 5   | Scatterplot Dose vs BP Reduction        | Scatterplot showing the relationship between dose and BP reduction, colored by gender, with regression lines. |
| Figure 6   | Boxplot of Blood Pressure Reduction     | Boxplot displaying overall BP reduction and highlighting potential outliers.                                  |
| Figure 7   | BP Reduction per Dose                   | Boxplot comparing BP reduction across different dose levels.                                                  |
| Figure 8   | Outlier Detection for BP Reduction      | Boxplot used specifically to detect and visualize outliers in BP reduction data.                              |
| Figure 9   | QQ Plot of BP Reduction                 | Q-Q plot assessing normality of BP reduction data.                                                            |

---

## **6. Outlier and Assumption Testing**

* **Outliers:** Minor outliers detected visually in BP reduction.
* **Normality (Shapiro–Wilk test):** W = **0.98321**, p = **0.806** → Data are approximately normal.
* **Homoscedasticity (Levene’s test):** F = **0.9517**, p = **0.426** → Variances are homogeneous across dose levels.

---

## **7. Confidence Intervals per Dose**

| Dose (mg/day) | Mean BP Reduction | 90% CI        | 95% CI        | 99% CI        |
| ------------- | ----------------- | ------------- | ------------- | ------------- |
| 0             | -0.9              | [-3.50, 1.70] | [-4.11, 2.31] | [-5.51, 1.75] |
| 2             | 4.5               | [2.95, 6.05]  | [2.58, 6.42]  | [1.75, 5.55]  |
| 5             | 9.4               | [7.23, 11.6]  | [6.72, 12.1]  | [5.55, 12.1]  |
| 10            | 17.5              | [14.5, 20.5]  | [13.7, 21.3]  | [12.1, 21.3]  |

---

## **8. Hypothesis Testing**

### **a. Gender-based comparison (t-test, dose = 0)**

* **t = 3.011**, **df = 8**, **p = 0.01679**
  → Significant difference between males and females (p < 0.05).

### **b. ANOVA (all dose levels)**

* **F(3,36) = 35.42**, **p = 7.71e-11** → Highly significant difference among dose groups.

**Tukey’s post hoc test:**

| Comparison | Difference | p adj     | Interpretation     |
| ---------- | ---------- | --------- | ------------------ |
| 2–0        | 5.4        | 0.030     | Significant        |
| 5–0        | 10.3       | 0.000016  | Highly significant |
| 10–0       | 18.4       | 0.000000  | Highly significant |
| 5–2        | 4.9        | 0.056     | Borderline         |
| 10–2       | 13.0       | 0.0000002 | Significant        |
| 10–5       | 8.1        | 0.000574  | Significant        |

---

## **9. Linear Regression Modeling**

**Model:**
bp.reduction = β₀ + β₁(dose) + β₂(gender)

| Coefficient     | Estimate   | Std. Error | t-value    | p-value       |
| --------------- | ---------- | ---------- | ---------- | ------------- |
| Intercept       | 0.8525     | 1.1480     | 0.743      | 0.462         |
| Dose            | **1.7757** | 0.1708     | **10.397** | **1.57e-12*** |
| Gender (female) | -1.7207    | 1.2932     | -1.331     | 0.191         |

* **Model Fit:**

  * Residual SE = **4.064**
  * Multiple R² = **0.7507**
  * Adjusted R² = **0.7372**
  * F(2,37) = **55.7**, **p = 6.928e-12**

* **Confidence Intervals (95%)**

  * Intercept: [-1.47, 3.18]
  * Dose: [1.43, 2.12]
  * Gender (female): [-4.34, 0.90]

---

## **10. Predictive Estimation**

For a **male** patient on **3 mg/day**:

**Predicted mean BP reduction = 6.18 mmHg**
**95% CI = [4.36, 8.00]**

---

## **11. Key Insights and Learning Outcomes**

* Demonstrated end-to-end **R workflow** for biostatistical analysis.
* Applied **descriptive** and **inferential statistics** to a biomedical dataset.
* Validated assumptions using normality and variance tests.
* Built a **linear regression model** showing dose-dependent BP reduction.
* **Dose** strongly predicts blood pressure reduction (p < 0.001).
* **Gender** was not statistically significant.
* Model explains **≈75%** of the variance (R² = 0.75).
* All results reproducible through `.Rmd` and `.pdf` outputs.
