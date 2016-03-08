## part 1 of 3, week 2 programming R assignment, HOLY SHIT THIS WAS HARD



pollutantmean  <- function(datadir, pollutant, id = 1:332) {
        data.files <- list.files(path = datadir, pattern = "csv$", full.names = TRUE)
        
        all.data <- data.frame()
        for (i in id) {
                all.data <- rbind(all.data, read.csv(data.files[i]))
        }
        complete.data <- complete.cases(all.data)
        non.na.data <- all.data[complete.data,]
        mean(non.na.data[,pollutant])
}