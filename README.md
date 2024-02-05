# WordExploder
Exploding a list of words for easier searching.\
Currenly only using English words and the standard A-Z alphabet.

## Word File
This project uses the [`words_alpha.txt`](https://github.com/dwyl/english-words/blob/master/words_alpha.txt) file from
dwyl's english-words repo.

## Requirements
* Microsoft SQL Server

## Steps
1. Create a directory, e.g. `C:\MyCode\WordExploder`.
1. Download the `words_alpha.txt` into the new directory.
1. Run the `CreateWordExploderDB.sql` script on your database server.
1. Run the `CreateWordsExplodedTable.sql` script on your database server.
1. Edit the `PopulateWordExploder.sql` file in your and update the `wordfile` variable to point to the new directory.
1. Run the `PopulateWordExploder.sql` script.

## WHY?
I find this database handy when trying to solve puzzles. I can quickly search for words if I know the length of the word, even better if I know the location of a character.\
The bigger plan is use this in a planned application that solved anagrams and helps with Wordle.


## Future plans
* Make the import work with multiple languages.
* Extend to include other characters, like hyphens and apostrophes.
