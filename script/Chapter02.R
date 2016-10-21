# 2.1 R


###2.1.1 
1 + 1
2 - 2
3 * 3
4 / 4


(1 + 2) * 3  / 4    ;    1 * 2 / (3 - 2 + 1)

1:10
1:10 + 1

# 
1 + 2 + 3 +
  4 + 5 + 6

###2.1.2 
x <- c (1.0, 1.2, 1.3)
x
x * 10
y <- 
y <- ""
y

# 
 ( <- "" ) # 
_underBar <- 5
 $4 <- 5
 if <- 1

LETTERS
letters

##### 
 charToRaw("")
 0x82
 0xa0
#####

# 2.2 
LETTERS [1:5]
LETTERS [ c (1, 3, 5, 20:26)]

z <- 1:30
z [1:5]
z [c (1, 3, 5, 25:30) ]

##### 
 x <- 1
 x < - 3
#####

# 
LETTERS [ - (1:23)] #

# 
dogs <- c ("", "", "", "")
# 
names (dogs) <- c ("", "", "", "" ) ; dogs
dogs [""]


## 2.3 

x <- 1:100       # 1, 2, 3, ..., 98, 99, 100 
sum (x)          # 

mean (x)         # 

y <- 1:3         # 1,2,3 
rep (y, 3)       # 3 

z <- c ("A", "B", "C")   # 
rep (z, 5)               # 5 

seq (10)                        # 1  10 

seq (from = 0, to = 10, by = 2) #  2 

seq (0, 10, 3)                  #  3 

seq (0, 1, 0.1)                 #  0.1 


## 2.4 
help.search ("sequence")

##### R
 ?seq   # 
#####


## 2.5 
x <- 1:6
sample (x, 1)

sample (x, 10)
#  sample(x, 10) : 
#   'replace = FALSE'  
sample (x, 10, rep = TRUE)

kuji <- c ("", "", "") # 
kuji
# [1] "" "" ""
sample (kuji, 1)                   # 
# [1] "" 
# 
sample (kuji, 1, prob = c (1/10, 2/10, 7/10) )

x <- sample (kuji, 10000, rep = T,  prob = c(1/10, 2/10, 7/10) )
(z <- table (x) )
# x
#    
# 7002  963 2035 
barplot (z)


## 2.6 
###2.6.1 
# 
(x <- 1)
# [1] 1
typeof (x)
# [1] "double"
# 
(y <- 1L)
# [1] 1
typeof (y)
# [1] "integer"

(x <- 1 + 2i)


x <- ''
y <- "DEF"

LETTERS
letters

paste (LETTERS, collapse = "")
# [1] "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

strsplit (x, "")
## [[1]]
## [1] "" "" ""

x <- c ("", "")
x
## [1] "" ""
class (x)
## [1] "character"
xf <- as.factor (x)
xf
## [1]  
## Levels:  
class (xf)
## [1] "factor"


str (xf)
## Factor w/ 2 levels "","": 2 1

x <- 5
x >= 3
## [1] TRUE

x <- 1:5
x <= 3; x < 3; x > 3; x == 3; x != 3
## [1]  TRUE  TRUE  TRUE FALSE FALSE
## [1]  TRUE  TRUE FALSE FALSE FALSE
## [1] FALSE FALSE FALSE  TRUE  TRUE
## [1] FALSE FALSE  TRUE FALSE FALSE
## [1]  TRUE  TRUE FALSE  TRUE  TRUE

sum (x >= 3)
## [1] 3


y <- c ("A", "B", "C")
y == "B"
## [1] FALSE  TRUE FALSE


z <- c ("A", "B", "O", "AB", "A", "B", "O", "AB")
z == c ("AB", "B")
## [1] FALSE  TRUE FALSE FALSE FALSE  TRUE FALSE FALSE


z == c ("AB", "B", "AB", "B", "AB", "B", "AB", "B")
## [1] FALSE  TRUE FALSE FALSE FALSE  TRUE FALSE FALSE


z %in% c ("AB", "B")
# [1] FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE
sum ( z %in% c ("AB", "B") )
## [1] 4
which ( z %in% c ("AB", "B") )
## [1] 2 4 6 8


dogs [names (dogs) %in%  ""]
##       
## ""   ""

###2.6.2 

head (sleep)
##   extra group ID
## 1   0.7     1  1
## 2  -1.6     1  2
## 3  -0.2     1  3
## 4  -1.2     1  4
## 5  -0.1     1  5
## 6   3.4     1  6


summary (sleep)
 ##     extra        group        ID   
 ## Min.   :-1.600   1:10   1      :2  
 ## 1st Qu.:-0.025   2:10   2      :2  
 ## Median : 0.950          3      :2  
 ## Mean   : 1.540          4      :2  
 ## 3rd Qu.: 3.400          5      :2  
 ## Max.   : 5.500          6      :2  
 ##                         (Other):8


x <- data.frame (Num = 1:5, Cha = LETTERS[1:5])
x
##   Num Cha
## 1   1   A
## 2   2   B
## 3   3   C
## 4   4   D
## 5   5   E 
x $ Num
## [1] 1 2 3 4 5
x $ Cha
## [1] A B C D E
## Levels: A B C D E


x $ New <- c ("", "", "", "", "")
nrow (x)
## [1] 5
ncol (x)
## [1] 3
x
##   Num Cha New
## 1   1   A  
## 2   2   B  
## 3   3   C  
## 4   4   D  
## 5   5   E  
str (x)       # 
## 'data.frame':	5 obs. of  3 variables:
##  $ Num: int  1 2 3 4 5
##  $ Cha: Factor w/ 5 levels "A","B","C","D",..: 1 2 3 4 5
##  $ New: chr  "" "" "" "" ...

x [1:3, c (1,3)]
##   Num New
## 1   1  
## 2   2  
## 3   3  


x [1:3, -2]      # 2 
##   Num New
## 1   1  
## 2   2  
## 3   3  


# 
(x <- matrix (1:9, ncol = 3))
##      [,1] [,2] [,3]
## [1,]    1    4    7
## [2,]    2    5    8
## [3,]    3    6    9


# 
(y <- matrix (1:9, ncol = 3, byrow = TRUE))
##      [,1] [,2] [,3]
## [1,]    1    2    3
## [2,]    4    5    6
## [3,]    7    8    9

# 
(z <- matrix (c (2,5,7), nrow = 2))
##      [,1] [,2]
## [1,]    2    7
## [2,]    5    2
##   
## In matrix(c(2, 5, 7), nrow = 2) :
##     [3]   [2]   


(x <- matrix (1:9, ncol = 3))
##      [,1] [,2] [,3]
## [1,]    1    4    7
## [2,]    2    5    8
## [3,]    3    6    9

t(x)  # 
##      [,1] [,2] [,3]
## [1,]    1    2    3
## [2,]    4    5    6
## [3,]    7    8    9


HairEyeColor
## , , Sex = Male

##        Eye
## Hair    Brown Blue Hazel Green
##   Black    32   11    10     3
##   Brown    53   50    25    15
##   Red      10   10     7     7
##   Blond     3   30     5     8

## , , Sex = Female

##        Eye
## Hair    Brown Blue Hazel Green
##   Black    36    9     5     2
##   Brown    66   34    29    14
##   Red      16    7     7     7
##   Blond     4   64     5     8



HairEyeColor [ , , Sex = "Female"]
##        Eye
## Hair    Brown Blue Hazel Green
##   Black    36    9     5     2
##   Brown    66   34    29    14
##   Red      16    7     7     7
##   Blond     4   64     5     8



HairEyeColor ["Black" , , ]
##        Sex
## Eye     Male Female
##   Brown   32     36
##   Blue    11      9
##   Hazel   10      5
##   Green    3      2


x <- lm (dist ~ speed, data = cars)
str (x)
## List of 12
##  $ coefficients : Named num [1:2] -17.58 3.93
##   ..- attr(*, "names")= chr [1:2] "(Intercept)" "speed"
##  $ residuals    : Named num [1:50] 3.85 11.85 -5.95 12.05 2.12 ...
##   ..- attr(*, "names")= chr [1:50] "1" "2" "3" "4" ...
## 
##  - attr(*, "class")= chr "lm"
## > x [[1]]
## (Intercept)       speed 
##  -17.579095    3.932409 

x [[1]]
x $ coefficients
## (Intercept)       speed 
##  -17.579095    3.932409 
x [[1]][1]
## (Intercept) 
##   -17.57909 
coef (x)

str (x [[1]])
 ## Named num [1:2] -17.58 3.93
 ## - attr(*, "names")= chr [1:2] "(Intercept)" "speed"

x [[1]][1]
## (Intercept) 
##   -17.57909 

x $ coefficients [1]
## (Intercept) 
##   -17.57909 


is.list (x)
## [1] TRUE


is.vector (LETTERS)
## [1] TRUE
is.data.frame (iris) # iris
## [1] TRUE
