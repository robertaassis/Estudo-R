# aula 1 e 2 não tiveram código.

# AULA 3 - Variáveis

a <- 10 # cria a e a recebe 10
a

b
b = 10 # cria b e b recebe 10
b
B

c -> 10 # gera erro
10 -> c # possivel; atribiu 10 a c
c -> d # atribiu c a d

a <- 10
b <- 5

c <- a + b

a <- "Heitor"
b <- "Joao"

c <- a +b # string; nao há como somar

# AULA 4 - Funções

c <- c(a,b) # função c atribuida a variavel c
c

?c # help; mostsra como a função pode ser utilizada

c <- c("Heitor", "Joao")
c

a <- c(10,5,15,20)
a

?summary # resumos das variaveis
summary(a)
summary(c)

install.packages("stringr")
library(stringr)


Nome <- "Joao"
Sobrenome <- "Silva"

NomeCompleto <- str_c(Nome, Sobrenome)
NomeCompleto
NomeCompleto <- str_c(Nome, " ", Sobrenome)
NomeCompleto

# AULA 5 - Operadores

5 + 5

10 - 8
 
9/3

4 * 2

4 ** 2 # ambos são potencia
4^2

5 == 6
5 == 5

5 != 6
5 != 5

4>2
4>6

3<2
3<4

4>=5
4>=4

6<=8
6<=5

6==6
7==8 && 6 == 8
6==6 && 7 != 8
5>3 & 5<8

6==6
7==8
6==6 | 7==8

6!=6 | 7==8
5>3 | 5<8

!6==6
!4>2

# AULA 6 - Tipos de dados

Salario <- 3450.89 # numeric
Horas <- 220

SH <- Salario/Horas
SHi <- as.integer(Salario/Horas)
SHi * 5
SHr <- round(Salario/Horas)

Numeros1 <- Salario + Horas
Numeros1

Numeros2 <- c(Salario,Horas)
Numeros2

# AULA 7 - Caracteres na linguagem R

Nome_1 <- "Eduardo Abreu"
Nome_2 <- "Amanda Lopes"
Idade <- "Eduardo tem 25 anos"

Idade <- "25"

Nomes <- Nome_1 + Nome_2 # erro
Nomes <- c(Nome_1,Nome_2)

Nomes
Nomes[1] # posições no vetor
Nomes[2]

# AULA 8 - Armazenamento de fatores

CargaHoraria <- c(220,220,150,100,100)
summary(CargaHoraria) # fica como numeric

CargaHoraria <- as.factor(c(220,220,150,100,100)) # fica como fator
summary(CargaHoraria) 
mode(CargaHoraria) # numeric
class(CargaHoraria) # factor

# AULA 9 - Armazenamento lógico

L1 <- Salario > Horas
L1

L2 <- Salario < Horas
L2

Logico <- TRUE
Logico1 <- "TRUE"
Logico2 <- c(1,TRUE,3)
Logico2

# AULA 10 - Vetores

is.vector(Nomes)
mode(Nomes)

is.vector(Horas)
mode(Horas)

is.vector(L1)
mode(L1)

# AULA 11 - Listas

a <- c(1,2,3,4,5)
b <- c(1,"2",3,4,5)
a
b

is.list(a)
is.list(b)

is.vector(a)
is.vector(b)

b <- list(10,"2",8)
is.list(b)
mode(b)
str(b)

e <- list(c(10,6,51,5),"2",8)
str(e)
e[[1]][1] # 10

# AULA 12 - Matrizes

m <- matrix(1:9, nrow=3)
m
mode(m) # numeric
class(m) # matrix

m[1,3]
m[1,3] <- "a"

mode(m)
m
class(m)

# AULA 13 - Data frames
setwd("C:Users:roberta.carvalho/Documents")

df <-read.csv("DataFrame.csv")

view(df) # analisa
str(df) # tipos de dados
summary(df)

df
df[1]
df$DIA_SEM

col1 <- df[1]
col2 <- df$DIA_SEM

class(df$DIA_SEM)
class(col1)
class(col2)

#excluindo variavel
df$ONIBUS <- NULL

# alterando tipo de variavel dentro de df 
df$UPS
summary(df$UPS)
df$UPS <- as.factor(df$UPS)
df$UPS
summary(df$UPS)

# criando nova variavel dentro de df 
df$Nova <- "a"
class(df$Nova)
df$Nova <- c(2,5,10)
df$Nova <- c(2,5,10,NA,NA,NA,NA,NA,NA)
df$Nova <- NULL
df$Nova <- NA
df$Nova[1:3] <- c(2,5,10)
class(df$Nova)

# AULA 14 - Filtros em variáveis

vogais <- c("a","e", "i", "o", "u")
vogais[3]
vogais[-3]
vogais[3:5]

length(vogais)
vogais[3:length(vogais)]
vogais[(length(vogais)-2):length(vogais)]

a <- 3
b <- 5
vogais[a:b]

vogais[vogais=="e"]
vogais[vogais!="e"]

a <- c(1,2,3,4,5)
a[a>2]
a[a>=2]

# AULA 15 - Filtros em Data Frames

setwd("C:/DidaticaTech")
df <- read.csv("DataFrame.csv")

df[1]
df[1,]

df[1:6]
df[-4]

df[1,1]
df[1,1:6]
df[1,-4]

df[1:3,1:6]
df[-1,-4]
df <- df[c(-3,-4,-5,-6)] # modificando df

df[1,1] #filttando as variaveis
df$DIA_SEM[1]
df$AUTO[2:4]
df[df$UPS==1,]

df <- df[df$UPS==1,]


df1 <- read.csv("DataFrame.csv")
view(df1)
view(df)

# AULA 16 - If, For, While
if(5==5) 6+6

if(5==5) 6+6 else

if(condition){

}

if(condition){
    6+6
} else {
    "condição não atendida"
}

idades <- c(25,30)
nomes <- c("Joao","Caina")
df <- data.frame(nomes,idades)

if (df$idades[df$nomes==”Joao”] > df$idades[df$nomes==”Caina”]){
“Mais velho: Joao”
} else{
“Mais velho: Caina”
}

idades <- c(25,30,24,29,31,12)
nomes <- c("Joao","Caina","Maria","Leo","Lia","Enzo")
df <- data.frame(nomes,idades)

for(i in idades){
    print(i)
}

for

v <- 0

for(i in df$idades){
    if(i>v) {v<-i}
}
df$nomes[df$idades==v]

x <- 0
while(x<20){
    print(x)
    x <- x+1
}

while

x <- 0
cont <- 0
idades100 <- 0

while(x>100){
    cont<-cont+1
    idades100[cont] <- idades[cont]
    x <- x+idades[cont]
}

idades
idades100
sum(idades1000)


# AULA 17 - Funções

a <- c(423,464,69,519,123,258)

x <- 0
for(i in a){
    x <- x +i 
}
print(x)

b <- c(51,36,123,98,23,37,63,3)

x <- 0
for(i in b){
    x <- x +i 
}
print(x)

soma<- funcion(y){
    x<-0
    for(i in y){
        x <- x+i
    }
    print(x)
}

soma(a)
soma(b)

soma2 <- function (y,z){
    x<-0
    c <- 0
    for(i in y){
        c <- c+1
        x <- z[c]+1
        print(x)
    }
}

soma2(a,b)
soma2(b,a)

a+b
sum(a)
sum(b)
