# 3

## 3.1 
x <- 8
if (x <5) print("") else print ("")

if (x >= 5)
  ""
else
  ""

if (x >= 5){
  ""
} else {
  ""
}

x <- 11
if (x <= 5){
  "5"
} else if (x <= 10) {
  "510"
} else {
  "10"
}

x <- 1:10
if (x < 5) print ("X < 5") else print ("x >= 5")

ifelse(x > 5, "YES", "NO")

y <- ifelse(x > 5, 
       {cat("YES"); print (x / 10)},
       {cat ("NO"); print (x * 10)}
)
# 510
y

x <- 2
y <- 3
z <- "*"
switch (z,
        "+" = {print(""); x + y},
        "-" = {print(""); x - y},
        "*" = {print(""); x * y},
        "/" = {print(""); x / y},
        ""
        )

## 3.1.1
# RRStudio
for (i in 1:5){
  cat (i, "\n")
}

for (i in c ("","","","")){
  print (i)
}

x <- 1:100
i <- 0
for (j in x) {
  i <- i + j
}


### 3.1.2
i <- 0
while ( i < 100){
  i <- i+ 1
}

print (i)

### 3.1.2
i <- 0
while ( i < 100){
  i <- i+ 1
  if (i %% 10 != 0) next
  if (i %% 90 == 0){
    cat ("\n")
    break
  }
  cat (i, "\t")
}

### 3.1.3
set.seed (1)
x <- 1:6
res <- numeric (1000)
for (i in 1:1000) {
  tmp <- sample (x, 100, rep = T)
  res [i] <- sum (tmp)
}
mean (res)

##### 
  runif (1)
  runif (3)
  set.seed (123)
  runif (1)
  runif (3)
  set.seed (123) # 
  runif (1)
  runif (3)


##### 
   1 * 1/6 + 2 * 1/6 + 3 * 1/6 + 4 * 1/6 + 5 * 1/6 + 6 * 1/6
   x <- 1:6; sum (x * (1/6))
   
## 3.2
myName <- function () {
  print ("")
}

myName
myName()

myPlus <- function (x = 0, y = 1) {
  x + y
}
myPlus ()
myPlus (x = 2)
x <- myPlus (2, 3)


##### 
z <- 10
func <- function (){
  z <- 3
  print (z)
}

func ()
z


## 3.3 
sample (x = 1:face, size = toss, rep = TRUE)

dice <- function (face, toss){
  sample(x = 1:face, size = toss, rep = TRUE)
}

dice (6, 10)

dice ()


###3.3.1 

dice <- function (face = 6, toss = 1){
  sample(x = 1:face, size = toss, rep = TRUE)
}


dice (to = 3)
dice (0)

dice <- function (face = 6, toss = 1){
  if (face < 2 || toss < 1) stop ("")
  sample(x = 1:face, size = toss, rep = TRUE)
}

dice (1)

dice <- function (face = 6, toss = 1){
  stopifnot  (face > 1,toss > 0)
  sample(x = 1:face, size = toss, rep = TRUE)
}

dice (to = 0)

## 3.4 
x <- 1:10
x + 1

sum (x)
mean (x)

x <- matrix (1:9, nrow = 3)
rowSums (x)
colSums (x)

tmp <- 0
for (i in 1:3){
  for (j in 1:3) {
    tmp <- tmp + x [i, j]
  }
  print (tmp)
  tmp <- 0
}

tmp <- 0
for (i in 1:3){
  for (j in 1:3) {
    tmp <- tmp + x [j, i]
  }
  print (tmp)
  tmp <- 0
}

apply (x, 1, sum)
apply (x, 2, sum)

apply (x, 1, "+", 100)    # 
apply (x, 2, paste, "", sep = "") # paste()
apply (x, 1, function(z){z + z*10 + z * 100}) #

tmpf <-  function(z){z + z*10 + z * 100}
apply (x, 1, tmpf)

lapply (x, "+", 1) #(List)
sapply (x, "+", 1) # (simple) 

(xx <- list (x1 = x, x2 = x * 10)) #
lapply (xx, mean)   #

sapply (xx, mean)   # 

## 3.5 
methods (plot)
getS3method (f = "plot", class = "histogram")

###3.5.1 S3
# 
x <- "A"
print (x)

# 
print.str <- function (x) {
   cat ("x = ", x, "; charToRaw (x) = ", charToRaw (x), "\n");
}
 # 
class (x) <- "str"
 # 
print (x)
## x =  A; charToRaw (x) =  41


###3.5.2 S4
setClass (Class = "family",
          representation (mother = "character",
                          father = "character",
                          children = "numeric"),
          prototype (mother = "", father =  "",
                     children = 0) )

fm1 <- new ("family", mother = "", father = "",
             children = 3)
fm1

setMethod (f = "show", signature = "family",
            function (object) {
            # 
            cat (object@father, object@mother, "\n")
 } )

setValidity ("family", function (object) {
   if (nchar (object@mother) < 1 | nchar (object@father) < 1 )
     return (FALSE) 
 })

fm2 <- new ("family",  mother = "", father = "", children = 3  )
print (i)


fm1 <- new ("family", mother = "",
               father = "", children = 3)
fm1


## 3.6 R

###3. 6.1 
A1 <- 1:9
A2 <- 1:9
A1 * A2

as.matrix (A1) # 

# 
t (A2)
##      [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9]
## [1,]    1    2    3    4    5    6    7    8    9
class (t (A1)) # 
## [1] "matrix"
# 
A1 %*% t (A2)
 ##      [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9]
 ## [1,]    1    2    3    4    5    6    7    8    9
 ## [2,]    2    4    6    8   10   12   14   16   18
 ## [3,]    3    6    9   12   15   18   21   24   27
 ## [4,]    4    8   12   16   20   24   28   32   36
 ## [5,]    5   10   15   20   25   30   35   40   45
 ## [6,]    6   12   18   24   30   36   42   48   54
 ## [7,]    7   14   21   28   35   42   49   56   63
 ## [8,]    8   16   24   32   40   48   56   64   72
 ## [9,]    9   18   27   36   45   54   63   72   81

outer (A1, A1, "*")
outer (A1, A1, "+")

paste (1:9, 1:9, sep = "*")
outer (1:9, 1:9,  paste, sep = "*")

paste( outer (1:9, 1:9,  paste, sep = "*"), outer (1:9, 1:9, "*"), sep = "=")


##### R
options ()
getOption ("digits")
0.123456789012         # 
options (digits  = 12) # 
0.123456789012         # 
options (digits  = 7) # 
#####

### 3.6.2 

x <- c ("", "", "", "", "")
y <- c (100, 90, 80, 70, 60)
xy <- data.frame (Name = x, Score = y)
xy

 (tmp <- paste ("student", 1:5, sep = "-"))
#[1] "student-1" "student-2" "student-3" "student-4" "student-5"
xy $ ID <- tmp  
xy


names (xy)
## [1] "Name"  "Score" "ID"   
xy2 <- xy [ , c ("ID", "Score")]
xy2

xy $ Sex <- c ("F", "M", "M", "F", "F")
xy

(tmp <- paste (xy$Sex, 1:5, sep = "-"))
## [1] "F-1" "M-2" "M-3" "F-4" "F-5"
xy $ Id <- tmp
xy


### 3.6.3 

female <- c ("", "", "", "", "˜¸q")
male <-  c (", "", ", "", "")
paste (sample (female, 5) , sample(male, 5) , sep = "")

# 
mark <- c ("H", "C", "D", "S")
# 
suji <- c("A", 2:10, "J", "Q", "K")
suji # 

cards <- outer (mark, suji, "paste", sep = "-")
cards <- c (cards, "Joker") #  1 
length (cards) # ?
## [1] 53
cards # 
sample(cards, 5)


## 3.7 
index <- "A CERTAIN MAGICAL INDEX" # 1
length (index) # 1
## [1] 1
nchar (index)# 
## [1] 23
# 
x <- c ("ABC", "efghi")
length (x)
## [1] 2
nchar (x)

tolower(index)  # 
## [1] "a certain magical index"
toupper (x)     # 

# Lewis Carroll Alice's Adventures in Wonderland
alice <-  c ("Alice was beginning to get very tired of sitting by her sister on the bank",
               "and of having nothing to do:")
length (alice)
## [1] 2
nchar (alice)
## [1] 74 28
strsplit (alice, " ") # 

alice2 <- unlist (strsplit (alice, " ")) # 
alice2
##  [1] "Alice"     "was"       "beginning" "to"        "get"       "very"     
##  [7] "tired"     "of"        "sitting"   "by"        "her"       "sister"   
## [13] "on"        "the"       "bank"      "and"       "of"        "having"   
## [19] "nothing"   "to"        "do:"
length (alice2)  # 

table (alice2) # 

as.data.frame (table (alice2))

alice3 <- readLines (file ("http://www.gutenberg.org/files/11/11.txt"))
###### 
###### 

head (alice3, 50)
grep ("THE END", alice3)
alice3 [3365:3375]


alice3 <- alice3 [41:3370]
head (alice3)

tail (alice3)

alice.vec <- unlist (strsplit (alice3, split = "[[:space:]]+|[[:punct:]]+"))
length (alice.vec)



##### 
texts <- " 123-456-7890 321-654-0987,  135-246-8709 "
gsub ("[0-9]{3}-[0-9]{3}-[0-9]{4}", "XXX-XXX-XXXX", x = texts)

gsub ("[0-9]{3}-[0-9]{3}-[0-9]{4}", "XXX-XXX-XXXX",   x = texts)
#####


head (alice.vec)
sum (alice.vec == "")

#  ("") 
alice.vec <- alice.vec [alice.vec != ""]
# 
length(alice.vec)


sum (alice.vec == "the")


alice.freq <- as.data.frame (table (alice.vec))
alice.sorted <- alice.freq [order (alice.freq$Freq, decreasing = TRUE), ]
head (alice.sorted)
rownames (alice.sorted)[1:5]
## [1] "2515" "83"   "2593" "1"    "1209"
# 
nrow (alice.sorted)


##### order()

x <- c (3, 1, 2, 5, 4)
sort (x)

x <- c (3, 1, 2, 5, 4)
order (x) # 
## [1] 2 3 1 5 4
# 12 
x [order(x)]

set.seed (123)  # 
x <- sample (1:3, 10, rep = TRUE) 
y <- sample (1:3, 10, rep = TRUE)
(alpha <- sample (LETTERS[1:3], 10, rep = TRUE)) 
##  [1] "C" "C" "B" "C" "B" "C" "B" "B" "A" "A"
(x.y <- data.frame (name = alpha, x = x, y = y))

# order
x.y [order(x.y$name, x.y$x, x.y$y), ]
#####

alice.sorted2 <- alice.freq [order (alice.freq$alice.vec),]
head (alice.sorted2)

alice.sorted2 [grep ("swim", alice.sorted2$alice.vec), ]

## install.packages ("Snowball") # 
install.packages("SnowballC")
# library (Snowball)            #  
library (SnowballC)            #    library(help = "SnowballC")

# stemming 
## alice.sn <- SnowballStemmer(tolower (alice.vec))
alice.sn <- wordStem(tolower (alice.vec))

# 
alice.sn.freq <- as.data.frame (table (alice.sn))
alice.sn.sorted <- alice.sn.freq [order (alice.sn.freq$alice.sn),]
head (alice.sn.sorted)

sum(alice.sn.sorted$Freq)
## [1] 27329
sum (alice.sorted$Freq)

which(alice.sn == "")
alice.sn[610:620]

nrow (alice.sn.sorted)


## 3.8 
###### 
###### 

library (RMeCab)
setwd ("C:/data")

res <- RMeCabC ("", 1)
unlist (res)

dazai <- docDF ("merosu.txt")
head (dazai)
tail (dazai)


dazai <- docDF("merosu.txt",type = 1)
head (dazai)
tail (dazai)

# 
dazai2 <- dazai [(dazai$POS1 %in% c("","")), ]
nrow (dazai2)
## [1] 704

# 
dazai <- docDF ("merosu.txt", type = 1, pos = c("",""))
head (dazai [order(dazai$merosu.txt, decreasing = TRUE),], 10)
