
R version 2.15.2 (2012-10-26) -- "Trick or Treat"
Copyright (C) 2012 The R Foundation for Statistical Computing
ISBN 3-900051-07-0
Platform: x86_64-apple-darwin9.8.0/x86_64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[Workspace loaded from ~/.RData]

> View(`L2`)
> MouseMuscle <- read.csv("~/Desktop/ContingencyDataSets-1.csv")
>   View(MouseMuscle)
> College <- read.csv("~/Desktop/College.csv")
>   View(College)
> SocialMobility <- read.csv("~/Desktop/SocialMobility.csv")
>   View(SocialMobility)
> Depression <- read.csv("~/Desktop/Depression.csv")
>   View(Depression)
> Goals <- read.csv("~/Desktop/Goals.csv")
>   View(Goals)
> save.image("~/Desktop/Categorical_Data.RData")
> M <- MouseMuscle
> describie(M)
Error: could not find function "describie"
> Summary(M)
Error in function (classes, fdef, mtable)  : 
  unable to find an inherited method for function ‘Summary’ for signature ‘"data.frame"’
> summary(M)
Count          Tension        Weight     Muscle.Type       Drug    
Min.   : 3.00   Min.   :1.0   Min.   :1.0   Min.   :1.0   Min.   :1.0  
1st Qu.: 9.00   1st Qu.:1.0   1st Qu.:1.0   1st Qu.:1.0   1st Qu.:1.0  
Median :21.00   Median :1.5   Median :1.5   Median :1.5   Median :1.5  
Mean   :18.69   Mean   :1.5   Mean   :1.5   Mean   :1.5   Mean   :1.5  
3rd Qu.:23.00   3rd Qu.:2.0   3rd Qu.:2.0   3rd Qu.:2.0   3rd Qu.:2.0  
Max.   :45.00   Max.   :2.0   Max.   :2.0   Max.   :2.0   Max.   :2.0  
> M$TensionDesc <- ifelse(M$Tension = '1','No', 'Yes')
Error: unexpected '=' in "M$TensionDesc <- ifelse(M$Tension ="
> M$TensionDesc <- ifelse(M$Tension = 1,'No', 'Yes')
Error: unexpected '=' in "M$TensionDesc <- ifelse(M$Tension ="
> M$TensionDesc <- ifelse(M$Tension == 1,'No', 'Yes')
> summary(M)
Count          Tension        Weight     Muscle.Type       Drug     TensionDesc       
Min.   : 3.00   Min.   :1.0   Min.   :1.0   Min.   :1.0   Min.   :1.0   Length:16         
1st Qu.: 9.00   1st Qu.:1.0   1st Qu.:1.0   1st Qu.:1.0   1st Qu.:1.0   Class :character  
Median :21.00   Median :1.5   Median :1.5   Median :1.5   Median :1.5   Mode  :character  
Mean   :18.69   Mean   :1.5   Mean   :1.5   Mean   :1.5   Mean   :1.5                     
3rd Qu.:23.00   3rd Qu.:2.0   3rd Qu.:2.0   3rd Qu.:2.0   3rd Qu.:2.0                     
Max.   :45.00   Max.   :2.0   Max.   :2.0   Max.   :2.0   Max.   :2.0                     
> table(M$Tension, M$TensionDesc)

No Yes
1  8   0
2  0   8
> M$WeightDesc <- ifelse(M$Weight == 1, 'Low', 'High')
> table(M$Weight,M$WeightDesc)

High Low
1    0   8
2    8   0
> M$MuscleTypeDesc <- ifelse(M$MuscleType == 1, Type1, Type2)
Error in `$<-.data.frame`(`*tmp*`, "MuscleTypeDesc", value = logical(0)) : 
  replacement has 0 rows, data has 16
> M$MuscleType
NULL
> M
Count Tension Weight Muscle.Type Drug TensionDesc WeightDesc
1      3       1      1           1    1          No        Low
2     21       1      1           1    2          No        Low
3     23       1      1           2    1          No        Low
4     11       1      1           2    2          No        Low
5     22       1      2           1    1          No       High
6     32       1      2           1    2          No       High
7      4       1      2           2    1          No       High
8     12       1      2           2    2          No       High
9      3       2      1           1    1         Yes        Low
10    10       2      1           1    2         Yes        Low
11    41       2      1           2    1         Yes        Low
12    21       2      1           2    2         Yes        Low
13    45       2      2           1    1         Yes       High
14    23       2      2           1    2         Yes       High
15     6       2      2           2    1         Yes       High
16    22       2      2           2    2         Yes       High
> M$MuscleTypeDesc <- ifelse(M$Muscle.Type == 1, Type1, Type2)
Error in ifelse(M$Muscle.Type == 1, Type1, Type2) : 
  object 'Type1' not found
> M$MuscleTypeDesc <- ifelse(M$Muscle.Type == 1, 'Type1'', 'Type2'')
Error: unexpected string constant in "M$MuscleTypeDesc <- ifelse(M$Muscle.Type == 1, 'Type1'', '"
> M$MuscleTypeDesc <- ifelse(M$MuscleType == 1, 'Type1'', 'Type2'')
Error: unexpected string constant in "M$MuscleTypeDesc <- ifelse(M$MuscleType == 1, 'Type1'', '"
> M$Muscle.Type
[1] 1 1 2 2 1 1 2 2 1 1 2 2 1 1 2 2
> M$MuscleTypeDesc <- ifelse(M$Muscle.Type == '1', 'Type1'', 'Type2'')
Error: unexpected string constant in "M$MuscleTypeDesc <- ifelse(M$Muscle.Type == '1', 'Type1'', '"
> M$MuscleTypeDesc <- ifelse(M$Muscle.Type == '1', 'Type1'', 'Type2)
Error: unexpected string constant in "M$MuscleTypeDesc <- ifelse(M$Muscle.Type == '1', 'Type1'', '"
> M$MuscleTypeDesc <- ifelse(M$Muscle.Type == 1, 'Type1', 'Type2')
> table(M$MuscleTypeDesc, M$MuscleType)

Type1 Type2
Type1     8     0
Type2     0     8
> M
Count Tension Weight Muscle.Type Drug TensionDesc WeightDesc MuscleTypeDesc
1      3       1      1           1    1          No        Low          Type1
2     21       1      1           1    2          No        Low          Type1
3     23       1      1           2    1          No        Low          Type2
4     11       1      1           2    2          No        Low          Type2
5     22       1      2           1    1          No       High          Type1
6     32       1      2           1    2          No       High          Type1
7      4       1      2           2    1          No       High          Type2
8     12       1      2           2    2          No       High          Type2
9      3       2      1           1    1         Yes        Low          Type1
10    10       2      1           1    2         Yes        Low          Type1
11    41       2      1           2    1         Yes        Low          Type2
12    21       2      1           2    2         Yes        Low          Type2
13    45       2      2           1    1         Yes       High          Type1
14    23       2      2           1    2         Yes       High          Type1
15     6       2      2           2    1         Yes       High          Type2
16    22       2      2           2    2         Yes       High          Type2
> M$DrugDesc <- ifelse(M$Drug == 1, 'DrugA', 'DrugB')
> table(M$DrugDesc, M$Drug)

1 2
DrugA 8 0
DrugB 0 8
> M[c(1:3)]
Count Tension Weight
1      3       1      1
2     21       1      1
3     23       1      1
4     11       1      1
5     22       1      2
6     32       1      2
7      4       1      2
8     12       1      2
9      3       2      1
10    10       2      1
11    41       2      1
12    21       2      1
13    45       2      2
14    23       2      2
15     6       2      2
16    22       2      2
> M
Count Tension Weight Muscle.Type Drug TensionDesc WeightDesc MuscleTypeDesc DrugDesc
1      3       1      1           1    1          No        Low          Type1    DrugA
2     21       1      1           1    2          No        Low          Type1    DrugB
3     23       1      1           2    1          No        Low          Type2    DrugA
4     11       1      1           2    2          No        Low          Type2    DrugB
5     22       1      2           1    1          No       High          Type1    DrugA
6     32       1      2           1    2          No       High          Type1    DrugB
7      4       1      2           2    1          No       High          Type2    DrugA
8     12       1      2           2    2          No       High          Type2    DrugB
9      3       2      1           1    1         Yes        Low          Type1    DrugA
10    10       2      1           1    2         Yes        Low          Type1    DrugB
11    41       2      1           2    1         Yes        Low          Type2    DrugA
12    21       2      1           2    2         Yes        Low          Type2    DrugB
13    45       2      2           1    1         Yes       High          Type1    DrugA
14    23       2      2           1    2         Yes       High          Type1    DrugB
15     6       2      2           2    1         Yes       High          Type2    DrugA
16    22       2      2           2    2         Yes       High          Type2    DrugB
> M[c(6:9)]
TensionDesc WeightDesc MuscleTypeDesc DrugDesc
1           No        Low          Type1    DrugA
2           No        Low          Type1    DrugB
3           No        Low          Type2    DrugA
4           No        Low          Type2    DrugB
5           No       High          Type1    DrugA
6           No       High          Type1    DrugB
7           No       High          Type2    DrugA
8           No       High          Type2    DrugB
9          Yes        Low          Type1    DrugA
10         Yes        Low          Type1    DrugB
11         Yes        Low          Type2    DrugA
12         Yes        Low          Type2    DrugB
13         Yes       High          Type1    DrugA
14         Yes       High          Type1    DrugB
15         Yes       High          Type2    DrugA
16         Yes       High          Type2    DrugB
> M1 <- M[c(6:9)]
> M1
TensionDesc WeightDesc MuscleTypeDesc DrugDesc
1           No        Low          Type1    DrugA
2           No        Low          Type1    DrugB
3           No        Low          Type2    DrugA
4           No        Low          Type2    DrugB
5           No       High          Type1    DrugA
6           No       High          Type1    DrugB
7           No       High          Type2    DrugA
8           No       High          Type2    DrugB
9          Yes        Low          Type1    DrugA
10         Yes        Low          Type1    DrugB
11         Yes        Low          Type2    DrugA
12         Yes        Low          Type2    DrugB
13         Yes       High          Type1    DrugA
14         Yes       High          Type1    DrugB
15         Yes       High          Type2    DrugA
16         Yes       High          Type2    DrugB
> mousedata <- M1
> mousedata
TensionDesc WeightDesc MuscleTypeDesc DrugDesc
1           No        Low          Type1    DrugA
2           No        Low          Type1    DrugB
3           No        Low          Type2    DrugA
4           No        Low          Type2    DrugB
5           No       High          Type1    DrugA
6           No       High          Type1    DrugB
7           No       High          Type2    DrugA
8           No       High          Type2    DrugB
9          Yes        Low          Type1    DrugA
10         Yes        Low          Type1    DrugB
11         Yes        Low          Type2    DrugA
12         Yes        Low          Type2    DrugB
13         Yes       High          Type1    DrugA
14         Yes       High          Type1    DrugB
15         Yes       High          Type2    DrugA
16         Yes       High          Type2    DrugB
> M1 <- M[c(1, 6:9)]
> M1
Count TensionDesc WeightDesc MuscleTypeDesc DrugDesc
1      3          No        Low          Type1    DrugA
2     21          No        Low          Type1    DrugB
3     23          No        Low          Type2    DrugA
4     11          No        Low          Type2    DrugB
5     22          No       High          Type1    DrugA
6     32          No       High          Type1    DrugB
7      4          No       High          Type2    DrugA
8     12          No       High          Type2    DrugB
9      3         Yes        Low          Type1    DrugA
10    10         Yes        Low          Type1    DrugB
11    41         Yes        Low          Type2    DrugA
12    21         Yes        Low          Type2    DrugB
13    45         Yes       High          Type1    DrugA
14    23         Yes       High          Type1    DrugB
15     6         Yes       High          Type2    DrugA
16    22         Yes       High          Type2    DrugB
> mousedata <- M1
> mousedata
Count TensionDesc WeightDesc MuscleTypeDesc DrugDesc
1      3          No        Low          Type1    DrugA
2     21          No        Low          Type1    DrugB
3     23          No        Low          Type2    DrugA
4     11          No        Low          Type2    DrugB
5     22          No       High          Type1    DrugA
6     32          No       High          Type1    DrugB
7      4          No       High          Type2    DrugA
8     12          No       High          Type2    DrugB
9      3         Yes        Low          Type1    DrugA
10    10         Yes        Low          Type1    DrugB
11    41         Yes        Low          Type2    DrugA
12    21         Yes        Low          Type2    DrugB
13    45         Yes       High          Type1    DrugA
14    23         Yes       High          Type1    DrugB
15     6         Yes       High          Type2    DrugA
16    22         Yes       High          Type2    DrugB
> View(mousedata)
> save.image("~/Desktop/MouseData.RData")
> rm M
Error: unexpected symbol in "rm M"
> delete M
Error: unexpected symbol in "delete M"
> View(M)
> mousework <- mousedata
> save.image("~/Desktop/MouseData.RData")
> summary(mousework)
Count       TensionDesc         WeightDesc        MuscleTypeDesc       DrugDesc        
Min.   : 3.00   Length:16          Length:16          Length:16          Length:16         
1st Qu.: 9.00   Class :character   Class :character   Class :character   Class :character  
Median :21.00   Mode  :character   Mode  :character   Mode  :character   Mode  :character  
Mean   :18.69                                                                              
3rd Qu.:23.00                                                                              
Max.   :45.00                                                                              
> table(Count,TensionDesc)
Error in table(Count, TensionDesc) : object 'Count' not found
> attach(mousework)
> table(Count,TensionDesc)
TensionDesc
Count No Yes
3   1   1
4   1   0
6   0   1
10  0   1
11  1   0
12  1   0
21  1   1
22  1   1
23  1   1
32  1   0
41  0   1
45  0   1
> table(TensionDesc,Count)
Count
TensionDesc 3 4 6 10 11 12 21 22 23 32 41 45
No  1 1 0  0  1  1  1  1  1  1  0  0
Yes 1 0 1  1  0  0  1  1  1  0  1  1
> xtabs(TensionDesc,Count)
Error in eval(expr, envir, enclos) : object 'No' not found
> xtabs(~Count+TensionDesc)
TensionDesc
Count No Yes
3   1   1
4   1   0
6   0   1
10  0   1
11  1   0
12  1   0
21  1   1
22  1   1
23  1   1
32  1   0
41  0   1
45  0   1
> xtabs(~TensionDesc+Count)
Count
TensionDesc 3 4 6 10 11 12 21 22 23 32 41 45
No  1 1 0  0  1  1  1  1  1  1  0  0
Yes 1 0 1  1  0  0  1  1  1  0  1  1
> xtabs(~TensionDesc,Count)
Error in eval(predvars, data, env) : 
  numeric 'envir' arg not of length one
> xtabs(~Count)
Count
3  4  6 10 11 12 21 22 23 32 41 45 
2  1  1  1  1  1  2  2  2  1  1  1 
> CrossTables(TensionDesc,Count)
Error: could not find function "CrossTables"
> install.packages("gmodel")
Installing package(s) into ‘/Library/Frameworks/R.framework/Versions/2.15/Resources/library’
(as ‘lib’ is unspecified)
Warning in install.packages :
  package ‘gmodel’ is not available (for R version 2.15.2)
> import gmodel
Error: unexpected symbol in "import gmodel"
> library(gmodels)
Error in library(gmodels) : there is no package called ‘gmodels’
> xtabs?
+ 
  + 
  
  > ?xtabs
> xtabs(~Count+TensionDesc)
TensionDesc
Count No Yes
3   1   1
4   1   0
6   0   1
10  0   1
11  1   0
12  1   0
21  1   1
22  1   1
23  1   1
32  1   0
41  0   1
45  0   1
> xtabs(~sum(Count)+TensionDesc)
Error in model.frame.default(formula = ~sum(Count) + TensionDesc) : 
  variable lengths differ (found for 'TensionDesc')
> xtabs(~TensionDesc+Count)
Count
TensionDesc 3 4 6 10 11 12 21 22 23 32 41 45
No  1 1 0  0  1  1  1  1  1  1  0  0
Yes 1 0 1  1  0  0  1  1  1  0  1  1
> xtabs(~TensionDesc+sum(Count))
Error in model.frame.default(formula = ~TensionDesc + sum(Count)) : 
  variable lengths differ (found for 'sum(Count)')
> xtabs(Count ~ TensionDesc)
TensionDesc
No Yes 
128 171 
> xtabs(Count ~ TensionDesc + WeightDesc + MuscleTYpeDesc + DrugDesc)
Error in eval(expr, envir, enclos) : object 'MuscleTYpeDesc' not found
> xtabs(Count ~ TensionDesc + WeightDesc + MuscleTypeDesc + DrugDesc)
, , MuscleTypeDesc = Type1, DrugDesc = DrugA

WeightDesc
TensionDesc High Low
No    22   3
Yes   45   3

, , MuscleTypeDesc = Type2, DrugDesc = DrugA

WeightDesc
TensionDesc High Low
No     4  23
Yes    6  41

, , MuscleTypeDesc = Type1, DrugDesc = DrugB

WeightDesc
TensionDesc High Low
No    32  21
Yes   23  10

, , MuscleTypeDesc = Type2, DrugDesc = DrugB

WeightDesc
TensionDesc High Low
No    12  11
Yes   22  21

> xtabs(Count ~ TensionDesc)
TensionDesc
No Yes 
128 171 
> xtabs(Count ~ TensionDesc+DrugDesc)
DrugDesc
TensionDesc DrugA DrugB
No     52    76
Yes    95    76
> xtd <- xtabs(Count ~ TensionDesc+DrugDesc)
> xtd
DrugDesc
TensionDesc DrugA DrugB
No     52    76
Yes    95    76
> summary(xtd)
Call: xtabs(formula = Count ~ TensionDesc + DrugDesc)
Number of cases in table: 299 
Number of factors: 2 
Test for independence of all factors:
  Chisq = 6.529, df = 1, p-value = 0.01061
> chisq.test(xtd)

Pearson's Chi-squared test with Yates' continuity correction

data:  xtd 
X-squared = 5.9456, df = 1, p-value = 0.01475

> xtabs(Count ~WeightDesc+TensionDesc)
TensionDesc
WeightDesc No Yes
High 70  96
Low  58  75
> xtabs(Count ~WeightDesc+TensionDesc)
TensionDesc
WeightDesc No Yes
High 70  96
Low  58  75
> plot(xtabs(Count ~WeightDesc+TensionDesc))
> plot(xtd)
> xtd
DrugDesc
TensionDesc DrugA DrugB
No     52    76
Yes    95    76
> plot(DrugDesc)
Error in plot.window(...) : need finite 'ylim' values
In addition: Warning messages:
  1: In xy.coords(x, y, xlabel, ylabel, log) : NAs introduced by coercion
2: In min(x) : no non-missing arguments to min; returning Inf
3: In max(x) : no non-missing arguments to max; returning -Inf
> DrugDesc
[1] "DrugA" "DrugB" "DrugA" "DrugB" "DrugA" "DrugB" "DrugA" "DrugB" "DrugA" "DrugB" "DrugA" "DrugB" "DrugA" "DrugB"
[15] "DrugA" "DrugB"
> plot(xtabs(Count~DrugDesc))
> xtabs(Count ~DrugDesc)
DrugDesc
DrugA DrugB 
147   152 
> plot(xtabs(Count ~DrugDesc))
> plot(xtabs(Count ~DrugDesc))
> xtabs(Count ~DrugDesc)
DrugDesc
DrugA DrugB 
147   152 
> barplot(xtabs(Count ~DrugDesc))
> barplot(xtd)
> barplot(xtd, xlabel=TensionDesc)
Warning messages:
  1: In plot.window(xlim, ylim, log = log, ...) :
  "xlabel" is not a graphical parameter
2: In axis(if (horiz) 2 else 1, at = at.l, labels = names.arg, lty = axis.lty,  :
             "xlabel" is not a graphical parameter
           3: In title(main = main, sub = sub, xlab = xlab, ylab = ylab, ...) :
             "xlabel" is not a graphical parameter
           4: In axis(if (horiz) 1 else 2, cex.axis = cex.axis, ...) :
             "xlabel" is not a graphical parameter
           Warning messages:
             1: "xlabel" is not a graphical parameter 
           2: "xlabel" is not a graphical parameter 
           3: "xlabel" is not a graphical parameter 
           4: "xlabel" is not a graphical parameter 
           5: "xlabel" is not a graphical parameter 
           6: "xlabel" is not a graphical parameter 
           7: "xlabel" is not a graphical parameter 
           8: "xlabel" is not a graphical parameter 
           > barplot(xtd, llabel=TensionDesc)
           Warning messages:
             1: In plot.window(xlim, ylim, log = log, ...) :
             "llabel" is not a graphical parameter
           2: In axis(if (horiz) 2 else 1, at = at.l, labels = names.arg, lty = axis.lty,  :
                        "llabel" is not a graphical parameter
                      3: In title(main = main, sub = sub, xlab = xlab, ylab = ylab, ...) :
                        "llabel" is not a graphical parameter
                      4: In axis(if (horiz) 1 else 2, cex.axis = cex.axis, ...) :
                        "llabel" is not a graphical parameter
                      Warning messages:
                        1: "llabel" is not a graphical parameter 
                      2: "llabel" is not a graphical parameter 
                      3: "llabel" is not a graphical parameter 
                      4: "llabel" is not a graphical parameter 
                      5: "llabel" is not a graphical parameter 
                      6: "llabel" is not a graphical parameter 
                      7: "llabel" is not a graphical parameter 
                      8: "llabel" is not a graphical parameter 
                      > barplot(xtd, xlab=TensionDesc)
                      > barplot(xtd, ylab=TensionDesc)
                      > xtab(Count ~TensionDesc+WeightDesc)
                      Error: could not find function "xtab"
                      > xtabs(Count ~TensionDesc+WeightDesc)
                      WeightDesc
                      TensionDesc High Low
                      No    70  58
                      Yes   96  75
                      > summary(xtabs(Count ~TensionDesc+WeightDesc))
                      Call: xtabs(formula = Count ~ TensionDesc + WeightDesc)
                      Number of cases in table: 299 
                      Number of factors: 2 
                      Test for independence of all factors:
                        Chisq = 0.06257, df = 1, p-value = 0.8025
                      > xtab(Count ~TensionDesc+MuscleType)
                      Error: could not find function "xtab"
                      > xtabs(Count ~TensionDesc+MuscleType)
                      Error in eval(expr, envir, enclos) : object 'MuscleType' not found
                      > xtabs(Count ~TensionDesc+MuscleTypeDesc)
                      MuscleTypeDesc
                      TensionDesc Type1 Type2
                      No     78    50
                      Yes    81    90
                      > summary(xtabs(Count ~TensionDesc+MuscleTypeDesc))
                      Call: xtabs(formula = Count ~ TensionDesc + MuscleTypeDesc)
                      Number of cases in table: 299 
                      Number of factors: 2 
                      Test for independence of all factors:
                        Chisq = 5.413, df = 1, p-value = 0.01999
                      > xtabs(Count ~TensionDesc+MuscleTypeDesc+DrugDesc)
                      , , DrugDesc = DrugA
                      
                      MuscleTypeDesc
                      TensionDesc Type1 Type2
                      No     25    27
                      Yes    48    47
                      
                      , , DrugDesc = DrugB
                      
                      MuscleTypeDesc
                      TensionDesc Type1 Type2
                      No     53    23
                      Yes    33    43
                      
                      > summary(xtabs(Count ~TensionDesc+MuscleTypeDesc+DrugDesc))
                      Call: xtabs(formula = Count ~ TensionDesc + MuscleTypeDesc + DrugDesc)
                      Number of cases in table: 299 
                      Number of factors: 3 
                      Test for independence of all factors:
                        Chisq = 19.597, df = 4, p-value = 0.0005996
                      > summary(xtabs(Count ~MuscleTypeDesc+DrugDesc))
                      Call: xtabs(formula = Count ~ MuscleTypeDesc + DrugDesc)
                      Number of cases in table: 299 
                      Number of factors: 2 
                      Test for independence of all factors:
                        Chisq = 1.4368, df = 1, p-value = 0.2307
                      > #There is an interaction between 
                        > xtd
                      DrugDesc
                      TensionDesc DrugA DrugB
                      No     52    76
                      Yes    95    76
                      > 
                        
                        > summary(xtabs(Count ~MuscleTypeDesc+DrugDesc))
                      Call: xtabs(formula = Count ~ MuscleTypeDesc + DrugDesc)
                      Number of cases in table: 299 
                      Number of factors: 2 
                      Test for independence of all factors:
                        Chisq = 1.4368, df = 1, p-value = 0.2307
                      > xtabs(Count ~MuscleTypeDesc+DrugDesc)
                      DrugDesc
                      MuscleTypeDesc DrugA DrugB
                      Type1    73    86
                      Type2    74    66
                      > xtabs(Count ~DrugDesc+MuscleType)
                      Error in eval(expr, envir, enclos) : object 'MuscleType' not found
                      > xtabs(Count ~DrugDesc+MuscleTypeDesc)
                      MuscleTypeDesc
                      DrugDesc Type1 Type2
                      DrugA    73    74
                      DrugB    86    66
                      > xtabs(Count ~TensionDesc+DrugDesc+MuscleTypeDesc)
                      , , MuscleTypeDesc = Type1
                      
                      DrugDesc
                      TensionDesc DrugA DrugB
                      No     25    53
                      Yes    48    33
                      
                      , , MuscleTypeDesc = Type2
                      
                      DrugDesc
                      TensionDesc DrugA DrugB
                      No     27    23
                      Yes    47    43
                      
                      > MT1 <- mousework[MuscleTypeDesc == "Type1"]
                      Error in `[.data.frame`(mousework, MuscleTypeDesc == "Type1") : 
                        undefined columns selected
                      > MT1 <- mousework[c(MuscleTypeDesc == "Type1")]
                      Error in `[.data.frame`(mousework, c(MuscleTypeDesc == "Type1")) : 
                        undefined columns selected
                      > MT1 <- mousework[c(which(MusleTypeDesc == "Type1"))]
                      Error in which(MusleTypeDesc == "Type1") : 
                        object 'MusleTypeDesc' not found
                      > MT1 <- mousework[c(which(MuscleTypeDesc == "Type1"))]
                      Error in `[.data.frame`(mousework, c(which(MuscleTypeDesc == "Type1"))) : 
                        undefined columns selected
                      > MT1 <- mousework[which(MuscleTypeDesc == "Type1")]
                      Error in `[.data.frame`(mousework, which(MuscleTypeDesc == "Type1")) : 
                        undefined columns selected
                      > attach(mousework)
                      The following object(s) are masked from 'mousework (position 3)':
                        
                        Count, DrugDesc, MuscleTypeDesc, TensionDesc, WeightDesc
                      > mousework
                      Count TensionDesc WeightDesc MuscleTypeDesc DrugDesc
                      1      3          No        Low          Type1    DrugA
                      2     21          No        Low          Type1    DrugB
                      3     23          No        Low          Type2    DrugA
                      4     11          No        Low          Type2    DrugB
                      5     22          No       High          Type1    DrugA
                      6     32          No       High          Type1    DrugB
                      7      4          No       High          Type2    DrugA
                      8     12          No       High          Type2    DrugB
                      9      3         Yes        Low          Type1    DrugA
                      10    10         Yes        Low          Type1    DrugB
                      11    41         Yes        Low          Type2    DrugA
                      12    21         Yes        Low          Type2    DrugB
                      13    45         Yes       High          Type1    DrugA
                      14    23         Yes       High          Type1    DrugB
                      15     6         Yes       High          Type2    DrugA
                      16    22         Yes       High          Type2    DrugB
                      > mousework[which(mousework$MuscleTypeDesc = 'Type1')]
                      Error: unexpected '=' in "mousework[which(mousework$MuscleTypeDesc ="
                      > subset(mousework, MuscleTypeDesc == 'Type1')
                      Count TensionDesc WeightDesc MuscleTypeDesc DrugDesc
                      1      3          No        Low          Type1    DrugA
                      2     21          No        Low          Type1    DrugB
                      5     22          No       High          Type1    DrugA
                      6     32          No       High          Type1    DrugB
                      9      3         Yes        Low          Type1    DrugA
                      10    10         Yes        Low          Type1    DrugB
                      13    45         Yes       High          Type1    DrugA
                      14    23         Yes       High          Type1    DrugB
                      > MouseType1 <- subset(mousework, MuscleTypeDesc == 'Type1')
                      > MouseType2 <- subset(mousework, MuscleTypeDesc == 'Type2')
                      > MouseType1
                      Count TensionDesc WeightDesc MuscleTypeDesc DrugDesc
                      1      3          No        Low          Type1    DrugA
                      2     21          No        Low          Type1    DrugB
                      5     22          No       High          Type1    DrugA
                      6     32          No       High          Type1    DrugB
                      9      3         Yes        Low          Type1    DrugA
                      10    10         Yes        Low          Type1    DrugB
                      13    45         Yes       High          Type1    DrugA
                      14    23         Yes       High          Type1    DrugB
                      > MouseType2
                      Count TensionDesc WeightDesc MuscleTypeDesc DrugDesc
                      3     23          No        Low          Type2    DrugA
                      4     11          No        Low          Type2    DrugB
                      7      4          No       High          Type2    DrugA
                      8     12          No       High          Type2    DrugB
                      11    41         Yes        Low          Type2    DrugA
                      12    21         Yes        Low          Type2    DrugB
                      15     6         Yes       High          Type2    DrugA
                      16    22         Yes       High          Type2    DrugB
                      > xtabs(MouseType1)
                      , , MuscleTypeDesc = Type1, DrugDesc = DrugA
                      
                      WeightDesc
                      TensionDesc High Low
                      No    22   3
                      Yes   45   3
                      
                      , , MuscleTypeDesc = Type1, DrugDesc = DrugB
                      
                      WeightDesc
                      TensionDesc High Low
                      No    32  21
                      Yes   23  10
                      
                      > xtabs(Count~MouseType1)
                      Error in model.frame.default(formula = Count ~ MouseType1) : 
                        invalid type (list) for variable 'MouseType1'
                      > attach(MouseType1)
                      The following object(s) are masked from 'mousework (position 3)':
                        
                        Count, DrugDesc, MuscleTypeDesc, TensionDesc, WeightDesc
                      The following object(s) are masked from 'mousework (position 4)':
                        
                        Count, DrugDesc, MuscleTypeDesc, TensionDesc, WeightDesc
                      > xtabs(MouseType1$Count~MouseType1$DrugDesc)
                      MouseType1$DrugDesc
                      DrugA DrugB 
                      73    86 
                      > xtabs(MouseType1$Count~MouseType1$DrugDesc+MouseType1$TensionDesc)
                      MouseType1$TensionDesc
                      MouseType1$DrugDesc No Yes
                      DrugA 25  48
                      DrugB 53  33
                      > summary(xtabs(MouseType1$Count~MouseType1$DrugDesc+MouseType1$TensionDesc))
                      Call: xtabs(formula = MouseType1$Count ~ MouseType1$DrugDesc + MouseType1$TensionDesc)
                      Number of cases in table: 159 
                      Number of factors: 2 
                      Test for independence of all factors:
                        Chisq = 11.845, df = 1, p-value = 0.0005781
                      > summary(xtabs(MouseType2$Count~MouseType2$DrugDesc+MouseType2$TensionDesc))
                      Call: xtabs(formula = MouseType2$Count ~ MouseType2$DrugDesc + MouseType2$TensionDesc)
                      Number of cases in table: 140 
                      Number of factors: 2 
                      Test for independence of all factors:
                        Chisq = 0.04077, df = 1, p-value = 0.84
                      
                      