## part 2 of 3, week 2 programming R assignment, HOLY SHIT THIS IS HARD


complete <- function(datadir, id = 1:332) {
        data.files <- list.files(path = datadir, pattern = "csv$", full.names = TRUE)
        d <- data.frame(id = integer(), nobs = integer())

        ## set up data frame to load data to
        
        for (i in id) {
                all.data <- data.frame()   ## all.data gets cleaned at every loop
                all.data <- rbind(all.data, read.csv(data.files[i])) ##cause this fucker likes to append.
                good <- complete.cases(all.data) ## temp variable to get to next one
                all.data.minus.na <- all.data[good,]
                num.records.total.no.data <- length(all.data.minus.na$Date)
                new.row <- data.frame("id" = i, "nobs" = num.records.total.no.data)
                d <- rbind(d, new.row)
        }
        d
}
