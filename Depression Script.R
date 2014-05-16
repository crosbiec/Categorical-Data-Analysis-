View(Depression)
D <- Depression

D[1,]

unique(D$Diagnosis)

#after looking ath the unique data, am chaning the values from the Exce.
D$Diagnosis[D$Diagnosis == 0] <- "Severe"
D$Diagnosis[D$Diagnosis == 1] <- "Mild"

unique(D$Treatment)
D$Treatment[D$Treatment == 0] <- "Standard"
D$Treatment[D$Treatment == 1] <- "New"

unique(D$Outcome)
D$Outcome[D$Outcome == 0] <- "Abnormal"
D$Outcome[D$Outcome == 1] <- "Normal"

D0 = subset( D, Time == 0)
D1 = subset( D, Time == 1)
D2 = subset( D, Time == 2)

DFull <- merge(D0,D1, by = "Case")
head(DFull)

cols <- c("Case", "Diagnosis.0", "Treatment.0", "Time.0", "Outcome.0", "Diagnosis.1", "Treatment.1", "Time.1", "Outcome.1")
#, "Diagnosis.2", "Treatment.2", "Time.2", "Outcome.2")
cols
DFull_CP <- DFull

colnames(DFull_CP) <- cols
View(DFull_CP)

DFull_CP <- merge(DFull_CP, D2, by='Case')
head(DFull_CP)

DFull <- DFull_CP

cols <- c("Case", "Diagnosis.0", "Treatment.0", "Time.0", "Outcome.0", "Diagnosis.1", "Treatment.1", "Time.1", "Outcome.1", "Diagnosis.2", "Treatment.2", "Time.2", "Outcome.2")

colnames(DFull_CP) <- cols
View(DFull_CP)


DFull_CP$Time.0 <- NULL
DFull_CP$Time.1 <- NULL
DFull_CP$Time.2 <- NULL


head(DFull_CP)


###Diagnosis never changes
subset(DFull_CP, Diagnosis.0 != Diagnosis.2)
[1] Case        Diagnosis.0 Treatment.0 Outcome.0   Diagnosis.1 Treatment.1 Outcome.1   Diagnosis.2
[9] Treatment.2 Outcome.2  
<0 rows> (or 0-length row.names)
> subset(DFull_CP, Diagnosis.0 != Diagnosis.1)
[1] Case        Diagnosis.0 Treatment.0 Outcome.0   Diagnosis.1 Treatment.1 Outcome.1   Diagnosis.2
[9] Treatment.2 Outcome.2  
###########

DFull_CP$Diagnosis = DFull_CP$Diagnosis.0


View(DFull_CP)

DFull_CP$Diagnosis.0 <- NULL
DFull_CP$Diagnosis.1 <- NULL
DFull_CP$Diagnosis.2 <- NULL

##Treatment never changes
xx <- subset(DFull_CP, Treatment.0 != Treatment.2)
xx

DFull_CP$Treatment <- DFull_CP$Treatment.0
View(DFull_CP)

DFull_CP$Treatment.0 <- NULL
DFull_CP$Treatment.1 <- NULL
DFull_CP$Treatment.2 <- NULL

head(DFull_CP)

DFChOut <- subset(DFull_CP, Outcome.0 != Outcome.2)
View(DFCh)

head(DFChOut)
OutCh_MildDiagnosis_GivenNew <- xtabs(~ Diagnosis + Treatment, data=DFChOut)
OutCh_MildDiagnosis_GivenNew
plot(OutCh_MildDiagnosis_GivenNew)

OutCh_Ab2Nor <- subset(DFChOut, Outcome.0 == 'Abnormal' && Outcome.2 == 'Normal')
OutCh_Ab2Nor
##THis never happens. 


xy <- xtabs(~Diagnosis + Treatment, data=OutCh_Nor2Ab)
plot(xy)
## xy shows normal to abnormal. 
## no one went from abnormal to normal
##xy = those who went from normal to abnormal outcomes where given the 
#new treatment in severe cases















