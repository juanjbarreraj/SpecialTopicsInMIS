# ============================================================
# R Assignment 3
# Exercises 13–17 and 20–26
# ============================================================

# Set seed so random results stay the same every time
set.seed(123)

# Save output to a clean text file
sink("RAssignment3_Output.txt")

cat("============================================================\n")
cat("R Assignment 3 Output\n")
cat("Exercises 13–17 and 20–26\n")
cat("============================================================\n\n")


# ============================================================
# Ex. 13
# What does this do?
# ============================================================

cat("============================================================\n")
cat("Ex. 13 — What does this do?\n")
cat("============================================================\n\n")

x <- rnorm(1000, mean = 10)

cat("The code creates 1000 random numbers from a normal distribution.\n")
cat("The distribution has a mean of 10.\n")
cat("By default, the standard deviation is 1.\n")
cat("Then it prints the mean and variance rounded to 2 decimal places.\n\n")

cat(sprintf("mean:\t%.2f\nvar:\t%.2f\n", mean(x), var(x)))


# ============================================================
# Ex. 14
# Decode the secret message
# ============================================================

cat("\n\n============================================================\n")
cat("Ex. 14 — Decode the Secret Message\n")
cat("============================================================\n\n")

a <- c("o", "a", "a", "n", "Y", "f", "d", "e", "e", " ", "s", ".")
b <- c("g", "u", "i", "!", "u", "u", "t", " ", "r", "e", "g", "")
c <- c("n", "t", "t", "s", "o", "o", " ", " ", "c", "m", "a", "")
d <- c("C", "r", "l", "o", " ", " ", "n", "h", "s", "t", "s", "e")

secret_message <- paste(d, a, c, b, collapse = "", sep = "")

cat("Secret message:\n")
print(secret_message)


# ============================================================
# Ex. 15
# Function to reverse the case of a string
# ============================================================

cat("\n\n============================================================\n")
cat("Ex. 15 — Function to Reverse the Case of a String\n")
cat("============================================================\n\n")

reverse_case <- function(text) {
  chars <- strsplit(text, "")[[1]]
  
  reversed <- ifelse(chars == toupper(chars),
                     tolower(chars),
                     toupper(chars))
  
  paste(reversed, collapse = "")
}

cat("reverse_case('Hello World'):\n")
print(reverse_case("Hello World"))

cat("\nreverse_case('R Programming'):\n")
print(reverse_case("R Programming"))

cat("\nreverse_case('aBcDeF'):\n")
print(reverse_case("aBcDeF"))

cat("\nreverse_case('CONGRATULATIONS you FOUND it'):\n")
print(reverse_case("CONGRATULATIONS you FOUND it"))


# ============================================================
# Ex. 16
# Check whether the numbers are palindromes
# ============================================================

cat("\n\n============================================================\n")
cat("Ex. 16 — Check Whether the Numbers Are Palindromes\n")
cat("============================================================\n\n")

num1 <- paste0(
  "73132514168488803306526700353904092183768124612171068341",
  "38522783887608393519025808100767202597280997030718964589",
  "85469817030799082795202767001808520915393806788387225831",
  "4386017121642186738129040935300762560330888486141523137"
)

num2 <- paste0(
  "73132514168488803306526700353904092183768124612171068341",
  "38522783887608393519025808100767202597280997030718964589",
  "85469817030799082795202767001808520915393806788387225831",
  "4386017121642186738129040935300762560330888486141523137"
)

is_palindrome <- function(x) {
  x <- as.character(x)
  reversed_x <- paste(rev(strsplit(x, "")[[1]]), collapse = "")
  x == reversed_x
}

cat("Is num1 a palindrome?\n")
print(is_palindrome(num1))

cat("\nIs num2 a palindrome?\n")
print(is_palindrome(num2))

cat("\nClear answer:\n")

if (is_palindrome(num1)) {
  cat("num1 is a palindrome.\n")
} else {
  cat("num1 is not a palindrome.\n")
}

if (is_palindrome(num2)) {
  cat("num2 is a palindrome.\n")
} else {
  cat("num2 is not a palindrome.\n")
}


# ============================================================
# Ex. 17
# Function chomp()
# Removes every '&' and the character immediately to the left
# ============================================================

cat("\n\n============================================================\n")
cat("Ex. 17 — Function chomp()\n")
cat("============================================================\n\n")

chomp <- function(text) {
  chars <- strsplit(text, "")[[1]]
  result <- character(0)
  
  for (ch in chars) {
    if (ch == "&") {
      if (length(result) > 0) {
        result <- result[-length(result)]
      }
    } else {
      result <- c(result, ch)
    }
  }
  
  paste(result, collapse = "")
}

cat("chomp('a&c') = ", chomp("a&c"), "\n", sep = "")
cat("chomp('a&') = ", chomp("a&"), "\n", sep = "")
cat("chomp('abc') = ", chomp("abc"), "\n", sep = "")

cat("\nExplanation:\n")
cat("The chomp function removes every '&' symbol.\n")
cat("It also removes the character immediately to the left of each '&'.\n")


# ============================================================
# Problems 20–26
# Create dataset and answer each exercise
# ============================================================

cat("\n\n============================================================\n")
cat("Problems 20–26 — Data Frames\n")
cat("============================================================\n\n")

workshop <- c("R", "SPSS", NA, "SPSS", "STATA", "SPSS")

gender <- factor(c("Female", "Male", NA, "Female", "Female", "Female"))

q1 <- c(4, 3, 3, 5, 4, 5)
q2 <- c(3, 4, 2, 4, 4, 4)
q3 <- c(4, 3, NA, 5, 3, 3)
q4 <- c(5, 4, 3, 3, 4, 5)

df <- data.frame(workshop, gender, q1, q2, q3, q4)

cat("Original dataframe:\n")
print(df)


# ============================================================
# Ex. 20
# Create a dataframe consisting of only the first two columns
# ============================================================

cat("\n\n============================================================\n")
cat("Ex. 20 — First Two Columns\n")
cat("============================================================\n\n")

df_first_two_columns <- df[, 1:2]

print(df_first_two_columns)


# ============================================================
# Ex. 21
# Create a dataframe consisting of only the first and last row
# ============================================================

cat("\n\n============================================================\n")
cat("Ex. 21 — First and Last Row\n")
cat("============================================================\n\n")

df_first_last_row <- df[c(1, nrow(df)), ]

print(df_first_last_row)


# ============================================================
# Ex. 22
# What happens when you enter as.list(df)? unlist(df)?
# ============================================================

cat("\n\n============================================================\n")
cat("Ex. 22 — as.list(df) and unlist(df)\n")
cat("============================================================\n\n")

cat("as.list(df):\n")
print(as.list(df))

cat("\nunlist(df):\n")
print(unlist(df))

cat("\nExplanation:\n")
cat("as.list(df) converts the dataframe into a list where each column is one list element.\n")
cat("unlist(df) converts the dataframe into one long vector containing all values.\n")


# ============================================================
# Ex. 23
# Create df2 where every entry in q3 and q4 is 0
# ============================================================

cat("\n\n============================================================\n")
cat("Ex. 23 — Create df2 with q3 and q4 Changed to 0\n")
cat("============================================================\n\n")

df2 <- df
df2$q3 <- 0
df2$q4 <- 0

print(df2)


# ============================================================
# Ex. 24
# Sort df by gender
# ============================================================

cat("\n\n============================================================\n")
cat("Ex. 24 — Sort df by Gender\n")
cat("============================================================\n\n")

df_sorted_by_gender <- df[order(df$gender, na.last = TRUE), ]

print(df_sorted_by_gender)


# ============================================================
# Ex. 25
# Does df have any duplicate rows? What about df2?
# ============================================================

cat("\n\n============================================================\n")
cat("Ex. 25 — Duplicate Rows in df and df2\n")
cat("============================================================\n\n")

cat("Duplicate rows in df:\n")
print(duplicated(df))

cat("\nDoes df have duplicate rows?\n")
print(any(duplicated(df)))

cat("\nDuplicate rows in df2:\n")
print(duplicated(df2))

cat("\nDoes df2 have duplicate rows?\n")
print(any(duplicated(df2)))

cat("\nClear answer:\n")

if (any(duplicated(df))) {
  cat("df has duplicate rows.\n")
} else {
  cat("df does not have duplicate rows.\n")
}

if (any(duplicated(df2))) {
  cat("df2 has duplicate rows.\n")
} else {
  cat("df2 does not have duplicate rows.\n")
}


# ============================================================
# Ex. 26
# What does na.omit(df) do?
# ============================================================

cat("\n\n============================================================\n")
cat("Ex. 26 — na.omit(df)\n")
cat("============================================================\n\n")

df_no_na <- na.omit(df)

cat("Result of na.omit(df):\n")
print(df_no_na)

cat("\nExplanation:\n")
cat("na.omit(df) removes any row that contains at least one NA value.\n")
cat("In this dataset, row 3 is removed because it contains missing values.\n")


cat("\n============================================================\n")
cat("End of R Assignment 3 Output\n")
cat("============================================================\n")

# Stop saving output
sink()