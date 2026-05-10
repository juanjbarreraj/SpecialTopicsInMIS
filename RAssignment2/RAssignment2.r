# ============================================================
# R Assignment 2
# ============================================================

# Set seed so random results stay the same every time
set.seed(123)

# Save output to a clean text file
sink("RAssignment2_Output.txt")

cat("============================================================\n")
cat("R Assignment 2 Output\n")
cat("============================================================\n\n")


# ============================================================
# Introduction
# ============================================================

cat("Introduction:\n")
print("Hello World")
print("My name is Juan Barrera")
print("This is an online class for my Spring Semester")


# ============================================================
# Ex. 6
# Solve each expression
# ============================================================

cat("\n============================================================\n")
cat("Ex. 6 — Solve each expression\n")
cat("============================================================\n\n")

cat("2 - 1 * 2:\n")
print(2 - 1 * 2)

cat("\n6/3 - 2 + 1*0 + 3/3 - 3:\n")
print(6/3 - 2 + 1*0 + 3/3 - 3)

cat("\n19 %% 17 %% 13:\n")
print(19 %% 17 %% 13)

cat("\nComparison: (19 %% 17) %% 13:\n")
print((19 %% 17) %% 13)

cat("\nComparison: 19 %% (17 %% 13):\n")
print(19 %% (17 %% 13))

cat("\n2^17 %% 17:\n")
print(2^17 %% 17)

cat("\n3 - 2 %% 5 + 3*2 - 4/2:\n")
print(3 - 2 %% 5 + 3*2 - 4/2)

cat("\nFinal answers for Ex. 6:\n")
cat("2 - 1 * 2 = 0\n")
cat("6/3 - 2 + 1*0 + 3/3 - 3 = -2\n")
cat("19 %% 17 %% 13 = 2\n")
cat("(19 %% 17) %% 13 = 2\n")
cat("19 %% (17 %% 13) = 3\n")
cat("2^17 %% 17 = 2\n")
cat("3 - 2 %% 5 + 3*2 - 4/2 = 5\n")


# ============================================================
# Ex. 7
# Find the value of x
# ============================================================

cat("\n============================================================\n")
cat("Ex. 7 — Find the value of x\n")
cat("============================================================\n\n")

cat("sum(1:10 - 5):\n")
print(sum(1:10 - 5))

cat("\nsum(1:10) - 5:\n")
print(sum(1:10) - 5)

cat("\n1:10 - 10:1:\n")
print(1:10 - 10:1)

cat("\nsum(1:10 - 10:1):\n")
print(sum(1:10 - 10:1))

cat("\nFinal answers for Ex. 7:\n")
cat("sum(1:10 - 5) = 5\n")
cat("sum(1:10) - 5 = 50\n")
cat("1:10 - 10:1 = -9 -7 -5 -3 -1 1 3 5 7 9\n")
cat("sum(1:10 - 10:1) = 0\n")


# ============================================================
# Ex. 8
# Simulations
# ============================================================

cat("\n============================================================\n")
cat("Ex. 8 — Simulations\n")
cat("============================================================\n\n")

# Simulate one trigger pull using a 6-sided die
# 1 = bang, 2-6 = click

trigger_roll <- sample(1:6, size = 1)

cat("Trigger roll result:\n")
cat("The die rolled:", trigger_roll, "\n")

if (trigger_roll == 1) {
  print("bang")
} else {
  print("click")
}


# Simulate one coin flip
flip <- sample(c("heads", "tails"), size = 1)

cat("\nCoin flip result:\n")
print(flip)


# Simulate rolling one die
die_roll <- sample(1:6, size = 1)

cat("\nDice roll result:\n")
print(paste("You rolled a", die_roll))


# ============================================================
# Create x for Exercises 9–12
# ============================================================

cat("\n============================================================\n")
cat("Create data frame x for Exercises 9–12\n")
cat("============================================================\n\n")

x <- data.frame(a = 1:5, b = 5:1)

cat("Data frame x:\n")
print(x)


# ============================================================
# Ex. 9
# Save x to disk using write.csv() and write.table()
# ============================================================

cat("\n============================================================\n")
cat("Ex. 9 — Save x using write.csv() and write.table()\n")
cat("============================================================\n\n")

write.csv(x, "exercise9_x.csv", row.names = FALSE)

write.table(x, "exercise9_x_table.txt", row.names = FALSE)

write.table(x, "exercise9_x_table_comma.txt",
            row.names = FALSE,
            sep = ",")

cat("Files created:\n")
cat("exercise9_x.csv\n")
cat("exercise9_x_table.txt\n")
cat("exercise9_x_table_comma.txt\n")


# ============================================================
# Ex. 10
# Read the files from Exercise 9
# ============================================================

cat("\n============================================================\n")
cat("Ex. 10 — Read files using read.csv() and read.table()\n")
cat("============================================================\n\n")

x_csv <- read.csv("exercise9_x.csv")

cat("Reading exercise9_x.csv with read.csv():\n")
print(x_csv)

x_table <- read.table("exercise9_x_table.txt", header = TRUE)

cat("\nReading exercise9_x_table.txt with read.table():\n")
print(x_table)

x_table_comma <- read.table("exercise9_x_table_comma.txt",
                            header = TRUE,
                            sep = ",")

cat("\nReading exercise9_x_table_comma.txt with read.table() and sep = ',':\n")
print(x_table_comma)


# ============================================================
# Ex. 11
# Repeat Exercises 9 and 10 using save() and load()
# ============================================================

cat("\n============================================================\n")
cat("Ex. 11 — Save and load using save() and load()\n")
cat("============================================================\n\n")

save(x, file = "exercise11_x.RData")

cat("Saved x to exercise11_x.RData\n")

rm(x)

cat("Removed x using rm(x).\n")

load("exercise11_x.RData")

cat("Loaded x back using load().\n")

cat("\nData frame x after loading:\n")
print(x)


# ============================================================
# Ex. 12
# Use scan() to read the files from Exercise 9
# ============================================================

cat("\n============================================================\n")
cat("Ex. 12 — Use scan() to read files from Exercise 9\n")
cat("============================================================\n\n")

scan_csv <- scan("exercise9_x.csv",
                 what = character(),
                 sep = ",",
                 quiet = TRUE)

cat("Reading exercise9_x.csv with scan():\n")
print(scan_csv)

scan_table <- scan("exercise9_x_table.txt",
                   what = character(),
                   quiet = TRUE)

cat("\nReading exercise9_x_table.txt with scan():\n")
print(scan_table)

scan_table_comma <- scan("exercise9_x_table_comma.txt",
                         what = character(),
                         sep = ",",
                         quiet = TRUE)

cat("\nReading exercise9_x_table_comma.txt with scan():\n")
print(scan_table_comma)


cat("\n============================================================\n")
cat("End of R Assignment 2 Output\n")
cat("============================================================\n")

# Stop saving output
sink()