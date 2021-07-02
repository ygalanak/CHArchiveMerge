###
# Merge registers of CH archive registers
# Y. Galanakis; i.galanakis@kent.ac.uk
# Outputs: attempt of to merge the latest registers until June 2021
###

# Libraries ----
packages <- c('tidyverse', 'naniar', 'haven', 'survey',
              'data.table', 'lubridate', 'ggalt', 'cowplot','animation',
              'patchwork', 'sp', 'scales', 'raster', 'rgeos', 'mapproj',
              'rgdal', 'maptools', 'emojifont', 'nord', 'paletteer', 'plotly')
pkg_notinstall <-  packages[!(packages %in% installed.packages()[,"Package"])]

lapply(pkg_notinstall, install.packages, dependencies = TRUE)
lapply(packages, library, character.only = TRUE)

# JUNE 2021 ----
# Create a temp. file
temp <- tempfile()
# Use `download.file()` to fetch the file into the temp. file
download.file("http://download.companieshouse.gov.uk/BasicCompanyDataAsOneFile-2021-06-01.zip",temp)
# Use unz() to extract the target file from temp. file
June2021<- read_csv(unz(temp, "BasicCompanyDataAsOneFile-2021-06-01.csv"))
# Remove the temp file via 'unlink()'
unlink(temp)
# Make incorporation date as date format.
June2021$IncorporationDate <- as.Date(June2021$IncorporationDate, "%d/%m/%Y")

# April 2021 ----
# Create a temp. file
temp <- tempfile()
# Use `download.file()` to fetch the file into the temp. file
download.file("https://webarchive.nationalarchives.gov.uk/20210401103548/http://download.companieshouse.gov.uk/BasicCompanyDataAsOneFile-2021-04-01.zip",temp)
# Use unz() to extract the target file from temp. file
Apr2021<- read_csv(unz(temp, "BasicCompanyDataAsOneFile-2021-04-01.csv"))
# Remove the temp file via 'unlink()'
unlink(temp)
# Make incorporation date as date format.
Apr2021$IncorporationDate <- as.Date(Apr2021$IncorporationDate, "%d/%m/%Y")

joined <- full_join(June2021, Apr2021)


# March 2021 ----
# Create a temp. file
temp <- tempfile()
# Use `download.file()` to fetch the file into the temp. file
download.file("https://webarchive.nationalarchives.gov.uk/20210301113308/https://download.companieshouse.gov.uk/BasicCompanyDataAsOneFile-2021-03-01.zip",temp)
# Use unz() to extract the target file from temp. file
Mar2021<- read_csv(unz(temp, "BasicCompanyDataAsOneFile-2021-03-01.csv"))
# Remove the temp file via 'unlink()'
unlink(temp)
# Make incorporation date as date format.
Mar2021$IncorporationDate <- as.Date(Mar2021$IncorporationDate, "%d/%m/%Y")

joined <- full_join(joined, Mar2021)

# Feb 2021 ----
# Create a temp. file
temp <- tempfile()
# Use `download.file()` to fetch the file into the temp. file
download.file("https://webarchive.nationalarchives.gov.uk/20210201164448/http://download.companieshouse.gov.uk/BasicCompanyDataAsOneFile-2021-02-01.zip",temp)
# Use unz() to extract the target file from temp. file
Feb2021<- read_csv(unz(temp, "BasicCompanyDataAsOneFile-2021-02-01.csv"))
# Remove the temp file via 'unlink()'
unlink(temp)
# Make incorporation date as date format.
Feb2021$IncorporationDate <- as.Date(Feb2021$IncorporationDate, "%d/%m/%Y")

joined <- full_join(joined, Feb2021)

# Jan 2021 ----
# Create a temp. file
temp <- tempfile()
# Use `download.file()` to fetch the file into the temp. file
download.file("https://webarchive.nationalarchives.gov.uk/20210104110016/http://download.companieshouse.gov.uk/BasicCompanyDataAsOneFile-2021-01-01.zip",temp)
# Use unz() to extract the target file from temp. file
Jan2021<- read_csv(unz(temp, "BasicCompanyDataAsOneFile-2021-01-01.csv"))
# Remove the temp file via 'unlink()'
unlink(temp)
# Make incorporation date as date format.
Jan2021$IncorporationDate <- as.Date(Jan2021$IncorporationDate, "%d/%m/%Y")

joined <- full_join(joined, Jan2021)
joined2021 <- joined 

# Dec 2020 ----
# Create a temp. file
temp <- tempfile()
# Use `download.file()` to fetch the file into the temp. file
download.file("https://webarchive.nationalarchives.gov.uk/20201201111353/http://download.companieshouse.gov.uk/BasicCompanyDataAsOneFile-2020-12-01.zip",temp)
# Use unz() to extract the target file from temp. file
Dec2020<- read_csv(unz(temp, "BasicCompanyDataAsOneFile-2020-12-01.csv"))
# Remove the temp file via 'unlink()'
unlink(temp)
# Make incorporation date as date format.
Dec2020$IncorporationDate <- as.Date(Dec2020$IncorporationDate, "%d/%m/%Y")

joined <- full_join(joined2021, Dec2020)

# Nov 2020 ----
# Create a temp. file
temp <- tempfile()
# Use `download.file()` to fetch the file into the temp. file
download.file("https://webarchive.nationalarchives.gov.uk/20201102110527/http://download.companieshouse.gov.uk/BasicCompanyDataAsOneFile-2020-11-01.zip",temp)
# Use unz() to extract the target file from temp. file
Nov2020<- read_csv(unz(temp, "BasicCompanyDataAsOneFile-2020-11-01.csv"))
# Remove the temp file via 'unlink()'
unlink(temp)
# Make incorporation date as date format.
Nov2020$IncorporationDate <- as.Date(Nov2020$IncorporationDate, "%d/%m/%Y")

joined <- full_join(joined, Nov2020)

# Oct 2020 ----
# Create a temp. file
temp <- tempfile()
# Use `download.file()` to fetch the file into the temp. file
download.file("https://webarchive.nationalarchives.gov.uk/20201001110505/http://download.companieshouse.gov.uk/BasicCompanyDataAsOneFile-2020-10-01.zip",temp)
# Use unz() to extract the target file from temp. file
Oct2020<- read_csv(unz(temp, "BasicCompanyDataAsOneFile-2020-10-01.csv"))
# Remove the temp file via 'unlink()'
unlink(temp)
# Make incorporation date as date format.
Oct2020$IncorporationDate <- as.Date(Oct2020$IncorporationDate, "%d/%m/%Y")

joined <- full_join(joined, Oct2020)

# Sept 2020 ----
# Create a temp. file
temp <- tempfile()
# Use `download.file()` to fetch the file into the temp. file
download.file("https://webarchive.nationalarchives.gov.uk/20200907194634/http://download.companieshouse.gov.uk/BasicCompanyDataAsOneFile-2020-09-01.zip",temp)
# Use unz() to extract the target file from temp. file
Sept2020<- read_csv(unz(temp, "BasicCompanyDataAsOneFile-2020-09-01.csv"))
# Remove the temp file via 'unlink()'
unlink(temp)
# Make incorporation date as date format.
Sept2020$IncorporationDate <- as.Date(Sept2020$IncorporationDate, "%d/%m/%Y")

joined <- full_join(joined, Sept2020)

# Aug 2020 ----
# couldn't be found

# July 2020 ----
# Create a temp. file
temp <- tempfile()
# Use `download.file()` to fetch the file into the temp. file
download.file("https://webarchive.nationalarchives.gov.uk/20200717012047/http://download.companieshouse.gov.uk/BasicCompanyDataAsOneFile-2020-07-01.zip",temp)
# Use unz() to extract the target file from temp. file
Jul2020<- read_csv(unz(temp, "BasicCompanyDataAsOneFile-2020-07-01.csv"))
# Remove the temp file via 'unlink()'
unlink(temp)
# Make incorporation date as date format.
Jul2020$IncorporationDate <- as.Date(Jul2020$IncorporationDate, "%d/%m/%Y")

joined <- full_join(joined, Jul2020)

# June 2020 ----
# Create a temp. file
temp <- tempfile()
# Use `download.file()` to fetch the file into the temp. file
download.file("https://webarchive.nationalarchives.gov.uk/20200625122413/http://download.companieshouse.gov.uk/BasicCompanyDataAsOneFile-2020-06-01.zip",temp)
# Use unz() to extract the target file from temp. file
June2020<- read_csv(unz(temp, "BasicCompanyDataAsOneFile-2020-06-01.csv"))
# Remove the temp file via 'unlink()'
unlink(temp)
# Make incorporation date as date format.
June2020$IncorporationDate <- as.Date(June2020$IncorporationDate, "%d/%m/%Y")

joined <- full_join(joined, June2020)

# May 2020 ----
# couldn't be found

# April 2020 ----
# couldn't be found

# March 2020 ----
# couldn't be found

# Jan 2020 ----
# Create a temp. file
temp <- tempfile()
# Use `download.file()` to fetch the file into the temp. file
download.file("https://webarchive.nationalarchives.gov.uk/20200107095712/http://download.companieshouse.gov.uk/BasicCompanyDataAsOneFile-2020-01-01.zip",temp)
# Use unz() to extract the target file from temp. file
Jan2020<- read_csv(unz(temp, "BasicCompanyDataAsOneFile-2020-01-01.csv"))
# Remove the temp file via 'unlink()'
unlink(temp)
# Make incorporation date as date format.
Jan2020$IncorporationDate <- as.Date(Jan2020$IncorporationDate, "%d/%m/%Y")

joined <- full_join(joined, Jan2020)

# Sept 2019 ----
# Couldn't be found

# July 2019 ----
# Create a temp. file
temp <- tempfile()
# Use `download.file()` to fetch the file into the temp. file
download.file("https://webarchive.nationalarchives.gov.uk/20190701221214/http://download.companieshouse.gov.uk/BasicCompanyDataAsOneFile-2019-07-01.zip",temp)
# Use unz() to extract the target file from temp. file
Jul2019<- read_csv(unz(temp, "BasicCompanyDataAsOneFile-2019-07-01.csv"))
# Remove the temp file via 'unlink()'
unlink(temp)
# Make incorporation date as date format.
Jul2019$IncorporationDate <- as.Date(Jul2019$IncorporationDate, "%d/%m/%Y")

joined <- full_join(joined, Jul2019)

# Jan 2019 ----
# Create a temp. file
temp <- tempfile()
# Use `download.file()` to fetch the file into the temp. file
download.file("https://webarchive.nationalarchives.gov.uk/20190109150348/http://download.companieshouse.gov.uk/BasicCompanyDataAsOneFile-2019-01-01.zip",temp)
# Use unz() to extract the target file from temp. file
Jan2019<- read_csv(unz(temp, "BasicCompanyDataAsOneFile-2019-01-01.csv"))
# Remove the temp file via 'unlink()'
unlink(temp)
# Make incorporation date as date format.
Jan2019$IncorporationDate <- as.Date(Jan2019$IncorporationDate, "%d/%m/%Y")

joinedReduced <- joined[-c(31:55)]
joinedReduced <- full_join(joinedReduced, Jan2019[-c(31:55)])

# Jul 2018 ----
# Create a temp. file
temp <- tempfile()
# Use `download.file()` to fetch the file into the temp. file
download.file("https://webarchive.nationalarchives.gov.uk/20180702143800/http://download.companieshouse.gov.uk/BasicCompanyDataAsOneFile-2018-07-01.zip",temp)
# Use unz() to extract the target file from temp. file
Jul2018<- read_csv(unz(temp, "BasicCompanyDataAsOneFile-2018-07-01.csv"))
# Remove the temp file via 'unlink()'
unlink(temp)
# Make incorporation date as date format.
Jul2018$IncorporationDate <- as.Date(Jul2018$IncorporationDate, "%d/%m/%Y")

joinedReduced <- full_join(joinedReduced, Jul2018[-c(31:55)])
joinedReduced <- joinedReduced[-c(3:4, 11:12, 14, 16:22)]

# Jan 2018 ----
# Create a temp. file
temp <- tempfile()
# Use `download.file()` to fetch the file into the temp. file
download.file("https://webarchive.nationalarchives.gov.uk/20180108150931/http://download.companieshouse.gov.uk/BasicCompanyDataAsOneFile-2018-01-01.zip",temp)
# Use unz() to extract the target file from temp. file
Jan2018<- read_csv(unz(temp, "BasicCompanyDataAsOneFile-2018-01-01.csv"))
# Remove the temp file via 'unlink()'
unlink(temp)
# Make incorporation date as date format.
Jan2018$IncorporationDate <- as.Date(Jan2018$IncorporationDate, "%d/%m/%Y")

joinedReduced <- full_join(joinedReduced, 
                           Jan2018[-c(3:4, 11:12, 14, 16:22,31:55)])

# Aug 2017 ----
# Create a temp. file
temp <- tempfile()
# Use `download.file()` to fetch the file into the temp. file
download.file("https://webarchive.nationalarchives.gov.uk/20170816115520/http://download.companieshouse.gov.uk/BasicCompanyDataAsOneFile-2017-08-01.zip",temp)
# Use unz() to extract the target file from temp. file
Aug2017<- read_csv(unz(temp, "BasicCompanyDataAsOneFile-2017-08-01.csv"))
# Remove the temp file via 'unlink()'
unlink(temp)
# Make incorporation date as date format.
Aug2017$IncorporationDate <- as.Date(Aug2017$IncorporationDate, "%d/%m/%Y")

joinedReduced <- full_join(joinedReduced, 
                           Aug2017[-c(3:4, 11:12, 14, 16:22,31:55)])

# May 2016 ----
# Create a temp. file
temp <- tempfile()
# Use `download.file()` to fetch the file into the temp. file
download.file("https://webarchive.nationalarchives.gov.uk/20160512103453/http://download.companieshouse.gov.uk/BasicCompanyData-2016-05-01-part1_5.zip",temp)
# Use unz() to extract the target file from temp. file
May2016I<- read_csv(unz(temp, "BasicCompanyData-2016-05-01-part1_5.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20160512103453/http://download.companieshouse.gov.uk/BasicCompanyData-2016-05-01-part2_5.zip",temp)
# Use unz() to extract the target file from temp. file
May2016II<- read_csv(unz(temp, "BasicCompanyData-2016-05-01-part2_5.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20160512103453/http://download.companieshouse.gov.uk/BasicCompanyData-2016-05-01-part3_5.zip",temp)
# Use unz() to extract the target file from temp. file
May2016III<- read_csv(unz(temp, "BasicCompanyData-2016-05-01-part3_5.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20160512103453/http://download.companieshouse.gov.uk/BasicCompanyData-2016-05-01-part4_5.zip",temp)
# Use unz() to extract the target file from temp. file
May2016IV<- read_csv(unz(temp, "BasicCompanyData-2016-05-01-part4_5.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20160512103453/http://download.companieshouse.gov.uk/BasicCompanyData-2016-05-01-part5_5.zip",temp)
# Use unz() to extract the target file from temp. file
May2016V<- read_csv(unz(temp, "BasicCompanyData-2016-05-01-part5_5.csv"))
unlink(temp)

May2016 <- rbind(May2016I, May2016II)
May2016 <- rbind(May2016, May2016III)
May2016 <- rbind(May2016, May2016IV)
May2016 <- rbind(May2016, May2016V)

# Make incorporation date as date format.
May2016$IncorporationDate <- as.Date(May2016$IncorporationDate, "%d/%m/%Y")

joinedReduced <- full_join(joinedReduced, 
                           May2016[-c(3:4, 11:12, 14, 16:22,31:53)])



# Dec 2014 ----
# Create a temp. file
temp <- tempfile()
# Use `download.file()` to fetch the file into the temp. file
download.file("https://webarchive.nationalarchives.gov.uk/20141216170551/http://download.companieshouse.gov.uk/BasicCompanyData-2014-12-01-part1_5.zip",temp)
# Use unz() to extract the target file from temp. file
Dec2014I<- read_csv(unz(temp, "BasicCompanyData-2014-12-01-part1_5.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20141216170551/http://download.companieshouse.gov.uk/BasicCompanyData-2014-12-01-part2_5.zip",temp)
# Use unz() to extract the target file from temp. file
Dec2014II<- read_csv(unz(temp, "BasicCompanyData-2014-12-01-part2_5.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20141216170551/http://download.companieshouse.gov.uk/BasicCompanyData-2014-12-01-part3_5.zip",temp)
# Use unz() to extract the target file from temp. file
Dec2014III<- read_csv(unz(temp, "BasicCompanyData-2014-12-01-part3_5.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20141216170551/http://download.companieshouse.gov.uk/BasicCompanyData-2014-12-01-part4_5.zip",temp)
# Use unz() to extract the target file from temp. file
Dec2014IV<- read_csv(unz(temp, "BasicCompanyData-2014-12-01-part4_5.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20141216170551/http://download.companieshouse.gov.uk/BasicCompanyData-2014-12-01-part5_5.zip",temp)
# Use unz() to extract the target file from temp. file
Dec2014V<- read_csv(unz(temp, "BasicCompanyData-2014-12-01-part5_5.csv"))
unlink(temp)

Dec2014 <- rbind(Dec2014I, Dec2014II)
Dec2014 <- rbind(Dec2014, Dec2014III)
Dec2014 <- rbind(Dec2014, Dec2014IV)
Dec2014 <- rbind(Dec2014, Dec2014V)

# Make incorporation date as date format.
Dec2014$IncorporationDate <- as.Date(Dec2014$IncorporationDate, "%d/%m/%Y")

joinedReduced <- full_join(joinedReduced, 
                           Dec2014[-c(3:4, 11:12, 14, 16:22,31:53)])

# Jul 2014 ----
# Create a temp. file
temp <- tempfile()
# Use `download.file()` to fetch the file into the temp. file
download.file("https://webarchive.nationalarchives.gov.uk/20140711135725/http://download.companieshouse.gov.uk/BasicCompanyData-2014-07-01-part1_5.zip",temp)
# Use unz() to extract the target file from temp. file
Jul2014I<- read_csv(unz(temp, "BasicCompanyData-2014-07-01-part1_5.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20140711135725/http://download.companieshouse.gov.uk/BasicCompanyData-2014-07-01-part2_5.zip",temp)
# Use unz() to extract the target file from temp. file
Jul2014II<- read_csv(unz(temp, "BasicCompanyData-2014-07-01-part2_5.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20140711135725/http://download.companieshouse.gov.uk/BasicCompanyData-2014-07-01-part3_5.zip",temp)
# Use unz() to extract the target file from temp. file
Jul2014III<- read_csv(unz(temp, "BasicCompanyData-2014-07-01-part3_5.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20140711135725/http://download.companieshouse.gov.uk/BasicCompanyData-2014-07-01-part4_5.zip",temp)
# Use unz() to extract the target file from temp. file
Jul2014IV<- read_csv(unz(temp, "BasicCompanyData-2014-07-01-part4_5.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20140711135725/http://download.companieshouse.gov.uk/BasicCompanyData-2014-07-01-part5_5.zip",temp)
# Use unz() to extract the target file from temp. file
Jul2014V<- read_csv(unz(temp, "BasicCompanyData-2014-07-01-part5_5.csv"))
unlink(temp)

Jul2014 <- rbind(Jul2014I, Jul2014II)
Jul2014 <- rbind(Jul2014, Jul2014III)
Jul2014 <- rbind(Jul2014, Jul2014IV)
Jul2014 <- rbind(Jul2014, Jul2014V)

# Make incorporation date as date format.
Jul2014$IncorporationDate <- as.Date(Jul2014$IncorporationDate, "%d/%m/%Y")

joinedReduced <- full_join(joinedReduced, 
                           Jul2014[-c(3:4, 11:12, 14, 16:22,31:53)])


# June 2014 ----
# Create a temp. file
temp <- tempfile()
# Use `download.file()` to fetch the file into the temp. file
download.file("https://webarchive.nationalarchives.gov.uk/20140624163950/http://download.companieshouse.gov.uk/BasicCompanyData-2014-06-01-part1_5.zip",temp)
# Use unz() to extract the target file from temp. file
Jun2014I<- read_csv(unz(temp, "BasicCompanyData-2014-06-01-part1_5.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20140624163950/http://download.companieshouse.gov.uk/BasicCompanyData-2014-06-01-part2_5.zip",temp)
# Use unz() to extract the target file from temp. file
Jun2014II<- read_csv(unz(temp, "BasicCompanyData-2014-06-01-part2_5.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20140624163950/http://download.companieshouse.gov.uk/BasicCompanyData-2014-06-01-part3_5.zip",temp)
# Use unz() to extract the target file from temp. file
Jun2014III<- read_csv(unz(temp, "BasicCompanyData-2014-06-01-part3_5.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20140624163950/http://download.companieshouse.gov.uk/BasicCompanyData-2014-06-01-part4_5.zip",temp)
# Use unz() to extract the target file from temp. file
Jun2014IV<- read_csv(unz(temp, "BasicCompanyData-2014-06-01-part4_5.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20140624163950/http://download.companieshouse.gov.uk/BasicCompanyData-2014-06-01-part5_5.zip",temp)
# Use unz() to extract the target file from temp. file
Jun2014V<- read_csv(unz(temp, "BasicCompanyData-2014-06-01-part5_5.csv"))
unlink(temp)

Jun2014 <- rbind(Jun2014I, Jun2014II)
Jun2014 <- rbind(Jun2014, Jun2014III)
Jun2014 <- rbind(Jun2014, Jun2014IV)
Jun2014 <- rbind(Jun2014, Jun2014V)

# Make incorporation date as date format.
Jun2014$IncorporationDate <- as.Date(Jun2014$IncorporationDate, "%d/%m/%Y")

joinedReduced <- full_join(joinedReduced, 
                           Jun2014[-c(3:4, 11:12, 14, 16:22,31:53)])

# Jan 2014 ----
# Create a temp. file
temp <- tempfile()
# Use `download.file()` to fetch the file into the temp. file
download.file("https://webarchive.nationalarchives.gov.uk/20140103084739/http://download.companieshouse.gov.uk/BasicCompanyData-2014-01-01-part1_4.zip",temp)
# Use unz() to extract the target file from temp. file
Jan2014I<- read_csv(unz(temp, "BasicCompanyData-2014-01-01-part1_4.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20140103084739/http://download.companieshouse.gov.uk/BasicCompanyData-2014-01-01-part2_4.zip",temp)
# Use unz() to extract the target file from temp. file
Jan2014II<- read_csv(unz(temp, "BasicCompanyData-2014-01-01-part2_4.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20140103084739/http://download.companieshouse.gov.uk/BasicCompanyData-2014-01-01-part3_4.zip",temp)
# Use unz() to extract the target file from temp. file
Jan2014III<- read_csv(unz(temp, "BasicCompanyData-2014-01-01-part3_4.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20140103084739/http://download.companieshouse.gov.uk/BasicCompanyData-2014-01-01-part4_4.zip",temp)
# Use unz() to extract the target file from temp. file
Jan2014IV<- read_csv(unz(temp, "BasicCompanyData-2014-01-01-part4_4.csv"))
unlink(temp)

Jan2014 <- rbind(Jan2014I, Jan2014II)
Jan2014 <- rbind(Jan2014, Jan2014III)
Jan2014 <- rbind(Jan2014, Jan2014IV)

# Make incorporation date as date format.
Jan2014$IncorporationDate <- as.Date(Jan2014$IncorporationDate, "%d/%m/%Y")

joinedReduced <- full_join(joinedReduced, 
                           Jan2014[-c(3:4, 11:12, 14, 16:22,31:53)])



# Dec 2013 ----
# Create a temp. file
temp <- tempfile()
# Use `download.file()` to fetch the file into the temp. file
download.file("https://webarchive.nationalarchives.gov.uk/20131220195624/http://download.companieshouse.gov.uk/BasicCompanyData-2013-12-01-part1_4.zip",temp)
# Use unz() to extract the target file from temp. file
Dec2013I<- read_csv(unz(temp, "BasicCompanyData-2013-12-01-part1_4.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20131220195624/http://download.companieshouse.gov.uk/BasicCompanyData-2013-12-01-part2_4.zip",temp)
# Use unz() to extract the target file from temp. file
Dec2013II<- read_csv(unz(temp, "BasicCompanyData-2013-12-01-part2_4.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20131220195624/http://download.companieshouse.gov.uk/BasicCompanyData-2013-12-01-part3_4.zip",temp)
# Use unz() to extract the target file from temp. file
Dec2013III<- read_csv(unz(temp, "BasicCompanyData-2013-12-01-part3_4.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20131220195624/http://download.companieshouse.gov.uk/BasicCompanyData-2013-12-01-part4_4.zip",temp)
# Use unz() to extract the target file from temp. file
Dec2013IV<- read_csv(unz(temp, "BasicCompanyData-2013-12-01-part4_4.csv"))
unlink(temp)

Dec2013 <- rbind(Dec2013I, Dec2013II)
Dec2013 <- rbind(Dec2013, Dec2013III)
Dec2013 <- rbind(Dec2013, Dec2013IV)

# Make incorporation date as date format.
Dec2013$IncorporationDate <- as.Date(Dec2013$IncorporationDate, "%d/%m/%Y")

joinedReduced <- full_join(joinedReduced, 
                           Dec2013[-c(3:4, 11:12, 14, 16:22,31:53)])


# July 2013 ----
# Create a temp. file
temp <- tempfile()
# Use `download.file()` to fetch the file into the temp. file
download.file("https://webarchive.nationalarchives.gov.uk/20130703133329/http://download.companieshouse.gov.uk/BasicCompanyData-2013-07-01-part1_4.zip",temp)
# Use unz() to extract the target file from temp. file
Jul2013I<- read_csv(unz(temp, "BasicCompanyData-2013-07-01-part1_4.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20130703133329/http://download.companieshouse.gov.uk/BasicCompanyData-2013-07-01-part2_4.zip",temp)
# Use unz() to extract the target file from temp. file
Jul2013II<- read_csv(unz(temp, "BasicCompanyData-2013-07-01-part2_4.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20130703133329/http://download.companieshouse.gov.uk/BasicCompanyData-2013-07-01-part3_4.zip",temp)
# Use unz() to extract the target file from temp. file
Jul2013III<- read_csv(unz(temp, "BasicCompanyData-2013-07-01-part3_4.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20130703133329/http://download.companieshouse.gov.uk/BasicCompanyData-2013-07-01-part4_4.zip",temp)
# Use unz() to extract the target file from temp. file
Jul2013IV<- read_csv(unz(temp, "BasicCompanyData-2013-07-01-part4_4.csv"))
unlink(temp)

Jul2013 <- rbind(Jul2013I, Jul2013II)
Jul2013 <- rbind(Jul2013, Jul2013III)
Jul2013 <- rbind(Jul2013, Jul2013IV)

# Make incorporation date as date format.
Jul2013$IncorporationDate <- as.Date(Jul2013$IncorporationDate, "%d/%m/%Y")

joinedReduced <- full_join(joinedReduced, 
                           Jul2013[-c(3:4, 11:12, 14, 16:22,31:53)])


# April 2013 ----
# Create a temp. file
temp <- tempfile()
# Use `download.file()` to fetch the file into the temp. file
download.file("https://webarchive.nationalarchives.gov.uk/20130403161558/http://download.companieshouse.gov.uk/BasicCompanyData-2013-04-01-part1_4.zip",temp)
# Use unz() to extract the target file from temp. file
Apr2013I<- read_csv(unz(temp, "BasicCompanyData-2013-04-01-part1_4.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20130403161558/http://download.companieshouse.gov.uk/BasicCompanyData-2013-04-01-part2_4.zip",temp)
# Use unz() to extract the target file from temp. file
Apr2013II<- read_csv(unz(temp, "BasicCompanyData-2013-04-01-part2_4.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20130403161558/http://download.companieshouse.gov.uk/BasicCompanyData-2013-04-01-part3_4.zip",temp)
# Use unz() to extract the target file from temp. file
Apr2013III<- read_csv(unz(temp, "BasicCompanyData-2013-04-01-part3_4.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20130403161558/http://download.companieshouse.gov.uk/BasicCompanyData-2013-04-01-part4_4.zip",temp)
# Use unz() to extract the target file from temp. file
Apr2013IV<- read_csv(unz(temp, "BasicCompanyData-2013-04-01-part4_4.csv"))
unlink(temp)

Apr2013 <- rbind(Apr2013I, Apr2013II)
Apr2013 <- rbind(Apr2013, Apr2013III)
Apr2013 <- rbind(Apr2013, Apr2013IV)

# Make incorporation date as date format.
Apr2013$IncorporationDate <- as.Date(Apr2013$IncorporationDate, "%d/%m/%Y")

joinedReduced <- full_join(joinedReduced, 
                           Apr2013[-c(3:4, 11:12, 14, 16:22,31:53)])

# Jan 2013 ----
# Create a temp. file
temp <- tempfile()
# Use `download.file()` to fetch the file into the temp. file
download.file("https://webarchive.nationalarchives.gov.uk/20130103163741/http://download.companieshouse.gov.uk/BasicCompanyData-2013-01-01-part1_4.zip",temp)
# Use unz() to extract the target file from temp. file
Jan2013I<- read_csv(unz(temp, "BasicCompanyData-2013-01-01-part1_4.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20130103163741/http://download.companieshouse.gov.uk/BasicCompanyData-2013-01-01-part2_4.zip",temp)
# Use unz() to extract the target file from temp. file
Jan2013II<- read_csv(unz(temp, "BasicCompanyData-2013-01-01-part2_4.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20130103163741/http://download.companieshouse.gov.uk/BasicCompanyData-2013-01-01-part3_4.zip",temp)
# Use unz() to extract the target file from temp. file
Jan2013III<- read_csv(unz(temp, "BasicCompanyData-2013-01-01-part3_4.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20130103163741/http://download.companieshouse.gov.uk/BasicCompanyData-2013-01-01-part4_4.zip",temp)
# Use unz() to extract the target file from temp. file
Jan2013IV<- read_csv(unz(temp, "BasicCompanyData-2013-01-01-part4_4.csv"))
unlink(temp)

Jan2013 <- rbind(Jan2013I, Jan2013II)
Jan2013 <- rbind(Jan2013, Jan2013III)
Jan2013 <- rbind(Jan2013, Jan2013IV)

# Make incorporation date as date format.
Jan2013$IncorporationDate <- as.Date(Jan2013$IncorporationDate, "%d/%m/%Y")

joinedReduced <- full_join(joinedReduced, 
                           Jan2013[-c(3:4, 11:12, 14, 16:22,31:53)])

# Nov 2012 ----
# Create a temp. file
temp <- tempfile()
# Use `download.file()` to fetch the file into the temp. file
download.file("https://webarchive.nationalarchives.gov.uk/20121128095600/http://download.companieshouse.gov.uk/BasicCompanyData-2012-11-01-part1_4.zip",temp)
# Use unz() to extract the target file from temp. file
Nov2012I<- read_csv(unz(temp, "BasicCompanyData-2012-11-01-part1_4.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20121128095600/http://download.companieshouse.gov.uk/BasicCompanyData-2012-11-01-part2_4.zip",temp)
# Use unz() to extract the target file from temp. file
Nov2012II<- read_csv(unz(temp, "BasicCompanyData-2012-11-01-part2_4.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20121128095600/http://download.companieshouse.gov.uk/BasicCompanyData-2012-11-01-part3_4.zip",temp)
# Use unz() to extract the target file from temp. file
Nov2012III<- read_csv(unz(temp, "BasicCompanyData-2012-11-01-part3_4.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20121128095600/http://download.companieshouse.gov.uk/BasicCompanyData-2012-11-01-part4_4.zip",temp)
# Use unz() to extract the target file from temp. file
Nov2012IV<- read_csv(unz(temp, "BasicCompanyData-2012-11-01-part4_4.csv"))
unlink(temp)

Nov2012 <- rbind(Nov2012I, Nov2012II)
Nov2012 <- rbind(Nov2012, Nov2012III)
Nov2012 <- rbind(Nov2012, Nov2012IV)

# Make incorporation date as date format.
Nov2012$IncorporationDate <- as.Date(Nov2012$IncorporationDate, "%d/%m/%Y")

joinedReduced <- full_join(joinedReduced, 
                           Nov2012[-c(3:4, 11:12, 14, 16:22,31:53)])

# Oct 2012 ----
# Create a temp. file
temp <- tempfile()
# Use `download.file()` to fetch the file into the temp. file
download.file("https://webarchive.nationalarchives.gov.uk/20121021121523/http://download.companieshouse.gov.uk/BasicCompanyData-2012-10-01-part1_4.zip",temp)
# Use unz() to extract the target file from temp. file
Oct2012I<- read_csv(unz(temp, "BasicCompanyData-2012-10-01-part1_4.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20121021121523/http://download.companieshouse.gov.uk/BasicCompanyData-2012-10-01-part2_4.zip",temp)
# Use unz() to extract the target file from temp. file
Oct2012II<- read_csv(unz(temp, "BasicCompanyData-2012-10-01-part2_4.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20121021121523/http://download.companieshouse.gov.uk/BasicCompanyData-2012-10-01-part3_4.zip",temp)
# Use unz() to extract the target file from temp. file
Oct2012III<- read_csv(unz(temp, "BasicCompanyData-2012-10-01-part3_4.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20121021121523/http://download.companieshouse.gov.uk/BasicCompanyData-2012-10-01-part4_4.zip",temp)
# Use unz() to extract the target file from temp. file
Oct2012IV<- read_csv(unz(temp, "BasicCompanyData-2012-10-01-part4_4.csv"))
unlink(temp)

Oct2012 <- rbind(Oct2012I, Oct2012II)
Oct2012 <- rbind(Oct2012, Oct2012III)
Oct2012 <- rbind(Oct2012, Oct2012IV)

# Make incorporation date as date format.
Oct2012$IncorporationDate <- as.Date(Oct2012$IncorporationDate, "%d/%m/%Y")

joinedReduced <- full_join(joinedReduced, 
                           Oct2012[-c(3:4, 11:12, 14, 16:22,31:53)])
# Aug 2012 ----
# Create a temp. file
temp <- tempfile()
# Use `download.file()` to fetch the file into the temp. file
download.file("https://webarchive.nationalarchives.gov.uk/20120817003334/http://download.companieshouse.gov.uk/BasicCompanyData-2012-08-01-part1_4.zip",temp)
# Use unz() to extract the target file from temp. file
Aug2012I<- read_csv(unz(temp, "BasicCompanyData-2012-08-01-part1_4.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20120817003334/http://download.companieshouse.gov.uk/BasicCompanyData-2012-08-01-part2_4.zip",temp)
# Use unz() to extract the target file from temp. file
Aug2012II<- read_csv(unz(temp, "BasicCompanyData-2012-08-01-part2_4.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20120817003334/http://download.companieshouse.gov.uk/BasicCompanyData-2012-08-01-part3_4.zip",temp)
# Use unz() to extract the target file from temp. file
Aug2012III<- read_csv(unz(temp, "BasicCompanyData-2012-08-01-part3_4.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20120817003334/http://download.companieshouse.gov.uk/BasicCompanyData-2012-08-01-part4_4.zip",temp)
# Use unz() to extract the target file from temp. file
Aug2012IV<- read_csv(unz(temp, "BasicCompanyData-2012-08-01-part4_4.csv"))
unlink(temp)

Aug2012 <- rbind(Aug2012I, Aug2012II)
Aug2012 <- rbind(Aug2012, Aug2012III)
Aug2012 <- rbind(Aug2012, Aug2012IV)

# Make incorporation date as date format.
Aug2012$IncorporationDate <- as.Date(Aug2012$IncorporationDate, "%d/%m/%Y")

joinedReduced <- full_join(joinedReduced, 
                           Aug2012[-c(3:4, 11:12, 14, 16:22,31:53)])

# Jul 2012 ----
# Create a temp. file
temp <- tempfile()
# Use `download.file()` to fetch the file into the temp. file
download.file("https://webarchive.nationalarchives.gov.uk/20120708161953/http://download.companieshouse.gov.uk/BasicCompanyData-2012-07-01-part1_4.zip",temp)
# Use unz() to extract the target file from temp. file
Jul2012I<- read_csv(unz(temp, "BasicCompanyData-2012-07-01-part1_4.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20120708161953/http://download.companieshouse.gov.uk/BasicCompanyData-2012-07-01-part2_4.zip",temp)
# Use unz() to extract the target file from temp. file
Jul2012II<- read_csv(unz(temp, "BasicCompanyData-2012-07-01-part2_4.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20120708161953/http://download.companieshouse.gov.uk/BasicCompanyData-2012-07-01-part3_4.zip",temp)
# Use unz() to extract the target file from temp. file
Jul2012III<- read_csv(unz(temp, "BasicCompanyData-2012-07-01-part3_4.csv"))
unlink(temp)

download.file("https://webarchive.nationalarchives.gov.uk/20120708161953/http://download.companieshouse.gov.uk/BasicCompanyData-2012-07-01-part4_4.zip",temp)
# Use unz() to extract the target file from temp. file
Jul2012IV<- read_csv(unz(temp, "BasicCompanyData-2012-07-01-part4_4.csv"))
unlink(temp)

Jul2012 <- rbind(Jul2012I, Jul2012II)
Jul2012 <- rbind(Jul2012, Jul2012III)
Jul2012 <- rbind(Jul2012, Jul2012IV)

# Make incorporation date as date format.
Jul2012$IncorporationDate <- as.Date(Jul2012$IncorporationDate, "%d/%m/%Y")

joinedReduced <- full_join(joinedReduced, 
                           Jul2012[-c(3:4, 11:12, 14, 16:22,31:53)])

# save ----
library(data.table)
fwrite(joinedReduced, "BasicCompanyData-2012_2021.csv")
# save it in zip
library(R.utils)
gzip('BasicCompanyData-2012_2021.csv',destname='BasicCompanyData-2012_2021.csv.gz')
