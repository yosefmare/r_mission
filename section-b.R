
abed_df<- read.csv('abed_df.csv', T, ',')
# declare a categorical variable
race <- factor(abed_df$race)
icome <- factor(abed_df$income)
# Replace all values in "native.country" column except for "United States" with NA
abed_df$native.country[abed_df$native.country != 'United-States'] <- NA


# Check if either of the two columns contains a negative number
if (any(abed_df$capital.gain < 0) || any(abed_df$capital.loss < 0)) {

  negative_index <- which(abed_df$capital.gain < 0)[1]
  corresponding_value <- abed_df$capital.loss[negative_index]
  
 capital <-abed_df$capital.gain[negative_index]
 
 mutate(CapitalGains, capital <- capital.gain - capital.loss)
  
  print(paste("Negative number:", capital))
  print(paste("Corresponding number in the second column:", corresponding_value))
} else {
  print("No negative numbers found in either column.")
}

# replace the capital.gain values to NA
# i cannot replace number with NA before the if statement become NA is no number
abed_df$capital.gain <- NA

# create new data frame from the main data frame
abed_df_1 <- abed_df[, c("age", "marital.status", "race", "education.num", "income", "hours.per.week", "capital.loss", "gender", 'capital.gain')]

print(abed_df_1)

