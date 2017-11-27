##Welcome to my github!

You can review my homework in the following links

- [hw09](https://github.com/xinyaofan/foofactors)

###Report of Process
- In this homework, I find it not difficult to write these functions. When writing functions, I paid attentiaon to check validity of the input by using if, stop. It seems that my funtion doesn't need any defaults. When I write down an exported function, I use roxygen2:roxygenize() to document these functions. I exported three fucntions: dect_fac() to dect a "true" factor, reorder_desc() to reoder factors in a descending order, set_level to set levels of a factor in the order appeared in data. Then, I write test files to check for each function. In each test file, there are more than 3 units test for each function. What's more, I also test whether my function could deal with the wrong input.(wrong type or multiple input). All my functions passed my test. Finally, I give some simple examples in readme.rmd file to explain how to use my functions in this package, after "knit", md file generated. I put the same content in my vigenette file.

- I use check to test my package, and receive 0 error and 0 warning.
