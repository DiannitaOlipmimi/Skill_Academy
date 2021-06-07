#membuat data set
users=data.frame(
  names=c("Adi","Budi","Cindi","Dedi"),
  gender=c("male","male","female","male"),
  age=c(10,20,30,40)
)

#memasukan dataset
dataset <- read_csv("Skill Academy/Programming Foundation for DS/Intorduction to R language/dataset_superstore_simple.csv")
View(dataset)

#operasi tdhp datase
summary(dataset)

#isi kolom atas
head(dataset)
head(dataset,10)
nrow(dataset)
ncol(dataset)

#export
write.csv(dataset,'dataset_new.csv')

#operasi dataframe dengan library dplyr
#dplyr digunakan untuk memanipulasi data
#tidyverse digunakan dataframe datascientist
library(dplyr)
library(tidyverse)

#melihat dataset
glimpse(dataset)

#mengambil beberapa kolom
#function select
select(dataset, order_id)

dataset_result1=select(dataset, c(order_id,order_date,sales))
dataset_result1

#mengambil semua kolom kecuali kolom tertentu
dataset_result2=select(dataset, -c(profit,sub_category))
dataset_result2

select(dataset_result2, c(order_id,sales,customer_id))

#function filter
filter(dataset,segment == 'Consumer')
dataset_result3 = filter(dataset,segment == 'Consumer')
dataset_result3

#filter segment consumer dan profit lebih drai 0
dataset4=filter(dataset,segment == 'Consumer' & profit > 0)
dataset4

#filter segment consumer atau profit lebih drai 0
dataset5=filter(dataset,segment == 'Consumer' | profit > 0)
dataset5

#filter segment tidak sama dengan consumer dan profit lebih drai 0
dataset6=filter(dataset,segment != 'Consumer' & profit > 0)
dataset6

#function mutate
#membuat kolom baru
dataset7=mutate(dataset, avg_price = sales/quantity)
dataset7

#memunculkan hanya kolom avg_price
transmute(dataset, avg_price = sales/quantity)
dataset7$avg_price=transmute(dataset,avg_price = sales/quantity)

#piping, beberapa operasi sekaligus
library(dplyr)
dataset8=filter(dataset, segment == 'Consumer')
dataset9=mutate(dataset, avg_price = sales/quantity)
dataset10=select(dataset9, c(order_id, order_date,sales,avg_price))
dataset10

dataset11= dataset %>% filter(segment == 'Consumer') 
  %>% mutate(avg_price = sales/quantity) 
  %>% select(c(order_id, order_date,sales,avg_price))
dataset11
                                                               