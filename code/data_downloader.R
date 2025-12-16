get_data_unmerged <- function(data = c("UCDP", "ACD2", "GeoEPR")) {
  library(readr)
  if (!data %in% c("UCDP", "ACD2", "GeoEPR")) {
    stop("input data name has to be one of \"UCDP\", \"ACD2\", \"GeoEPR\"")
  }
  if (data == "ACD2") {
    return(read_csv("data/raw/ACD2EPR-2021.csv"))
  }
  if (data == "UCDP") {
    return(read_csv("data/raw/GEDEvent_v25_1.csv"))
  }
  if (data == "GeoEPR") {
    return(read_csv("data/raw/GeoEPR-2021.csv"))
  }
}
get_merged_data <- function() {
  UCDP <- get_data_unmerged("UCDP")
  GeoEPR <- get_data_unmerged("GeoEPR")
  ACD2 <- get_data_unmerged("ACD2")
  
}

get_GeoEPR_yearly <- function() {
  GeoEPR <- get_data_unmerged("GeoEPR")
 GeoEPR %>% 
    mutate("amount.years"  = to - from + 1) %>% 
    uncount(weights = amount.years) %>% 
    
  for (i in seq_along(amount.years)) {
    
    
  }
  
  
}
p %>% 
  mutate("amount.years"  = to - from + 1) %>% select(amount.years) %>%
  as.vector()
  
  
