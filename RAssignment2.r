##R Assignment 2

print("Hello World")
print("My name is Juan Barrera")
print("This is an online class for my Spring Semester")

# Ex. 6 — Solve each expression

2-1*2

# Answer: 0

6/3-2+1*0+3/3-3

# Answer: -2

19%%17%%13

# Answer: 2

# Comparison:
(19%%17)%%13
# Answer: 2

19%%(17%%13)
# Answer: 3

2^17%%17

# Answer: 2

3-2%%5+3*2-4/2

# Answer: 5

# Ex. 7 — Find the value of x

sum(1:10 - 5)

# Answer: 5

sum(1:10) - 5

# Answer: 50

1:10 - 10:1

# Answer: -9 -7 -5 -3 -1 1 3 5 7 9

sum(1:10 - 10:1)

# Answer: 0

# Simulate one trigger pull using a 6-sided die
# 1 = bang, 2-6 = click

roll <- sample(1:6, size = 1)

if (roll == 1) {
  print("bang")
} else {
  print("click")
}

# Simulate one coin flip
# Heads or tails with equal probability

flip <- sample(c("heads", "tails"), size = 1)

print(flip)

roll <- sample(1:6, size = 1)

print(paste("You rolled a", roll))


# ============================================================
# Ex. 9
# Save x to disk using write.csv() and write.table()
# ============================================================

# Save as CSV file
write.csv(x, "exercise9_x.csv", row.names = FALSE)

# Save as table/text file
write.table(x, "exercise9_x_table.txt", row.names = FALSE)

# Another table option using comma separator
write.table(x, "exercise9_x_table_comma.txt",
            row.names = FALSE,
            sep = ",")

# ============================================================
# Ex. 10
# Read the files from Exercise 9
# ============================================================

# Read CSV file
x_csv <- read.csv("exercise9_x.csv")
x_csv

# Read table/text file
x_table <- read.table("exercise9_x_table.txt", header = TRUE)
x_table

# Read comma-separated table file
x_table_comma <- read.table("exercise9_x_table_comma.txt",
                            header = TRUE,
                            sep = ",")
x_table_comma

# ============================================================
# Ex. 11
# Repeat Exercises 9 and 10 using save() and load()
# ============================================================

# Save x as an R data file
save(x, file = "exercise11_x.RData")

# Remove x to prove that load() brings it back
rm(x)

# Load x back into R
load("exercise11_x.RData")

# Print x
x

# ============================================================
# Ex. 12
# Use scan() to read the files from Exercise 9
# ============================================================

# scan() reads raw values, so this is better for simple text data

# Read CSV as character values
scan_csv <- scan("exercise9_x.csv", what = character(), sep = ",", quiet = TRUE)
scan_csv

# Read table/text file as character values
scan_table <- scan("exercise9_x_table.txt", what = character(), quiet = TRUE)
scan_table

# Read comma-separated table as character values
scan_table_comma <- scan("exercise9_x_table_comma.txt",
                         what = character(),
                         sep = ",",
                         quiet = TRUE)
scan_table_comma