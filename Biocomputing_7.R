###Anna McDonald Biocomputing Assignment 7
rm(list=ls())

####1.####
##Write R code that replicates the functionality of the head function we used in bash. Your code should
##define a variable with the file to return lines from and a variable representing the number of lines to be
##returned from the top of the indicated file. The selected file content should be printed to the terminal
##in R. Do not use the head function in R. Be sure you are using square bracket indexing to subset the
##tabular file
  #define x as the number of rows we want to return
x <- 10
  #define y as the file from which the lines will be returned
y <- iris
  #create a new object called new_head which will use square brackets to show rows from 1 to x
new_head <- y[1:x,]
new_head


####2.####
###Load the data contained in the provided ‘iris.csv’ file and write R code to do the following things
iris <- read.csv("iris.csv")
# print the last 2 rows in the last 2 columns to the R terminal
iris[149:150, 4:5]

##get the number of observations for each species included in the data set
  #3 total species - setosa, virginica, versicolor
nrow(iris[iris$Species=='setosa',])
nrow(iris[iris$Species=='virginica',])
nrow(iris[iris$Species=='versicolor',])
  #answer: 50 of each of the three species

##get rows with Sepal.Width > 3.5
iris[iris$Sepal.Width>3.5,]
nrow(iris[iris$Sepal.Width>3.5,])
  #answer: 19 rows

##write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
setosa.csv <- iris[iris$Species=="setosa",]
setosa.csv

##calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
  #create csv for only the virginica species (to make calculating easier)
virginica.csv <-  iris[iris$Species=='virginica',]
  #calculate mean (answer = 5.552)
mean(virginica.csv$Petal.Length)
  #calculate minimum (answer = 4.5) and maximum (answer = 6.9)
min(virginica.csv$Petal.Length)
max(virginica.csv$Petal.Length)
