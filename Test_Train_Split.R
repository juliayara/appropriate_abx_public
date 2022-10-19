#File path variable: Input your file path here
abxfile="/Volumes/dmcommon/_DM.Private/CI Program Faculty/+Fellow Franchise/Yarahuan/Protected/Antibiotics.csv"
culturefile="/Volumes/dmcommon/_DM.Private/CI Program Faculty/+Fellow Franchise/Yarahuan/Antibiogram/Automated Algorithm//Positive Blood or Respiratory Cultures with organism.csv"

#Load Datasets
abxdata <- read_csv(abxfile)
csnlistforsample<-unique(abxdata$`Contact Serial Number`)
length(csnlistforsample)
csnlistTRAIN<-sample(csnlistforsample,1000)

#save CSN list as CSV

write.csv(csnlistTRAIN,"/Volumes/dmcommon/_DM.Private/CI Program Faculty/+Fellow Franchise/Yarahuan/Protected/CSNListTRAIN.csv", row.names = FALSE)
