 C <- College
C

 
 C$SEX[C$SEX == 1] <- "Male"
 C$SEX[C$SEX == 2] <- "Female"
 View(C)
 
 
 C$IQ[C$IQ == 1] <- "High"
 C$IQ[C$IQ == 2] <- "Medium High"
 C$IQ[C$IQ == 3] <- "Medium Low"
 C$IQ[C$IQ == 4] <- "Low"
 
 
 C$PLANS[C$PLANS == 1] <- "Plans to attend college"
 C$PLANS[C$PLANS == 2] <- "No"
 C$PARENT[C$PARENT == 1] <- "Low Parental Encouragment"
 C$PARENT[C$PARENT == 2] <- "High"
 
 
 C$SES1[C$SES == 'High Class'] <- "Upper Class"
 C$SES1[C$SES == 'Upper Middle Class'] <- "Upper Class"
 C$SES1[C$SES == 'Lower Middle Class'] <- "Lower Class"
 C$SES1[C$SES == 'Lower Class'] <- "Lower Class"
 
 View(C)
 
 x = xtabs(COUNT ~ SES + IQ + SEX + PLANS + PARENT, data=C)
 View(x)
 
 ll = loglm(~SES*PLANS*PARENT*IQ*SEX, data=x)
 
step(ll)
 
 
 
 
 