# Task 2: Exploratory Data Analysis

## Overview

This task explores the Superstore sample dataset to assess data quality and identify patterns in sales, profit, discounts, product categories, regions, and monthly performance.

## Files

- `Task2_Exploratory_Data_Analysis.ipynb` — notebook containing the analysis and visualizations.
- `superstore_sample.csv` — source dataset used by the notebook.
- `Task2_Summary.md` — written summary of the approach, findings, and follow-up questions.

## Requirements

- Python 3
- Jupyter Notebook or Google Colab
- pandas, numpy, matplotlib, and seaborn

## Run the notebook

1. Open `Task2_Exploratory_Data_Analysis.ipynb` in Jupyter or Google Colab.
2. Make `superstore_sample.csv` available in the notebook environment. In Colab, run the upload cell and select the file.
3. Run the notebook cells from top to bottom.

The notebook checks missing values, duplicates, and data types; converts date columns; removes exact duplicate rows; fills missing discounts with zero; and labels missing Segment and State values as `Unknown`. Missing Profit remains blank. Potential outliers are flagged for review rather than removed automatically.

## Analysis included

- Descriptive statistics, distributions, and potential outlier counts
- Counts by Category, Region, and Segment
- Sales versus Profit and Profit by Discount visualizations
- Category profit margins and regional sales
- Monthly Sales and Profit trends
- Correlation heatmap for numeric measures

## Key findings

- Technology has the highest category sales and profit: approximately $1.40 million in sales, $166.9 thousand in profit, and an 11.9% profit margin.
- Furniture has approximately $410.7 thousand in sales and a $17.8 thousand loss, for a margin of about -4.3%.
- Sales and profit have a positive correlation of approximately 0.68, with exceptions among individual observations.
- Discount groups at 20% or more have negative aggregate profit in this sample. This association does not establish that discounts caused the losses.
- December 2025 is the strongest month at about $102 thousand; more years of data are needed to confirm a repeating seasonal pattern.

## Interpretation

These findings describe the supplied sample and may change with different data or cleaning choices. Correlation and grouped comparisons show associations, not cause and effect. Monetary values use the dataset's units.
