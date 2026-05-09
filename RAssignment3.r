# Ex. 13 — What does this do?

x <- rnorm(1000, mean = 10)

cat(sprintf("mean:\t%.2f\nvar:\t%.2f\n", mean(x), var(x)))


# Ex. 14 — Decode the secret message

# Ex. 14 — Decode the secret message

a <- c("o", "a", "a", "n", "Y", "f", "d", "e", "e", " ", "s", ".")
b <- c("g", "u", "i", "!", "u", "u", "t", " ", "r", "e", "g", "")
c <- c("n", "t", "t", "s", "o", "o", " ", " ", "c", "m", "a", "")
d <- c("C", "r", "l", "o", " ", " ", "n", "h", "s", "t", "s", "e")

secret_message <- paste(d, a, c, b, collapse = "", sep = "")

print(secret_message)

# Ex. 15 — Function to reverse the case of a string

reverse_case <- function(text) {
  chars <- strsplit(text, "")[[1]]
  
  reversed <- ifelse(chars == toupper(chars),
                     tolower(chars),
                     toupper(chars))
  
  paste(reversed, collapse = "")
}

# Test examples
reverse_case("Hello World")
reverse_case("R Programming")
reverse_case("aBcDeF")
reverse_case("CONGRATULATIONS you FOUND it")

# Ex. 16 — Check whether the numbers are palindromes

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

is_palindrome(num1)
is_palindrome(num2)

# Ex. 17 — Function chomp()
# Removes every "&" and also removes the character immediately to the left of each "&"

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

cat("chomp('a&c') =", chomp("a&c"), "\n")
cat("chomp('a&') =", chomp("a&"), "\n")
cat("chomp('abc') =", chomp("abc"), "\n")

# ============================================================
# Problems 20–26
# Create dataset and answer each exercise
# ============================================================

# Create the dataset
workshop <- c("R", "SPSS", NA, "SPSS", "STATA", "SPSS")

gender <- factor(c("Female", "Male", NA, "Female", "Female", "Female"))

q1 <- c(4, 3, 3, 5, 4, 5)
q2 <- c(3, 4, 2, 4, 4, 4)
q3 <- c(4, 3, NA, 5, 3, 3)
q4 <- c(5, 4, 3, 3, 4, 5)

df <- data.frame(workshop, gender, q1, q2, q3, q4)

cat("\nOriginal dataframe:\n")
print(df)


# ============================================================
# Ex. 20
# Create a dataframe consisting of only the first two columns
# ============================================================

df_first_two_columns <- df[, 1:2]

cat("\nEx. 20 — First two columns:\n")
print(df_first_two_columns)


# ============================================================
# Ex. 21
# Create a dataframe consisting of only the first and last row
# ============================================================

df_first_last_row <- df[c(1, nrow(df)), ]

cat("\nEx. 21 — First and last row:\n")
print(df_first_last_row)


# ============================================================
# Ex. 22
# What happens when you enter as.list(df)? unlist(df)?
# ============================================================

cat("\nEx. 22 — as.list(df):\n")
print(as.list(df))

cat("\nEx. 22 — unlist(df):\n")
print(unlist(df))

cat("\nExplanation:\n")
cat("as.list(df) converts the dataframe into a list where each column is one list element.\n")
cat("unlist(df) converts the dataframe into one long vector containing all values.\n")


# ============================================================
# Ex. 23
# Create a dataframe called df2 where every entry in q3 and q4 is 0
# ============================================================

df2 <- df
df2$q3 <- 0
df2$q4 <- 0

cat("\nEx. 23 — df2 with q3 and q4 changed to 0:\n")
print(df2)


# ============================================================
# Ex. 24
# Sort df by gender
# ============================================================

df_sorted_by_gender <- df[order(df$gender, na.last = TRUE), ]

cat("\nEx. 24 — df sorted by gender:\n")
print(df_sorted_by_gender)


# ============================================================
# Ex. 25
# Does df have any duplicate rows? What about df2?
# ============================================================

cat("\nEx. 25 — Duplicate rows in df:\n")
print(duplicated(df))

cat("\nDoes df have duplicate rows?\n")
print(any(duplicated(df)))

cat("\nEx. 25 — Duplicate rows in df2:\n")
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

df_no_na <- na.omit(df)

cat("\nEx. 26 — na.omit(df):\n")
print(df_no_na)

cat("\nExplanation:\n")
cat("na.omit(df) removes any row that contains at least one NA value.\n")
cat("In this dataset, row 3 is removed because it contains missing values.\n")