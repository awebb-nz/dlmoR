# Load the package
library(dlmoR)

# Load sample data (provided with the package)
filename <- system.file("extdata/sample_melatonin_profile.csv", package = "dlmoR")

# Compute DLMO with a threshold of 3 pg/mL
dlmo_result <- calculate_dlmo(file_path = filename, threshold = 3, fine_flag = TRUE)

# View estimated DLMO inflection point (decimal-hours) and melatonin concentration (pg/mL) at this time

# Coarse grid search result
print(dlmo_result$ip$inflection_point_coarse)
print(dlmo_result$ip$inflection_point_fine)
print(dlmo_result$dlmo$fine$time)
print(dlmo_result$dlmo$fine$fit_melatonin)
print(dlmo_result$dlmo$fine$fit_lines$base)
print(dlmo_result$dlmo$fine$fit_lines$base$m)
print(dlmo_result$dlmo$fine$fit_lines$base$b)
print(dlmo_result$dlmo$fine$fit_lines$ascending$type)
print(dlmo_result$dlmo$fine$fit_lines$ascending$a)
print(dlmo_result$dlmo$fine$fit_lines$ascending$b)
print(dlmo_result$dlmo$fine$fit_lines$ascending$c)