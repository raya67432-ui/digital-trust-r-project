Digital Media Use and Trust in Institutions

A short R data-cleaning and descriptive-analysis project, built as a portfolio piece for research assistant roles requiring R.

What this shows:
Cleaning a messy raw survey export: de-duplication, inconsistent category labels, numeric missing-value codes, type conversion
Recoding variables into ordered factors,
Building a composite index from multiple survey items,
Descriptive statistics and ggplot2 visualizations,
A fully reproducible R Markdown report (digital_trust_analysis.Rmd → digital_trust_analysis.html)

Data

The survey responses are simulated, but the questionnaire items are modeled directly on real instruments: the European Social Survey's media-use module and the standard 0–10 institutional trust battery used in the ESS and World Values Survey. This keeps the project reproducible and self-contained while reflecting the structure and messiness of real cross-national survey data exports.

Tools

R, dplyr, tidyr, ggplot2, rmarkdown

Files
generate_raw_data.R — generates the simulated raw survey export

raw_survey_export.csv — the raw ("messy") input data

digital_trust_analysis.Rmd — the full analysis, cleaning-to-descriptives

digital_trust_analysis.html — rendered report

clean_survey_data.csv — the cleaned output dataset


**[👉 View the full report here](./digital_trust_analysis.html)**

## Files
- [generate_raw_data.R](./generate_raw_data.R) — generates the simulated raw survey export
- [raw_survey_export.csv](./raw_survey_export.csv) — the raw ("messy") input data
- [digital_trust_analysis.Rmd](./digital_trust_analysis.Rmd) — the full analysis, cleaning-to-descriptives
- [digital_trust_analysis.html](./digital_trust_analysis.html) — rendered report
- [clean_survey_data.csv](./clean_survey_data.csv) — the cleaned output dataset
