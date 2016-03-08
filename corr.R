## part 3 of 3, week 2 programming R assignment, HOLY SHIT THIS IS HARD

corr <- function(threshold = 0) {
##        data.files <- list.files(path = datadir, pattern = "csv$", full.names = TRUE)
        all.data <- data.frame()   ## all.data gets cleaned at every loop
##       all.data <- rbind(all.data, read.csv(data.files) ##cause this fucker likes to append.
        all.data <- read.csv("specdata/001.csv")
        good <- complete.cases(all.data) ## temp variable to get to next one
        all.data.minus.na <- all.data[good,]
        if (length(all.data.minus.na$Date) >= threshold) {
                print("threshold ok")
        } else {
                print("threshold too low")
        }
        
}