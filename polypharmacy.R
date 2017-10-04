#
# Construct an index of polypharmacy.
#
# Here the default is assumed to be number of bnf chapters represented in timeframe.
#
# Inputs:
# presc       prescriptions in common format
# start_date  start date for period of interest
# end_date    end date for period of interest
# bnf_level   Level of bnf code to index at. Default is across chapters.
#
# Outputs:
# data frame (prochino, poly_index)
# poly_index will reflect the total number of sections represented at the requested level.
# For chapter level, this can be 0-23. Other levels will have different possible totals.
#

polypharmacy <- function(presc, start_date, end_date, bnf_level=6){
  
  
  # Pre-conditions
  stopifnot(is.data.frame(presc))
  stopifnot(end_date >= start_date)
  stopifnot(is.numeric(bnf_level))
  stopifnot(bnf_level <= 15) 
  
  # Retro R since I can't figure out dplyr syntax
  
  # Calculate poly_index for every subject with a prescription
  bnf_counts <- count_bnf_class(presc, start_date, end_date, bnf_level)
  bnf_counts[,2:ncol(bnf_counts)] = ifelse(bnf_counts[,2:ncol(bnf_counts)] == 0, 0, 1)
  bnf_counts$poly_index <- rowSums(bnf_counts[,2:ncol(bnf_counts)])
  
  # Create a df containing all the subjects
  all_bnf_counts <- presc %>%
    select(prochi) %>%
    unique %>%
    left_join(bnf_counts, by="prochi")
  
  # Set NA poly_indices to 0
  all_bnf_counts[is.na(all_bnf_counts$poly_index),]$poly_index = 0
  
  return(all_bnf_counts %>% select(prochi, poly_index))
  
}

