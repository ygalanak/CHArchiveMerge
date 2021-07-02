# Comparison
n_incorp <- June2021 %>%
  group_by(as.yearmon(IncorporationDate)) %>%
  count()

n_all <- joined %>%
  group_by(as.yearmon(IncorporationDate)) %>%
  count()
