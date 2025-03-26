# Number-And-Digit-Operations
These functions focus on manipulating numbers, performing digit-based calculations, or solving numerical puzzles.

Functions written by Eleni Christoforidou in MATLAB R2022b.

**digit_sum:** This is a recursive function that sums the individual digits of an input number.

**small_elements:** The function takes as input an array named X that is a matrix or a vector. The function identifies those elements of X that are smaller than the product of their two indexes. For example, if the element X(2,3) is 5, then that element would be identified because 5 is smaller than 2 * 3. The output of the function gives the indexes of such elements found in column-major order. It is a matrix with two columns. The first column contains the row indexes, while the second column contains the corresponding column indexes. For example, the statement indexes=small_elements([1 1; 0 4; 6 5], will make indexes equal to [2 1; 1 2; 3 2]. If no such element exists, the function returns an empty array.

**halfsum:** The function takes as input an at most two-dimensional array A and computes the sum of the elements of A that are in the lower right triangular part of A, that is, elements in the counter-diagonal (going from the bottom left corner, up and to the right) and elements that are to the right of it. For example, if the input is [1 2; 3 4; 5 6; 7 8], then the function would return 21.

**max_product:** The function takes v, a vector and n, a positive integer, as inputs and computes the largest product of n consecutive elements of v. It returns the product and the index of the element of v that is the first term of the product. If there are multiple such products in v, the function must return the one with the smallest starting index. If v has fewer than n elements, the function returns 0 and -1, respectively.

**approximate_e:** The function computes Euler's number, e. Instead of going to infinity, the function stops at the smallest k for which the approximation differs from exp(1) (i.e., the value returned by MATLAB’s built-in function) by no more than the positive scalar, delta, which is the input argument. The first output of the function is the approximate value of e, while the second is k (see attached image for what k is in the formula).

**smallest_multiple:** The function returns a uint64, the smallest positive number that is evenly divisible by all of the numbers from 1 to n where n is a positive integer scalar. If the result would be greater than what can be represented as a uint64, the function returns 0. For example, 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

**huge_add:** The function adds together two positive integers of any length specified as character arrays using decimal notation. The output argument is the result and it is a character array. The inputs must contain digits only (no commas, spaces or any other characters). If any of these assumptions are violated by the input, the function returns the number -1. The function also works for numbers that are larger than what can be represented as a number in MATLAB.

**digit_counter:** The function takes the name of a text file as input and returns the number of digits (i.e., any of the characters 0 to 9) that the file contains. If there is a problem opening the file, the function returns -1.
