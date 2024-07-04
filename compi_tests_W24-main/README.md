## Tests failing survay
If you fail a test, you can fill this survay: (for HW5)

https://forms.gle/2YTDWPPEgowLpKVA6

The use is that problem with the tests themselves might be discuvered this way.

If you know the issue causing the failure on this test and line you can publish it on the form.

If you fail a test and someone published the cause you would be able to see it.



## Running the tests

Use python3.6 or above



running examples: 
Note that all examples assume you are running from the runner.py directory.

run all tests and abort on first fail:

`python3 runner.py ../compy_hw5/hw5.out`

run all tests and continue when failing:

`python3 runner.py ../compy_hw5/hw5.out --dont_abort`

by default the error channel is part of the output, to ignore it:

`python3 runner.py ../compy_hw5/hw5.out --exclude_error`

run tests 1, 2 and 3:

`python3 runner.py ../compy_hw5/hw5.out --test_num 1 2 3`

remove all .res files from the tests dir:

`python3 runner.py ../compy_hw5/hw5.out --clean`

run all tests from assignment 2:

`python3 runner.py ../compy_hw2/hw2.out --hw_num 2`


## Tests structure H5:
tests 1 and 2: Segel tests
test 3 printi and simple arithmatic expresions
test 4 intergers stored as variables
tests 5 6 7 8 print(STRING), IF, IF ELSE and boolian experessions
tests 9 10 loops
test 11 bytes
test 12, 13 whiles inside whiles, boolians as variables.
tests 14, 17 readi
tests 15, 16 more stuff



## Tests structure HW2:
tests 0 - 9: Hand crafted test to check basic rules order and automata. More easy to read.
tests 10 - 11: Longer tests with easy to read structure for easier debuging.
tests 12 - 49: Longer tests with no white space variation and no errornus gramers / lexemas.
tests 50 - 99: Inserted random tokens into the tests for non vaiable grammers.
tests 100 - 199: Insterd random charectes into the tests for non vaiable grammers and lexamas.
tests 200 - 399: Inserted random charecters and tokens into the tests with varing whitesapces formats, for maximal cheotic outputs that should stiil have some output.


## Tests structure HW1:

tests 0 - 49: simple tests without strings, comments or expected errors.

tests 50 - 99: tests with mainly strings

tests 100 - 109: tests with strings and comments

tests 110 - 999: tests for errors and their edge cases
