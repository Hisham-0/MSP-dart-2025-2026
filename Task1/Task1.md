# Task 1 instructions

1. Open git bash
2. use command `cd` to browse the desired place to clone the repo
3. Clone the repo.

   ```
   git clone https://github.com/J3Unknown/MSP-dart-2025-2026.git
   ```
4. Create folder with your name in `MSP-dart-2025-2026\Task1\`.
5. Add A **Copy** of file `task1.dart` to your folder.
6. Read the task description `Task1.md`.
   > To view as markdown : on the file in VScode `ctrl + shift + v`.
6. Implement the functions in **your file**.
8. Push the solution.
   ```
   git add .
   git pull
   git commit -m "your massage"
   git push
   ```
> **Note:** Dont' forget to login with the following command `git config --global user.email "your github email"`.

> **Note:** Don't forget to browse your file first before you follow step number 8.

> **Note:** be careful with the steps , if you face any issue do not hesitate to ask .

---

---

## Problem 1

Rules of the "rock, paper, scissors" game are:

Return only String of the result.

Rock beats Scissors
Scissors beat Paper,
Paper beats Rock.
Let's play! You have to return which player won! In case of a draw return Draw!.

Example

```
"scissors", "paper" --> "Player 1 won!"
"scissors", "rock" --> "Player 2 won!"
"paper", "paper" --> "Draw!"
```

## Problem 2

Return only the number (count) of vowels in the given string.

We will consider `a`, `e`, `i`, `o`, `u` as vowels.

The input string will consist of lower & upper case letters and/or spaces.

> **Note** : if the string consist with spaces print number of spaces , if not print "No Spaces In The String".

Example (only return `integer`& use `print()` for spaces)

```
"abcdEf" -> 2
"No Spaces In The String"
"Computer science " -> 6
2 spaces
"Moon Light" -> 3
1 space
```

## Problem 3 (optional)

Count the number of Duplicates.

Return only the count of duplicates.

Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string.

The input string can be assumed to contain alphabets uppercase & lowercase and numeric digits and/or spaces.

> **Note** : you should ignore the spaces.

Example

```
"abc de" -> 0 # no characters repeats more than once
"aab bcde" -> 2 # 'a' and 'b'
"aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
"indivisibility  " -> 1 # 'i' occurs six times
"Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
"aA 11" -> 2 # 'a' and '1'
"ABBA" -> 2 # 'A' and 'B' each occur twice
```
