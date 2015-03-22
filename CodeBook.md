# Introduction

The script `run_analysis.R`performs the 5 steps to get a clean data as described in the course project's definition.

* First, merge the training and the test sets using `rbind()`.
* Next, columns with the mean and standard deviation measures are taken, and given the correct names from `features.txt`.
* Name activities with the activity names and IDs from `activity_labels.txt`.
* Label columns having vague names with correct names.
* Finally, generate a new dataset with all the average measures for each subject and activity, which is `averages_data.txt`.

# Variables

* `x_train`, `y_train`, `x_test`, `y_test`, `subject_train` and `subject_test` contain the data from the downloaded files.
* `x_data`, `y_data` and `subject_data` are merged datasets for further analysis.
* `features` contains the correct names for the `x_data` dataset, which are applied to the column names stored in `measurements_mean_std`, a numeric vector used to extract the desired data.
* A similar approach is taken with activity names through the `activities` variable.
* `all_data` merges `x_data`, `y_data` and `subject_data` in a big dataset.
* Finally, `averages` contains the relevant averages which will be later stored in a `.txt` file. `ddply()` from the plyr package is used to apply `colMeans()` and ease the development.
