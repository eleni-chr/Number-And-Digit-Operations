function output = digit_sum(input)

%Function written by Eleni Christoforidou in MATLAB R2022b.

%This is a recursive function that sums the individual digits of an input number.

a=input;
last_digit=mod(a,10);
if input<100
    num1=fix(input/10);
    num2=mod(input,10);
    output=num1+num2;
    return;
else
    next=fix(a/10);
    output=digit_sum(next)+last_digit;
end
end