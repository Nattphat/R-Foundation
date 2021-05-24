getwd()

list.files()

5 %% 2 # modulo
5 ** 2 # power


library(glue)
my_name <- "Mos"
my_age <- "25"
my_fvr_food <- "Mc"

(text <- glue("My name is {my_name} and I am {my_age} years old. My favorite food is {my_fvr_food}."))

## gut input from a user
(username <- readline("What is your username? "))
(customer_age <- as.numeric(readline("Your age : ")))

## date and time by library lubridate
library(lubridate)

today_date <- today()
class(today_date)

year(today_date)
month(today_date, label = T, abbr = F)
day(today_date)
wday(today_date, label = T, abbr = F)
week(today_date)

## data structure
x <- 1:10

dim(x) <- c(2, 5)

## control flow
# if-else

grading <- function(){
  #get score
  (score <- as.numeric(readline("Your score :")))
  
  #if-condition
  if (score >= 90){
    print("grade : A")
  } else if (score >= 80){
    print("B")
  } else if (score >= 70){
    print("C")
  } else if (score >= 60){
    print("D")
  } else {
    print("Failed")
  }
}

# create your own function
cube01 <- function(base, power = 2){
  return(base ** power)
}

# while loop
count <- 0
while (count <= 10) {
  print("Hello World")
  count <- count + 1
}

#for loop
library(glue)
friends <- c("Devid", "John", "Wick")
for (friend in friends) {
  print(glue("Hi {friend}"))
}

paste("Hi ", friends, "!", sep = "")

# mini project
id <- 1:3
bands <- c("Mazda", "Mazda", "Toyota")
models <- c("MX50", "BT50", "Yaris")
price <- c(50, 25, 30)

car_models <- data.frame(id, bands, models, price)

# desired output
# Mazda MX5 current price : 50 THB

ncol(car_models)
nrow(car_models)

# create car function
car_report <- function(data){
  
  for (i in 1:nrow(data)) {
    #print(car_models[i, ]$price)
    row <- data[i, ]
    text <- glue("Car ID : {row$id} {row$bands} {row$models} current price : {row$price} THB")
    print(text)
  }
}

#test function
car_report(car_models)
