# Word Search Count

A text-analysis program that counts how many times each word appears across a directory of text documents. The user can query any word and see every file that contains it along with its count, or be told the word was not found.

The data structures are built from scratch: an array of word objects where each word holds a pointer to a linked list of file/count entries. This demonstrates manual linked list and array-based data structure design.

## Run

`./wordsearchcount <directory-of-text-files>`
