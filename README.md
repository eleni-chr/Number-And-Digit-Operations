# Number-And-Digit-Operations
These functions focus on manipulating numbers, performing digit-based calculations, or solving numerical puzzles.

Functions written by Eleni Christoforidou in MATLAB R2022b.

**digit_sum:** This is a recursive function that sums the individual digits of an input number.

**small_elements:** The function takes as input an array named X that is a matrix or a vector. The function identifies those elements of X that are smaller than the product of their two indexes. For example, if the element X(2,3) is 5, then that element would be identified because 5 is smaller than 2 * 3. The output of the function gives the indexes of such elements found in column-major order. It is a matrix with two columns. The first column contains the row indexes, while the second column contains the corresponding column indexes. For example, the statement indexes=small_elements([1 1; 0 4; 6 5], will make indexes equal to [2 1; 1 2; 3 2]. If no such element exists, the function returns an empty array.

**halfsum:** The function takes as input an at most two-dimensional array A and computes the sum of the elements of A that are in the lower right triangular part of A, that is, elements in the counter-diagonal (going from the bottom left corner, up and to the right) and elements that are to the right of it. For example, if the input is [1 2; 3 4; 5 6; 7 8], then the function would return 21.

**max_product:** The function takes v, a vector and n, a positive integer, as inputs and computes the largest product of n consecutive elements of v. It returns the product and the index of the element of v that is the first term of the product. If there are multiple such products in v, the function must return the one with the smallest starting index. If v has fewer than n elements, the function returns 0 and -1, respectively.

**smallest_multiple:** The function returns a uint64, the smallest positive number that is evenly divisible by all of the numbers from 1 to n where n is a positive integer scalar. If the result would be greater than what can be represented as a uint64, the function returns 0. For example, 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

**huge_add:** The function adds together two positive integers of any length specified as character arrays using decimal notation. The output argument is the result and it is a character array. The inputs must contain digits only (no commas, spaces or any other characters). If any of these assumptions are violated by the input, the function returns the number -1. The function also works for numbers that are larger than what can be represented as a number in MATLAB.

**digit_counter:** The function takes the name of a text file as input and returns the number of digits (i.e., any of the characters 0 to 9) that the file contains. If there is a problem opening the file, the function returns -1.

**approximate_e:** The function computes Euler's number, e. Instead of going to infinity, the function stops at the smallest k for which the approximation differs from exp(1) (i.e., the value returned by MATLAB’s built-in function) by no more than the positive scalar, delta, which is the input argument. The first output of the function is the approximate value of e, while the second is k (see attached image for what k is in the formula).

![figure](https://github.com/eleni-chr/Number-And-Digit-Operations/blob/master/Euler's%20number%20formula.png)

**integerize:** The function takes as its input a matrix A of integers of type double, and returns the name of the “smallest” signed integer class to which A can be converted without loss of information. If no such class exists, the text 'NONE' is returned. For example, if the smallest element of A is -100 and the largest is +100, then the function would return 'int8'. As another example, if there is an element of A equal to -1e20, then the function would return 'NONE'.

**exp_average:** The function computes the “exponentially weighted moving average” of a sequence of scalars. The input sequence is provided to the function one element at a time and the function returns the current average each time.

**fare:** The function computes the bus fare one must pay in a given city based on the distance travelled. Here is how the fare is calculated: the first mile is $2. Each additional mile up to a total trip distance of 10 miles is 25 cents. Each additional mile over 10 miles is 10 cents. Miles are rounded to the nearest integer other than the first mile which must be paid in full once a journey begins. Children 18 or younger and seniors 60 or older get a 20% discount. The inputs to the function are the distance of the journey and the age of the passenger in this order. The function returns the fare in dollars, e.g., 2.75 would be the result returned for a 4-mile trip with no discount.
