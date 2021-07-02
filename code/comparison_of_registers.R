# ---
# Companies House Archive Merge
# Output: Comparison of registers
# Y. Galanakis; <i.galanakis@kent.ac.uk>
# ---


# Comparison ----
# Register of live firms as released in June 2021
n_incorp <- June2021 %>%
  group_by(as.yearmon(IncorporationDate)) %>%
  count()

# Combined registers of CH archives
n_all <- joined %>%
  group_by(as.yearmon(IncorporationDate)) %>%
  count()
