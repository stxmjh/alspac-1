library(dplyr)

filelist <- commandArgs(T)

out <- lapply(commandArgs(T), function(x)
{
	load(x)
	return(dat)
}) %>% bind_rows

Current <- subset(out, cat1 == "Current", select=-c(path))
save(Current, file="../data/Current.RData")

Useful_data <- subset(out, cat1 == "Useful_data", select=-c(path))
save(Useful_data, file="../data/Useful_data.RData")
