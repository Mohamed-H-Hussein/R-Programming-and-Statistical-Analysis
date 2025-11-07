# Assignment 1 – Fundamental R Programming and Gene Data Analysis : Detailed Analysis Report

This document summarizes each analytical step performed to create vectors, subset numeric sequences, explore files, and perform simple gene-related calculations using R. The workflow spans vector creation, subsetting, basic file handling, gene expression and length analysis, and derived calculations, providing a reproducible pipeline for introductory bioinformatics exercises.

## Fundamental R Programming and Gene Data Analysis  
**Prepared by:** Mohamed Hussein  
**Date:** 2025-08-09  

**R Notebook:** [Assignment1_Fundamental_R_Programming_and_Gene_Data_Analysis](Assignment1_Fundamental_R_Programming_and_Gene_Data_Analysis.Rmd)  
**PDF Output file:** [Assignment1_Fundamental_R_Programming_and_Gene_Data_Analysis](Assignment1_Fundamental_R_Programming_and_Gene_Data_Analysis.pdf)

---

## Input
- Numeric sequences and gene dataset  
- **Description:** Numeric sequences and gene data for practicing vector creation, subsetting, and basic calculations in R.

## Output
- Created vectors with specified values  
- Subset vectors based on positions and conditions  
- File information from working directory  
- Gene data vectors with names, lengths, and expression values  
- Derived calculations such as length-normalized expression  
- Filtered genes based on length, expression, and normalized expression

---

## Figures / Tables

The following table summarizes the gene data used in this assignment. This table will appear directly in the PDF output.

| Gene   | Expression | Length | Copy Number | Length-Normalized Expression |
|--------|------------|--------|-------------|-----------------------------|
| Gene_1 | 1000       | 100    | 10          | 10.0                        |
| Gene_2 | 3000       | 3000   | 1           | 1.0                         |
| Gene_3 | 10000      | 200    | 50          | 50.0                        |
| Gene_4 | 12000      | 1000   | 12          | 12.0                        |

---

## Vector Summary
- **vec1:** 1, 2, 3, 4, 5  
- **vec2:** 1 to 100  
- **vec3:** 0, 5, 10, 15, 20  
- **vec4:** 1, 1, 2, 2, 3, 3  
- **vec5:** 1, 1, 5, 7, 9, 10  

---

## Subset Vectors
- **v2:** all but first and last value of v → 2,3,4,5,6,7,8,9  
- **v3:** all but second and fifth value → 1,3,4,6,7,8,9,10  
- **v4:** square root of positions 6 and 7 → 2.449, 2.646  
- **v5:** alternating positions → 1,3,5,7,9  

---

## Working with Files
- **Number of files in working directory:** 2  
- **First file in directory:** "Assignment1_Fundamental_R_Programming_and_Gene_Data_Analysis.pdf"  

---

## Description
This notebook performs a structured set of exercises to demonstrate foundational R programming skills. It covers:

- Creation of numeric vectors using `c()`, `:`, and `seq()`  
- Subsetting vectors using indices, negative indexing, and logical conditions  
- Basic file exploration in the working directory  
- Gene data analysis including naming vectors, identifying the longest gene, and filtering genes based on length and expression  
- Computation of length-normalized expression and selection of genes with above-average values  

---

## Processing Steps
- Created vectors `vec1` to `vec5` with specified numeric sequences  
- Subsetted vector `v` to generate `v2`, `v3`, `v4`, `v5` using indexing, square root, and alternating positions  
- Checked the number of files and listed the first file in the working directory  
- Created gene vectors: `genes`, `expression`, `lengths`, and `copy_number`  
- Assigned gene names to expression and length vectors  
- Identified the longest gene using `which.max` → Gene_2  
- Filtered genes by conditions: length > 100 and expression > 10000 → Gene_4  
- Computed length-normalized expression and filtered genes above average → Gene_3  
- Exported tables and figures to illustrate results and calculations  

---

## Notes
- Analysis used the gene data and numeric sequences directly defined in R  
- Vector subsetting exercises demonstrated indexing, negative indexing, and sequence generation  
- Length-normalized expression calculation highlights basic bioinformatics computation  
- **Takeaway:** All vectors and gene data manipulations were successfully executed and results are reproducible, forming a foundation for more advanced R and bioinformatics analyses.
