source("./src/load.R")
source("./src/functions.R")

trainSet <- merge(trainSet, tubes, by="tube_assembly_id")
testSet <- merge(testSet, tubes, by="tube_assembly_id")

fit <- lm( cost ~ length + diameter + quantity, data=trainSet)
estimate <- predict(fit, testSet)


estimate <- data.frame(id=testSet$id, cost=estimate)

# Make sure there are no negative values
estimate$cost[estimate$cost < 0] <- 1

write.csv(estimate, file="./out/submission.csv", row.names = FALSE, quote=FALSE)
