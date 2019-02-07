# Introduction to R assignment

setwd("C:\\Git\\Indroduction_to_R")

# 1. Create a data frame named customer_details, with 3 rows and 4 columns 
#    and following values:

Name = c("Ramya","Ali","Jim")
Age= c(25,30,35)
Telephone_bill_rs=c(600,400,200)
Month = c("Aug","Aug","Aug")

customer_details<- data.frame(Name,Age,Telephone_bill_rs,Month,
                              stringsAsFactors = FALSE)
customer_details

#2. This question is related to creating lists. Write code for following steps :
#  a) Create a list called names, include following attributes in this list :

#a. last_name: Potter, Riddle, Dumbledore
#b. first_name: Harry, Tom, Albus
#c. age: 18,50,120
#d. profession: Student, Magician, Headmaster

names<- list(last_name=c("Potter", "Riddle", "Dumbledore"),
             first_name=c("Harry", "Tom", "Albus"),
             age=c(18,50,120),
             profession=c("Student", "Magician", "Headmaster"))


names

# b) How will you display all the values in attribute last_name?
names$last_name[1:3]

# c) How will you display the 3rd element of attribute age?
names$age[3]

#3. Write code for the following steps :
#  a) Load the package ggplot2 into the workspace

library(ggplot2)

#b) Load the data msleep into the workspace. To know more about this dataset, 
#run the command ?msleep

library(datasets)
data(msleep)
head(msleep)

#c) Display all the names of this dataset
names(msleep)

#d) Rename the column vore to type
names(msleep)[3]<-"type"
names(msleep)

#e) Display first ten values in the column type you just created

head(msleep$type,10)

#f) Choose the columns name, genus, type, and sleep_total from the dataset and 
#store it in a new dataset. Save the converted data set in your working directory 
#using write.csv () function.
new_dataset<- msleep[,c('name', 'genus', 'type','sleep_total')]
write.csv(new_dataset,"new_dataset.csv",row.names = FALSE)

#4. This Question is to get you comfortable with reading excel workbook 
# and worksheets.
#Follow the steps as mentioned below :
# a) Load the package readxl to read excel files
library(readxl)

# b) Read the two worksheets data1 and data2 separately into two data frames

# Load the workbook
wb<- read_excel("retail.xlsx")
# Get sheet names in excel
excel_sheets("retail.xlsx")
# Import the worksheet by name 
data1<- read_excel("retail.xlsx","data1")
head(data1)

data2<-read_excel("retail.xlsx","data2")
head(data2)


