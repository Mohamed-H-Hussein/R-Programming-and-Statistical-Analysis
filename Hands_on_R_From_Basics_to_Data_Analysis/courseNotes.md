# 🖥️  Course Notes: Hands-on R – From Basics to Data Analysis

---

## 📚 Weekly Modules & Key Topics

###  Module 1: (Lecture 1 & 2) Introduction to R

* R as a widely used scripting language in data science
* R environment for statistical analysis and graphics
* Cross-platform availability (Mac, PC, Linux) and via RStudio
* Console, Environment, and History overview
* Basic calculations: arithmetic operations, `sum()`, `sqrt()`, `min()`, `max()`
* Data types: numeric, character, logical
* Variables: assigning and naming (`<-`)
* Vectors: creation (`c()`, `seq()`, `rep()`), indexing, logical operations, conversion to lists
* Lists: heterogeneous elements, access via `$` or `[]`
* Matrices: creation (`matrix()`), row/column binding (`rbind()`, `cbind()`), indexing, naming, dimension checking

---

###  Module 2:(Lecture 3 & 4) Data Frames & Visualization

* Data frames: creation, accessing elements, subsetting, merging, ordering
* Reading & writing data: `read.table()`, `write.table()` with headers, separators, options
* Descriptive statistics: mean, median, min, max, quartiles, handling missing values, frequency tables, group-wise summaries, correlation
* Basic graphics: histograms, barplots, boxplots, scatterplots, regression lines, customization of colors, labels, axes
* Outlier detection using boxplots
* Normality testing: visual (histograms, QQ plots) and statistical (Shapiro-Wilk)

---

###  Module 3:(Lecture 5 & 6)Statistical Testing in R

* Two-group comparisons: independent and paired t-tests, Mann-Whitney/Wilcoxon tests
* Multiple groups: ANOVA, Kruskal-Wallis, post-hoc tests (Tukey, Dunnett, Bonferroni)
* Checking assumptions: normality (Shapiro-Wilk, QQ plot), variance equality (Levene’s test, var.test)
* Handling subsets and specific conditions for statistical testing

---

###  Project A – Blood Pressure Analysis

* Objective: analyze effect of dose and gender on blood pressure reduction
* Dataset: variables `bp.reduction`, `dose`, `gender`
* Workflow: load packages, explore data, descriptive stats, visualization, outlier detection, assumption testing, confidence intervals, hypothesis testing, linear regression
* Key results: dose predicts BP reduction, gender effect non-significant, model explains 75% variance
* Predictive example: estimate BP reduction for a given patient based on dose and gender

---

###  Assignment 1 – Fundamental R Programming & Gene Data

* Objective: practice R programming and perform basic gene data analysis
* Vectors: creation (`c()`, `seq()`), indexing, subsetting using logical conditions
* File handling: count files, view contents in working directory
* Gene data analysis: identify longest gene, filter by length & expression, compute length-normalized expression
* Export and visualize results in tables and figures

---

## 🧠 Key Concepts & Takeaways

* R is a versatile tool for data handling, statistical analysis, and visualization
* Understanding data types, vectors, matrices, lists, and data frames is essential for analysis
* Statistical testing requires checking assumptions and using appropriate parametric/non-parametric methods
* Projects integrate end-to-end workflow: data exploration → analysis → visualization → interpretation
* Basic bioinformatics calculations can be done using vectors and gene datasets

---

## 🔍 Practical & Analytical Aspects

* Performing arithmetic and logical operations in R
* Creating, indexing, and subsetting vectors, lists, matrices, and data frames
* Generating visualizations and interpreting descriptive statistics
* Conducting t-tests, ANOVA, post-hoc tests, and regression analysis
* Applying workflow for bioinformatics-related gene data analysis
