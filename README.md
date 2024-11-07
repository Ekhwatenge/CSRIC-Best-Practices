# CSRIC Communications Security & Reliability Analysis

**Author**: Elvira Khwatenge  
**Date**: `r Sys.Date()`

This project analyzes the **CSRIC Best Practices** dataset with a focus on understanding communications security and reliability issues. It provides insights for policy advisors working in digital and national security, such as those within government bodies (e.g., Department of Homeland Security, EU’s European Union Agency for Cybersecurity).

## Table of Contents

- [Introduction](#introduction)
- [Dataset](#dataset)
- [Project Structure](#project-structure)
- [Analysis Steps](#analysis-steps)
- [Results and Findings](#results-and-findings)
- [Usage](#usage)
- [Requirements](#requirements)
- [Contributing](#contributing)
- [License](#license)

## Introduction

The analysis conducted in this project explores key insights from CSRIC’s communications best practices on priority areas like public safety, disaster management, and network resilience for policymakers to develop informed recommendations for enhancing communication security and reliability.

## Dataset

The dataset used in this analysis was obtained from the **CSRIC Best Practices Search Tool** and includes priority level, network types, industry roles, and public safety relevance fields.

- **Source**: Communications Security, Reliability and Interoperability Council (CSRIC)
- **Content**: Priority levels, network types, industry roles, keywords, and public safety flags
- **Usage**: Public dataset intended for use by researchers, analysts, and policymakers

## Project Structure

The repository includes the following files:

```plaintext
├── CSRIC_Best_Practices_Raw.csv         # Original raw data file
├── CSRIC_Best_Practices_Cleaned.csv     # Cleaned data file for reproducibility
├── CSRIC_Analysis_Report.Rmd            # Main RMarkdown analysis report
├── CSRIC_Analysis_Report.pdf            # PDF output of the analysis report
├── scripts/
│   ├── Data_Cleaning.R                  # Script for data cleaning and preparation
│   ├── Exploratory_Analysis.R           # Script for exploratory data analysis (EDA)
│   ├── Statistical_Tests.R              # Script for statistical analysis
│   ├── Visualization.R                  # Script for generating visualizations
└── README.md                            # Project readme file
```
## Analysis Steps

1. **Data Cleaning**
   - Checked for missing values, removed duplicates, and converted categorical columns to factors for analysis.

2. **Exploratory Data Analysis (EDA)**
   - Generated summary statistics.
   - Analyzed distributions of priority levels, network types, and industry roles.

3. **Statistical Analysis**
   - Conducted Chi-squared tests to assess relationships between priority levels and network types or industry roles.

4. **Visualization**
   - Created bar charts and heatmaps to reveal patterns and associations.

5. **Conclusion**
   - Summarized key findings, including policy recommendations for communications security.

## Results and Findings

Insights from the analysis include:

- **High-priority best practices** are more common in public safety and disaster management roles.
- **Wireless and mobile networks** are associated with high-priority recommendations, reflecting the importance of security in these areas.
- A relationships exist between **priority level** and **industry role**,for network operators and service providers.

For detailed results and visualizations, see the [CSRIC_Analysis_Report.pdf](CSRIC_Analysis_Report.pdf).

## Usage

To replicate the analysis:

1. Clone this repository:

   ```bash
   git clone https://github.com/Ekhwatenge/CSRIC-Best-Practices/tree/main
   ```

-Ensure that R and the required packages (e.g., dplyr, ggplot2, reshape2) are installed.
-Run the analysis scripts in the scripts folder sequentially or open and render CSRIC_Analysis_Report.Rmd in RStudio.

## Requirements
-R version 4.0 or higher
R- Packages:
dplyr for data manipulation
ggplot2 for visualizations
reshape2 for creating heatmaps
knitr and rmarkdown for generating reports

## Contributing
To contribute, please fork the repository, create a new branch, and submit a pull request. We welcome improvements to the analysis, additional visualizations, or enhancements to the documentation.

License
This project is licensed under the MIT License - see the LICENSE file for details.

