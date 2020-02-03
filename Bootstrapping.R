# Bootstrapping is a useful technique for making inference from a population
# when all you have is a single sample.

sample <- rnorm(100, 5, 1)

# Here we've drawn 100 random numbers from a normal distribution with mean 5 and
# variance 1. Let's pretend that we don't know anything about the population
# distribution from which this sample was drawn for the purposes of this exercise.

# From this sample sample we can compute a summarizing statistic, for example, the mean

mean(sample)

# But this is simply a number in space. We are statisticians, damnit, we need to
# quantify the uncertainty associated with this value, but how can we when we
# know anything about the population from which it was drawn?

# Enter the bootstrapping algorithm. Here are the overall steps:
# 1. Create a new dataset, equal in dimension to the sample, by randomly drawing
#    values from the sample WITH replacement. Each value has an equal probability
#    of being selected on any given draw, and values can be selected multiple times.
# 2. Calculate the test statistic of interest for this new, rearranged dataset.
# 3. Repeat steps 1 and 2 many times to produce a distribution of test statistics.
# 4. This distribution approximates the distribution you would recieve if you simply
#    resampled the population many times. The accuracy of the approximation is
#    proportional to the representativeness of the original sample data.

# So let's give this a shot. We'll start by making 100 random draws from the sample
# data with replacement

# Step 1 of 100: Draw a value from sample with replacement and save it to a new vector, boot
boot <- numeric()
boot[1] <- sample(sample, 1, replace=TRUE)

# Step 2 of 100: Draw another value from sample with replacement and save it to boot
boot[2] <- sample(sample, 1, replace=TRUE)

# Okay, this going way too slowly. Let's use a for loop

# Bootin' and Loopin'
boot <- numeric() # create an empty vector OUTSIDE of the for loop
for(i in 1:100){ # The variable i is sequentially assigned values in the range
                 # [1, 100], which contains only natural numbers. For each iteration
                 # of the loop, i is increased by 1 until it reaches 100, at which
                 # point the loop evaluates its code and stops
  boot[i] <- sample(sample, 1, replace=TRUE) # The indented code between the curly
                                             # brackets {} is evaluated at each step
                                             # (iteration) of the for loop. Here we
                                             # drawing a random value from sample and
                                             # adding it as the ith element of boot.
                                             
}

# At the completion of the loop we are left with a new dataset containing a rearrangement
# of values from sample. This could be similarly achieved without a for loop by asking the
# sample() to draw 100 values WITH replacement, but I wanted to illustrate the for loop syntax.

boot <- sample(sample, 100, replace=TRUE)

# Okay, now we're on to step 2, calculating the test statistic, or statistic of interest.

mean(boot)

# Now we repeat steps 1 and 2 many times. The more times the better. Each time we do this
# we are approximating a draw from the population, and we want many draws to produce
# our test statistic distribution. We'll use a for loop again. This time simply using the
# code from line 58 for simplcity

bootMEAN <- numeric() # an empty vector to hold all our test statistics
for(i in 1:100000){ # 100,000 iterations!
  boot <- sample(sample, 100, replace=TRUE)
  bootMEAN[i] <- mean(boot)
}

# Lets plot the distribution of means
hist(bootMEAN)

# Let's say we want to calculate the 95% CI around our sample mean. If we knew our data
# was normally distributed (which we're pretending we don't) we could use conventional methods
# covered in introductory statistics courses, which we can translate to R as the following:

CI95 <- function(x){
  z <- qnorm((1-0.95)/2, lower.tail = FALSE)
  mean <- mean(x)
  sd <- sd(x)
  n <- length(x)
  lwr <- mean-z*(sd/sqrt(n))
  upr <- mean+z*(sd/sqrt(n))
  return(paste(lwr, upr, sep=', ')) 
}

CI95(sample)

# Let's check to see if our bootstrapped confidence intervals agree with these
# expected values

quantile(bootMEAN, probs = c(0.025, 0.975))
