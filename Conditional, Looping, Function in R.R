#conditional atau percabangan
a = 10
if(a==10){
  print("ini adalah angka 10")
}

b = 6
if(b==10){
  print("ini adalah angka 10")
}else{
  print("ini bukan angka 10")
}

c=5+5
if(b==10){
  print("ini adalah angka 10")
}else{
  print("ini bukan angka 10")
}

d=9
if(d==9){
  print("ini adalah angka 9")
}else if(d>0){
  print("ini angka positif")
}

e=7
if(e==9){
  print("ini adalah angka 9")
}else if(e>0){
  print("ini angka positif")
}

f=-7
if(f==9){
  print("ini adalah angka 9")
}else if(f>0){
  print("ini angka positif")
}else{
  print("bukan angka positif")
}

#looping atau perulangan menggunakan while dan for
i=1
while(i<10){
  print("halo")
  i=i+1
}

i=1
while(i<10){
  print(i)
  i=i+1
}

i=1
while(i<10){
  print(i*2)
  i=i+1
}

#for untuk vector(deret nilai dengan data type yang sama)
for(i in 1:10){
  print(i)
}

names=c("Adi","Budi","Cindi","Dedi")
names
for(i in names){
  print(paste("halo",i))
}

#membuat function menghitung luas lingkaran
luas.lingkaran=function(r){
  pi=3.14
  luas=pi*r^2
  return(luas)
}

luas.lingkaran(10)

#membuat function menghitung luas segitiga
luas.segitiga=function(alas,tinggi){
  return((alas*tinggi)/2)
}

luas.segitiga(2,3)

hw=function(){
  print("Hello Wordl")
}

hw()

lima=function(){
  return(5)
}

lima()

berhitung=function(n){
  for(i in 1:n)
    print(i)
}

berhitung(12)
