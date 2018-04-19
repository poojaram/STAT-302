col_tmp <- rep("limegreen", nrow(faithful))
col_tmp[which(faithful$eruptions<3)] <- "orchid"
plot(faithful, pch = 16, col = col_tmp)
abline(v = 3, lwd = 3, col = "brown")

col_tmp <- rep("orange", nrow(faithful))
col_tmp[which(faithful$eruptions<3)] <- "orchid"
plot(faithful, pch = 16, col = col_tmp)
abline(v = 3, lwd = 3, col = "brown")

col_tmp <- rep("red", nrow(faithful))
col_tmp[which(faithful$eruptions<2)] <- "orchid"
plot(faithful, pch = 16, col = col_tmp)
abline(v = 3, lwd = 3, col = "brown")

col_tmp <- rep("limegreen", nrow(faithful))
col_tmp[which(faithful$waiting<55)] <- "orange"
plot(faithful, pch = 16, col = col_tmp)
abline(v = 3, lwd = 3, col = "brown")