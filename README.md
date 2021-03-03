# Ruby Caesar Cipher
#### by arglinguist
## Description
This short program compares a user-inputed string with an array of words written into the program and print out a hash with the number of times each word in the pre-made array appeared in the user's string.
## Purpose
Created to practice basic Ruby skills for The Odin Project as described here https://www.theodinproject.com/lessons/sub-strings
## Instructions
* Clone repo, navigate to folder in terminal and type "ruby substrings.rb" in terminal or 
* Copy text of substrings.rb and paste into REPL.IT to run
## Technologies Used
* Ruby
## Challenges / Discoveries
USING #INCLUDE?

The main challenge I encounterd was to check for additional instances of the substring beyond the first one found using #include?. 
* I first tried #delete, which removed all instances so all hash values (if present at all) were 1. 
* Then, I tried to use #sub but it resulted in an infinite loop as the string was not actually altered. 
* I then used the bang method #sub! instead, which replaced the initial string irreperably, even when I had created a new temporary variable samble_string = full_string. 
* This was solved with assining the new temporary variable as sample_string = "" + full_string.

USING #SCAN

After the initial upload of a working-but-not-particularly-concise program, I discovered that the method #scan would be a more direct approach.
* Initially tried number = full_string.scan(current string) expecting a number, but discoverd that #scan returns an array
* added #length to make it work.

## Further Development
This project could be made more interesting by allowing the reference array dictionary to be inputed by the user, and/or pointing the program to an existing website for evaluation.
