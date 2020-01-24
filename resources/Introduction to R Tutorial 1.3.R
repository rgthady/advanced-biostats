# Data Storage and Access using Data Frames and Lists

## Creating Dataframes

### You can load existing data in graphically using the 'Import Dataset' drop-down menu,
### or load in data using a command

df <- read.csv('{instert data path here}')

### For now I'll just make a random data frame that we can use in the script

df <- data.frame(Names = rep(c('Sam', 'Bob', 'Caroline', 'Tim', 'Rachel'), 5),
                 Number = 1:25)

## Accessing data in a dataframe

df[1,1] # data frames are index by their rows i and columns j in the form df[i, j]
df[3,2] # the element found in the 2nd column of the 3rd row
df[5,1:2] # the first 'through' 2 column of row 5
df[5, ] # all columns of row 5 (equivalent to the indexing above because df has only 2 columns)
df[, 2]
df$Names # calling a column using the $ locator operator

## Appending new data

df$Combo <- paste(df$Names, df$Number, sep = '_')
df[, 4] <- df$Number*2 # works, but does not produce a column name

## Creating an empty matrix and adding data based on conditional functions performed on df

output <- matrix(data = NA, nrow = 25, ncol = 2)

for(i in 1:25){
  for(j in 1:4){
    if(class(df[i, j]) == 'integer'|class(df[i, j]) == 'numeric'){ # if the element of df is
                                                                   # an integer OR a numeric
                                                                   # value. This excludes cols
                                                                   # 1 and 3 which are characters
      output[i, (j/2)] <- df[i, j]/2 # the indexing on the second dimension of output (j) is
                                     # tricky here. Output only has 2 columns, and df has 4, of
                                     # which columns 2 and 4 satisfy the conditional statement.
                                     # We must divide j by 2 to map values from df[, 2] to
                                     # output[, 1], and df[, 4] to output[, 2].
    }
  }
}

## Lists and accessing data from lists
vec <- 1:10 # this creates a simple numeric vector with values 1 to 10
listvecs <- list(1:10, 10:20, 20:30) # creates a list with elements which are
                                     # themselves numeric vectors

listvecs[[2]] # calls the 2nd object stored in listvecs
listvecs[[2]][3] # the second object in listvec is a vector, so we can index 
                 # that vectors 3rd element in this way

listdfs <- list(df, output)
listdfs[[1]][2,2]
