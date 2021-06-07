#data structure vector
names=c("Adi","Budi","Cindi","Dedi")
names[1]
names[3]
names[2:4]
names[c(1,3)]

#factor, mirip vector dan ditambah distinct value
factor(names)
factor(c("male","female","female","male","male"))

#matrix, seperti vector namun 2 dimensi(baris,kolom)
m=matrix(1:12,nrow = 3)
m

m[4]
m[2,3]

#array, lebih dari 2 dimensi
a=array(1:24,c(3,4,2))
a

a[1,3,1]

#data frame, seperti tabel
users=data.frame(
  names=c("Adi","Budi","Cindi","Dedi"),
  gender=c("male","male","female","male"),
  age=c(10,20,30,40)
)

users

users[1]
users[2]
users["names"]
users[c("names","age")]
users[2,]
users[2:3,1]

#list, tipe data bisa beda termasuk list itu sendiri
l=list(a,names,users)
l



