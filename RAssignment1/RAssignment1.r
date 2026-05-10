# ============================================================
# R Assignment 1
# ============================================================

# Install packages only if missing
if (!require(DAAG)) install.packages("DAAG")
if (!require(MASS)) install.packages("MASS")

# Load packages
library(DAAG)
library(MASS)

# Set seed so random results stay the same every time
set.seed(123)

# Save output to a clean text file
sink("RAssignment1_Output.txt")

cat("============================================================\n")
cat("R Assignment 1 Output\n")
cat("============================================================\n\n")


# ============================================================
# Problem 1: Missing Values
# ============================================================

cat("============================================================\n")
cat("Problem 1: Missing Values\n")
cat("============================================================\n\n")

cat("Preview of rainforest dataset:\n")
print(head(rainforest))

rainforest_root_complete <- with(rainforest, table(complete.cases(root), species))

cat("\nComplete and incomplete root values grouped by species:\n")
print(rainforest_root_complete)

cat("\nNumber of complete root values for each species:\n")
print(rainforest_root_complete["TRUE", ])

cat("\nExplanation:\n")
cat("FALSE means the root value is missing.\n")
cat("TRUE means the root value is complete, meaning it is not missing.\n\n")


cat("Preview of Pima.tr2 dataset:\n")
print(head(Pima.tr2))

missing_by_type <- sapply(Pima.tr2, function(column) {
  tapply(is.na(column), Pima.tr2$type, sum)
})

cat("\nMissing values in Pima.tr2 grouped by type:\n")
print(missing_by_type)

cat("\nExplanation:\n")
cat("Each number shows how many missing values are in that column for each type group.\n")
cat("The variable type groups the rows by diabetes status.\n\n")


# ============================================================
# Problem 2: Useful Functions
# ============================================================

cat("============================================================\n")
cat("Problem 2: Useful Functions\n")
cat("============================================================\n\n")

cat("Part A: Number of rows\n\n")

cat("Number of rows in tinting:\n")
print(nrow(tinting))

cat("\nNumber of rows in possum:\n")
print(nrow(possum))

cat("\nNumber of rows in possumsites:\n")
print(nrow(possumsites))


cat("\n\nPart B: Calculations\n\n")

# Vector from 1 to 21
x <- 1:21

cat("Vector x containing numbers 1 to 21:\n")
print(x)

cat("\nMean of x:\n")
print(mean(x))

cat("\nRange of x:\n")
print(range(x))

cat("\nSum of x:\n")
print(sum(x))

cat("\nMedian of x:\n")
print(median(x))


# Vector with 100 random values
x <- rnorm(100)

cat("\nVector x containing 100 random values:\n")
print(x)

cat("\nMean of random x:\n")
print(mean(x))

cat("\nRange of random x:\n")
print(range(x))

cat("\nSum of random x:\n")
print(sum(x))

cat("\nMedian of random x:\n")
print(median(x))


# Women dataset
cat("\nWomen dataset:\n")
print(women)

cat("\nHeight column statistics:\n")

cat("\nMean of height:\n")
print(mean(women$height))

cat("\nRange of height:\n")
print(range(women$height))

cat("\nSum of height:\n")
print(sum(women$height))

cat("\nMedian of height:\n")
print(median(women$height))


cat("\nWeight column statistics:\n")

cat("\nMean of weight:\n")
print(mean(women$weight))

cat("\nRange of weight:\n")
print(range(women$weight))

cat("\nSum of weight:\n")
print(sum(women$weight))

cat("\nMedian of weight:\n")
print(median(women$weight))


# ============================================================
# Problem 3: Paste
# ============================================================

cat("\n\n============================================================\n")
cat("Problem 3: Paste\n")
cat("============================================================\n\n")

cat("Original paste examples:\n\n")

cat('paste("Leo", "the", "lion"):\n')
print(paste("Leo", "the", "lion"))

cat('\npaste("a", "b"):\n')
print(paste("a", "b"))

cat('\npaste("a", "b", sep = ""):\n')
print(paste("a", "b", sep = ""))

cat('\npaste(1:5):\n')
print(paste(1:5))

cat('\npaste(1:5, collapse = ""):\n')
print(paste(1:5, collapse = ""))


cat('\nChanging sep = "" to sep = ",":\n\n')

cat('paste("a", "b", sep = ","):\n')
print(paste("a", "b", sep = ","))

cat('\npaste("Leo", "the", "lion", sep = ","):\n')
print(paste("Leo", "the", "lion", sep = ","))


cat("\nExplanation of sep:\n")
cat("The sep command controls what goes between items that are pasted together.\n")
cat("For example, sep = \"\" puts nothing between the items.\n")
cat("sep = \",\" puts a comma between the items.\n")
cat("sep = \" \" puts a space between the items.\n\n")

cat("Explanation of collapse:\n")
cat("The collapse command combines multiple results into one single string.\n")
cat("For example, paste(1:5) gives separate character values.\n")
cat("But paste(1:5, collapse = \"\") combines them into one value: \"12345\".\n\n")

cat("Extra examples:\n")

cat('\npaste(1:5, collapse = ","):\n')
print(paste(1:5, collapse = ","))

cat('\npaste(1:5, collapse = " "):\n')
print(paste(1:5, collapse = " "))

cat('\npaste("Number", 1:5, sep = "-", collapse = ", "):\n')
print(paste("Number", 1:5, sep = "-", collapse = ", "))


# ============================================================
# Problem 4: Loops
# ============================================================

cat("\n\n============================================================\n")
cat("Problem 4: Loops\n")
cat("============================================================\n\n")

cat("What happens if <= is changed to <?\n")
cat("If the loop is written as while(i < 10), the condition becomes false when i reaches 10.\n")
cat("If i is printed before increasing, it prints 1 through 9.\n")
cat("If i is increased before printing, it prints 2 through 10.\n\n")

cat("Example where i is printed before increasing:\n")
i <- 1
while (i < 10) {
  print(i)
  i <- i + 1
}

cat("\nWhat happens if you remove i <- i + 1?\n")
cat("The loop never ends because i never changes.\n")
cat("This creates an infinite loop.\n")
cat("Do not run that version unless you are ready to stop it manually.\n\n")


cat("For loop: number, square, and cube from 1 to 5\n")

numbers <- c(1, 2, 3, 4, 5)

for (i in numbers) {
  square <- i^2
  cube <- i^3
  print(c(number = i, square = square, cube = cube))
}


cat("\nWhile loop: number, square, and cube from 1 to 5\n")

i <- 1

while (i <= 5) {
  square <- i^2
  cube <- i^3
  
  print(c(number = i, square = square, cube = cube))
  
  i <- i + 1
}


# ============================================================
# Problem 5: Sorting
# ============================================================

cat("\n\n============================================================\n")
cat("Problem 5: Sorting\n")
cat("============================================================\n\n")

cat("First few rows of rainforest:\n")
print(head(rainforest))

Acmena <- subset(rainforest, species == "Acmena smithii")

cat("\nOriginal Acmena data frame:\n")
print(Acmena)

ord <- order(Acmena$dbh)

cat("\nOrder of rows based on increasing dbh:\n")
print(ord)

acm <- Acmena[ord, ]

cat("\nAcmena sorted by increasing dbh:\n")
print(acm)


cat("\nOriginal possumsites data frame:\n")
print(possumsites)

possumsites_order <- order(rownames(possumsites))

cat("\nOrder of possumsites row names:\n")
print(possumsites_order)

possumsites_sorted <- possumsites[possumsites_order, ]

cat("\nPossumsites sorted by row names in alphanumeric order:\n")
print(possumsites_sorted)


# ============================================================
# Problem 6: Functions
# ============================================================

cat("\n\n============================================================\n")
cat("Problem 6: Functions\n")
cat("============================================================\n\n")

x <- c(1, 2, 3, 4, 5)

cat("Original vector x:\n")
print(x)

cat("\nMean of x:\n")
print(mean(x))

cat("\nStandard deviation of x:\n")
print(sd(x))

y <- c(mean(x), sd(x))

cat("\nCombined mean and standard deviation in one vector y:\n")
print(y)


meanANDsd <- function(x) {
  av <- mean(x)
  sdev <- sd(x)
  c(mean = av, standard_deviation = sdev)
}

cat("\nUsing meanANDsd function on original x:\n")
print(meanANDsd(x))


x <- rnorm(20)

cat("\nRandom vector x with 20 numbers:\n")
print(x)

cat("\nMean and standard deviation of random x:\n")
print(meanANDsd(x))


# ============================================================
# Problem 7: Scatterplots
# ============================================================

cat("\n\n============================================================\n")
cat("Problem 7: Scatterplots\n")
cat("============================================================\n\n")

Acmena <- subset(rainforest, species == "Acmena smithii")

cat("Acmena data:\n")
print(Acmena)


# Save Plot 1
png("plot_1_wood_vs_dbh.png", width = 800, height = 600)

plot(wood ~ dbh,
     data = Acmena,
     main = "Wood Biomass vs DBH",
     xlab = "DBH",
     ylab = "Wood Biomass",
     pch = 16)

dev.off()


# Save Plot 2
png("plot_2_wood_vs_dbh_log_scale.png", width = 800, height = 600)

plot(wood ~ dbh,
     data = Acmena,
     log = "xy",
     main = "Wood Biomass vs DBH on Log Scale",
     xlab = "DBH",
     ylab = "Wood Biomass",
     pch = 16)

dev.off()


# Fit model
Acmena.lm <- lm(log10(wood) ~ log10(dbh), data = Acmena)

# Save Plot 3
png("plot_3_fitted_relationship_wood_dbh.png", width = 800, height = 600)

plot(wood ~ dbh,
     data = Acmena,
     log = "xy",
     main = "Fitted Relationship: Wood vs DBH",
     xlab = "DBH",
     ylab = "Wood Biomass",
     pch = 16)

abline(Acmena.lm)

dev.off()


coef_log10 <- coef(Acmena.lm)

cat("\nCoefficients for log10 scale:\n")
print(coef_log10)

b <- coef_log10[1]
m <- coef_log10[2]

cat("\nEquation for fitted relationship:\n")
cat("log10(wood) = ", m, " * log10(dbh) + ", b, "\n", sep = "")

Acmena.lm.natural <- lm(log(wood) ~ log(dbh), data = Acmena)

cat("\nCoefficients for natural log scale:\n")
print(coef(Acmena.lm.natural))


cat("\nOrings data:\n")
print(orings)

included <- logical(23)
included[c(1, 2, 4, 11, 13, 18)] <- TRUE

cat("\nRows included in pre-launch charts:\n")
print(included)


# Save Plot 4
png("plot_4_orings_included_only.png", width = 800, height = 600)

plot(Total ~ Temperature,
     data = orings,
     subset = included,
     pch = 16,
     main = "Orings: Included Pre-Launch Rows Only",
     xlab = "Temperature",
     ylab = "Total Incidents")

dev.off()


# Save Plot 5
png("plot_5_orings_all_rows.png", width = 800, height = 600)

plot(Total ~ Temperature,
     data = orings,
     pch = 16,
     main = "Orings: All Rows",
     xlab = "Temperature",
     ylab = "Total Incidents")

dev.off()


# Save Plot 6
png("plot_6_orings_included_vs_not_included.png", width = 800, height = 600)

plot(Total ~ Temperature,
     data = orings,
     pch = ifelse(included, 16, 1),
     col = ifelse(included, "blue", "red"),
     main = "Orings: Included vs Not Included Rows",
     xlab = "Temperature",
     ylab = "Total Incidents")

legend("topright",
       legend = c("Included in pre-launch charts", "Not included"),
       pch = c(16, 1),
       col = c("blue", "red"))

dev.off()


cat("\nComments for the graphs:\n")
cat("For the first orings graph, a closed symbol is useful because only the included rows are shown.\n")
cat("For the second graph, using one symbol is okay because all rows are being shown together.\n")
cat("For the third graph, different colors and symbols are better because they clearly show which rows were included and which were not included.\n")
cat("This makes it easier to compare the pre-launch data against the full dataset.\n\n")

cat("Plots saved as:\n")
cat("plot_1_wood_vs_dbh.png\n")
cat("plot_2_wood_vs_dbh_log_scale.png\n")
cat("plot_3_fitted_relationship_wood_dbh.png\n")
cat("plot_4_orings_included_only.png\n")
cat("plot_5_orings_all_rows.png\n")
cat("plot_6_orings_included_vs_not_included.png\n")


# End output file
sink()