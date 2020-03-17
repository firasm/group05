# The Mental Health Toll of Graduate School

In [Nature's yearly survey of over 6000 graduate students,](https://www.nature.com/articles/d41586-019-03459-7) positives outweigh the negatives. 75% of students pursuing graduate research are at least somewhat satisfied with their decision to pursue a career on doctoral research. Nonetheless, survey questions that dig into the mental health toll of this career path reveal a perilous journey for most. With 36% of respondents reporting the need to seek help for anxiety or depression triggered by their studies, and a similar percentage declaring that their university does not promote a healthy work-life balance, survey answers in this area raise concerns about the mental health status of doctoral students. Harrasment and bullying also remain distressingly commonplace.

**In our project,** we aim to investigate the relationship between these two question areas (mental health & feelings of harrasment/bullying) and other variables that we hypothesise may be related to positive and/or negative outcomes. For example, are those pursuing a degree far from home more likely to suffer from anxiety and depression? Are instances of harrasment and/or bullying male-biased? In an effort to shed some light into the matter, we will study these questions in detail.

# Directory

A brief directory for easy navigation of our project repo.

+ **docs** contains all .Rmd files, and our final report (eventually!)

+ **data** holds all the data generated in the project.

+ **scripts** comprises the scripts created throughout the project.

+ **images** has any images relevant for our report, and those created by scripts.

+ **tests** contains tests for functions created in the project.

# Acknowledgments

Data used for this project is publicly available with a C4 Creative Commons license [here](https://figshare.com/s/74a5ea79d76ad66a8af8) and it is the result of a survey developed by Nature magazine. 

# Usage

1. Clone this repo.

2. Ensure the following packages are installed:

```
library(tidyverse)
library(dplyr)
library(ggplot2)
library(stringr)
library(purrr)
library(here)
library(corrplot)
library(docopt)
library(janitor)
library(glue)
```

3. Run the following scripts (in order) with the appropriate arguments specified

  - Download data: [(load.R)](https://github.com/STAT547-UBC-2019-20/group05/blob/master/scripts/load.R) 
    ```
    Rscript scripts/load.R 'https://ndownloader.figshare.com/files/18543320?private_link=74a5ea79d76ad66a8af8'
    ```
  
  - Wrangle/clean/process data: [(clean.R)](https://github.com/STAT547-UBC-2019-20/group05/blob/master/scripts/clean.R)
    ```
    Rscript scripts/clean.r --filepath="data/survey_raw.csv"
    ```
  
  - EDA script to export images: [(EDA.R)](https://github.com/STAT547-UBC-2019-20/group05/blob/master/scripts/EDA.R)
    ```
    Rscript scripts/EDA.r --filepath="data/survey_data.csv"
    ```
    
  - Analysis script with logistic regression models: [(analysis.R)](https://github.com/STAT547-UBC-2019-20/group05/blob/master/scripts/analysis.R)
    ```
    Rscript scripts/analysis.R --data_path="data/" --data_file="survey_data.csv"
    ```
  
  - Knit final report:
    *complete when report is uploaded*
