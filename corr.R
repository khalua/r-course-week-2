## part 3 of 3, week 2 programming R assignment, HOLY SHIT THIS IS HARD


corr <- function(datadir, threshold = 0) {
        data.files <- list.files(path = datadir, pattern = "csv$", full.names = TRUE)
        cor.v <- numeric() # initialize correlation vector 
        
        for (i in data.files) {
                all.data <- data.frame() # resets all.data data frame
                good <- logical() ## resets good
                all.data.minus.na <- data.frame()
                all.data <- rbind(all.data, read.csv(i)) ## read all the files
                good <- complete.cases(all.data) ## temp variable to get to next one
                all.data.minus.na <- all.data[good,]
                if (length(all.data.minus.na$Date) > threshold) {
                        cor.result <- cor(all.data.minus.na$sulfate, all.data.minus.na$nitrate)
                        cor.v <- append(cor.v, cor.result)
                }
        }
        cor.v
}