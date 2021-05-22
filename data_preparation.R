library('tidyverse')
library('fpp3')

#Load Data
tbl <-
  list.files(pattern = "*.csv") %>% 
  map_df(~read_csv(.))

#Rename the count column and fill with 1
colnames(tbl)[4] <- 'N_FLIGHTS'
tbl$N_FLIGHTS <- 1

#Load table with airports names
airport_id <- read_csv('../L_AIRPORT_ID.csv')


#Filter the dataset on the airports above and merge table with airport names
df_monthly <- 
  tbl %>%
  group_by(FL_DATE, ORIGIN_AIRPORT_ID) %>%
  summarise(N_FLIGHTS = sum(N_FLIGHTS), N_CANCELATIONS = sum(CANCELLED))%>%
  mutate(FL_DATE = yearmonth(FL_DATE)) %>%
  group_by(FL_DATE, ORIGIN_AIRPORT_ID) %>%
  summarise(N_FLIGHTS = sum(N_FLIGHTS), N_CANCELATIONS = sum(N_CANCELATIONS)) %>%
  merge(airport_id, by.x = "ORIGIN_AIRPORT_ID", by.y = "Code")



#12892
df_monthly %>%
  filter(str_detect(Description, 'CA')) %>%
  group_by(ORIGIN_AIRPORT_ID) %>%
  summarise(N_FLIGHTS = sum(N_FLIGHTS)) %>%
  arrange(desc(N_FLIGHTS)) %>%
  head(1) %>%
  select(ORIGIN_AIRPORT_ID)
  

#11298
df_monthly %>%
  filter(str_detect(Description, 'IL')) %>%
  group_by(ORIGIN_AIRPORT_ID) %>%
  summarise(N_FLIGHTS = sum(N_FLIGHTS)) %>%
  arrange(desc(N_FLIGHTS))

#10299
df_monthly %>%
  filter(str_detect(Description, 'AK')) %>%
  group_by(ORIGIN_AIRPORT_ID) %>%
  summarise(N_FLIGHTS = sum(N_FLIGHTS)) %>%
  arrange(desc(N_FLIGHTS))

#12953
df_monthly %>%
  filter(str_detect(Description, 'NY')) %>%
  group_by(ORIGIN_AIRPORT_ID) %>%
  summarise(N_FLIGHTS = sum(N_FLIGHTS)) %>%
  arrange(desc(N_FLIGHTS))

df_monthly <-
  df_monthly %>%
  filter(ORIGIN_AIRPORT_ID %in% c(12892,13930,10299,12953)) %>%
  mutate(CANC_RATE = N_CANCELATIONS / N_FLIGHTS)


write.csv(df_monthly, '../monthly_data.csv', row.names = FALSE)


