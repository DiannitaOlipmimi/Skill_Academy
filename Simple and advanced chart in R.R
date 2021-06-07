#membuat chart sederhana
library(ggplot2)
library(dplyr)

dataset=read.csv('dataset_new.csv')
dataset

#scatter plot
ggplot(dataset, aes(x = sales, y = profit))
ggplot(dataset, aes(x = sales, y = profit))+ geom_point()
ggplot(dataset, aes(x = sales, y = profit))+ geom_point(colour = 'blue')

#histogram
ggplot(dataset, aes(x = sales)) + geom_histogram()
ggplot(dataset, aes(x = quantity)) + geom_histogram(binwidth = 500)
ggplot(dataset, aes(x = quantity)) + geom_histogram(binwidth = 1)

#barchart
ggplot(dataset, aes(x = segment, y = sales)) + geom_bar(stat='identity')
ggplot(dataset, aes(x = segment, y = sales)) + geom_bar(stat='identity', fill='blue')
ggplot(dataset, aes(x = segment, y = sales)) + geom_bar(stat='identity',
                                                        width = 0.5,
                                                        fill='blue')
ggplot(dataset, aes(x = segment, y = sales)) + geom_bar(stat='identity',
                                                        width = 0.5,
                                                        aes(fill=category))
ggplot(dataset, aes(x = category, y = quantity)) + geom_bar(stat='identity',
                                                        width = 0.5,
                                                        aes(fill=segment))

#pie chart
#total sales per segment
sales_per_segment=dataset %>% group_by(segment) %>% summarise(total_sales = sum(sales))
sales_per_segment

ggplot(sales_per_segment, aes(x = "", y =total_sales, fill = segment)) + 
  geom_bar(stat='identity', width = 1) + coord_polar("y", start = 0)

#line chart, sb x berupa data ordinal
#line chart monthly sales
dataset$order_date = as.Date(dataset$order_date)
dataset$order_month = as.Date(cut(dataset$order_date, breaks='month'))

ggplot(dataset, aes(x=order_month, y=sales)) +
  stat_summary(fun.y = sum,geom='line')

#cara lain
monthly_sales=dataset %>% group_by(order_month) %>% summarise(total_sales = sum(sales))

ggplot(monthly_sales, aes(x=order_month, y=sales)) + geom_line()
ggplot(monthly_sales, aes(x=order_month, y=sales)) + geom_line() +
  geom_point(colour = 'blue')


  library(dplyr)
library(ggplot2)

dataset=read.csv('dataset_new.csv')
dataset

#scatter plot sales dan profit
ggplot(dataset, aes(x=sales, y=profit)) +
  geom_point()

#menambahkan garis regresi
ggplot(dataset, aes(x=sales, y=profit)) +
  geom_point()+
  geom_smooth(method = 'lm')

#menambahlan judul dan subtittle
ggplot(dataset, aes(x=sales, y=profit)) +
  geom_point()+
  geom_smooth(method = 'lm')+
  labs(tittle='Scatterplot Sales vs Profit',
       subtitle='based on dataset superstor',
       caption='R language tutorial') +
  xlab("Order sales")+
  ylab("order_profit")

#mengubah range atau limit
plot1=ggplot(dataset, aes(x=sales, y=profit)) +
  geom_point()+
  geom_smooth(method = 'lm')+
  labs(tittle='Scatterplot Sales vs Profit',
       subtitle='based on dataset superstor',
       caption='R language tutorial') +
  xlab("Order sales") +
  ylab("order_profit") +
  xlim(c(0,7500)) +
  ylim(c(-2500,500))

plot1

plot2 = plot1 +   xlab("Order sales") +
  ylab("order_profit") +
  xlim(c(0,7500)) +
  ylim(c(-2500,500))

plot2

#mengubah warna dan ukuran
plot3=ggplot(dataset, aes(x=sales, y=profit)) +
  geom_point(colour = '#c4bda9')+
  geom_smooth(method = 'lm')+
  labs(tittle='Scatterplot Sales vs Profit',
       subtitle='based on dataset superstor',
       caption='R language tutorial') +
  xlab("Order sales") +
  ylab("order_profit") +
  xlim(c(0,7500)) +
  ylim(c(-2500,500))

plot3

plot4=ggplot(dataset, aes(x=sales, y=profit)) +
  geom_point(aes(color = category))+
  geom_smooth(method = 'lm')+
  labs(tittle='Scatterplot Sales vs Profit',
       subtitle='based on dataset superstor',
       caption='R language tutorial') +
  xlab("Order sales") +
  ylab("order_profit") +
  xlim(c(0,7500)) +
  ylim(c(-2500,500))

plot4

#mengubah ukuran
plot5=ggplot(dataset, aes(x=sales, y=profit)) +
  geom_point(aes(color = category), size = 5)+
  geom_smooth(method = 'lm')+
  labs(tittle='Scatterplot Sales vs Profit',
       subtitle='based on dataset superstor',
       caption='R language tutorial') +
  xlab("Order sales") +
  ylab("order_profit") +
  xlim(c(0,7500)) +
  ylim(c(-2500,500))

plot5

#mengubah warna garis #8a6c19
plot6=ggplot(dataset, aes(x=sales, y=profit)) +
  geom_point(aes(color = category), size = 5)+
  geom_smooth(method = 'lm', color = '#8a6c19')+
  labs(tittle='Scatterplot Sales vs Profit',
       subtitle='based on dataset superstor',
       caption='R language tutorial') +
  xlab("Order sales") +
  ylab("order_profit") +
  xlim(c(0,7500)) +
  ylim(c(-2500,500))

plot6

#mengubah bentuk garis
plot7=ggplot(dataset, aes(x=sales, y=profit)) +
  geom_point(aes(color = category), size = 5)+
  geom_smooth(method = 'lm', color = '#8a6c19', linetype = 'dashed')+
  labs(tittle='Scatterplot Sales vs Profit',
       subtitle='based on dataset superstor',
       caption='R language tutorial') +
  xlab("Order sales") +
  ylab("order_profit") +
  xlim(c(0,7500)) +
  ylim(c(-2500,500))

plot7

plot7=ggplot(dataset, aes(x=sales, y=profit)) +
  geom_point(aes(color = category), size = 5)+
  geom_smooth(method = 'lm', color = '#8a6c19', linetype = 'dotted')+
  labs(tittle='Scatterplot Sales vs Profit',
       subtitle='based on dataset superstor',
       caption='R language tutorial') +
  xlab("Order sales") +
  ylab("order_profit") +
  xlim(c(0,7500)) +
  ylim(c(-2500,500))

plot7

plot7=ggplot(dataset, aes(x=sales, y=profit)) +
  geom_point(aes(color = category), size = 5)+
  geom_smooth(method = 'lm', color = '#8a6c19', linetype = 'longdash')+
  labs(tittle='Scatterplot Sales vs Profit',
       subtitle='based on dataset superstor',
       caption='R language tutorial') +
  xlab("Order sales") +
  ylab("order_profit") +
  xlim(c(0,7500)) +
  ylim(c(-2500,500))

plot7

plot7=ggplot(dataset, aes(x=sales, y=profit)) +
  geom_point(aes(color = category), size = 5)+
  geom_smooth(method = 'lm', color = '#8a6c19', linetype = 'dotdash')+
  labs(tittle='Scatterplot Sales vs Profit',
       subtitle='based on dataset superstor',
       caption='R language tutorial') +
  xlab("Order sales") +
  ylab("order_profit") +
  xlim(c(0,7500)) +
  ylim(c(-2500,500))

plot7

#mengubah size
plot8=ggplot(dataset, aes(x=sales, y=profit)) +
  geom_point(aes(color = category), size = 5)+
  geom_smooth(method = 'lm', color = '#8a6c19', linetype = 'dotdash', size=1)+
  labs(tittle='Scatterplot Sales vs Profit',
       subtitle='based on dataset superstor',
       caption='R language tutorial') +
  xlab("Order sales") +
  ylab("order_profit") +
  xlim(c(0,7500)) +
  ylim(c(-2500,500))
plot8

#mengubah bentuk simbol di ggplot image dan copy kode shapenya
plot9=ggplot(dataset, aes(x=sales, y=profit)) +
  geom_point(aes(color = category), size = 5, shape=17)+
  geom_smooth(method = 'lm', color = '#8a6c19', linetype = 'dotdash', size=1)+
  labs(tittle='Scatterplot Sales vs Profit',
       subtitle='based on dataset superstor',
       caption='R language tutorial') +
  xlab("Order sales") +
  ylab("order_profit") +
  xlim(c(0,7500)) +
  ylim(c(-2500,500))
plot9

#mengganti warna judul
plot10=ggplot(dataset, aes(x=sales, y=profit)) +
  geom_point(aes(color = category), size = 5, shape=17)+
  geom_smooth(method = 'lm', color = '#8a6c19', linetype = 'dotdash', size=1)+
  labs(tittle='Scatterplot Sales vs Profit',
       subtitle='based on dataset superstor',
       caption='R language tutorial') +
  xlab("Order sales") +
  ylab("order_profit") +
  xlim(c(0,7500)) +
  ylim(c(-2500,500)) +
  theme(
  plot.tittle = element_text(color = 'blue', size = 15, face = 'bold'))
plot10

#memodifikasi legend
plot11=ggplot(dataset, aes(x=sales, y=profit)) +
  geom_point(aes(color = category), size = 5, shape=17)+
  geom_smooth(method = 'lm', color = '#8a6c19', linetype = 'dotdash', size=1)+
  labs(tittle='Scatterplot Sales vs Profit',
       subtitle='based on dataset superstor',
       caption='R language tutorial') +
  xlab("Order sales") +
  ylab("order_profit") +
  xlim(c(0,7500)) +
  theme(
    plot.title element_text(color = 'blue', size = 15, face = 'bold'),
    plot.subtitle = element_text(size = 13, face = 'italic'),
    legend.position = 'bottom'
  )
plot11


