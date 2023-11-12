
# Sanni Variskallio
# 02.11.2023
# Exercise 2


learning14 <- read.csv("https://www.mv.helsinki.fi/home/kvehkala/JYTmooc/JYTOPKYS3-data.txt", header = TRUE, sep = "\t")
dim(learning14)
# data set has 183 rows and 60 columns

# create attitude variable
learning14$attitude <- with(learning14, Da+Db+Dc+Dd+De+Df+Dg+Dh+Di+Dj)

# create seeking meaning variable 
learning14$d_sm <- with(learning14, D03+D11+D19+D27)

# create relating ideas variable
learning14$d_ri <- with(learning14, D07+D14+D22+D30)

# create use of evidence variable
learning14$d_ue <- with(learning14, D06+D15+D23+D31)

# create deep variable by combining the three above variables
learning14$deep <- with(learning14, d_sm+d_ri+d_ue)

# create lack of purpose variable
learning14$su_lp <- with(learning14, SU02+SU10+SU18+SU26)

# create unrelated memorising variable
learning14$su_um <- with(learning14, SU05+SU13+SU21+SU29)

# create Syllabus-boundness  variable
learning14$su_sb <- with(learning14, SU08+SU16+SU24+SU32)

# create surf variable by combining three above variables
learning14$surf <- with(learning14, su_lp+su_um+su_sb)

# create Organized Studying variable 
learning14$st_os <- with(learning14, ST01+ST09+ST17+ST25)

# create Time Management variable
learning14$st_tm <- with(learning14, ST04+ST12+ST20+ST28)

# create Stra variable by combining the three above variables
learning14$stra <- with(learning14, st_os+st_tm)

# create gender, age and points variables
learning14$gender <- learning14$Gender
learning14$age <- learning14$Age
learning14$points <- learning14$Points

# remove rows with zero points
learning14 <- learning14[!(learning14$points==0),]

# keep only the seven variables
learning14 <- select(learning14, c('gender','age','attitude', 'stra', 'deep', 'surf', 'points'))

# set working directory 
setwd("C:/Users/User/Desktop/IODS/IODS-project")

# save learning2014 data set
write.csv(learning14, "C:/Users/User/Desktop/IODS/IODS-project/data/learning2014.csv", row.names = F)

# read in data 
learning14_new <- read.csv("C:/Users/User/Desktop/IODS/IODS-project/data/learning2014.csv", header = TRUE, sep = ",")
head(learning14_new)

