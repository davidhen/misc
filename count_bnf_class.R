#
# Construct a df summarising number of prescriptions at specific level of BNF
#
# Inputs:
# presc       prescriptions in common format
# bnf_level   Level of bnf code to summarise at (e.g. 2 = '01', 4 = '0101', 15='0101010G0BNAABY', etc)
# start_date  start date for period of interest
# end_date    end date for period of interest
#
# Outputs:
# data frame (prochino, n1, n2, n3, nY)
# n1 - nY = number of distinct *days* on which a prescription within a specific
# level/section of the BNF has been prescribed.


count_bnf_class <- function(df, start_date, end_date, bnf_level = 2){
  
  # Pre-conditions
  stopifnot(is.data.frame(presc))
  stopifnot(end_date >= start_date)
  stopifnot(is.numeric(bnf_level))
  stopifnot(bnf_level <= 15) 
  
  
  return (
    df %>%
      filter(disp_date > start_date & disp_date < end_date) %>%
      select(prochi, disp_date, bnf_item_code) %>%  
      distinct() %>%
      mutate(level=str_sub(bnf_item_code, 1, bnf_level)) %>%
      group_by(prochi, level) %>%
      tally() %>%
      spread(level, n, fill=0)
  )
}