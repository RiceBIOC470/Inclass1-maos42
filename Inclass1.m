% InClass1: some simple excerises to get started with MATLAB. Please complete by
% the second class. Answer questions in comments and return assignment via
% github
%% numbers vs strings
% Run the following two sections. explain why one gives a sensible result and the other doesn't
% Can you explain the value of the variable b? 
x = 1; 
y = x + x
%%
a = '1';
b = a+a

%Miguel Angel: The first one, you are defining X as a numerical value, so it is equal
%one. Then, y is 1+1 which equals 2. However, on the second section you are
%introducing 1 by putting it between the single quotes, not the numerical value, that is why it
%doesn't result as a 2, like the first section. 
%% concatenation
% what is being done by the following statements? what is the difference between x2 and a2? 
% what is the difference between x2 and x2b (hint run the size command on
% these arrays and explain the results). 

x2 = [x x]

a2 = [a a]

x2b = [x; x]

%Miguel Angel: by putting the variables inside the [ ], you are setting up
%a matrix. However, since x is defined as 1 (the numerical value) it shows up separated. 
%Where a2 is brought up by a, which we previously defined as '1' therefore is not a numerical value and shows up
%differently. The difference between x2 and x2b is that x2b has a semicolon
%in between, which makes the matrix displays vertically.

%% = vs ==, isequal
% explain why the identical commands with the == commands give different answers 
% hint: check the values of a and b as you execute the following statements
% if necessary. 
a = 1; 
b =2; 

a == b
a = b;
a == b

%Miguel Angel: because you are firstly stating that a=1 and b=2 when you
%execute a==b(line 30) it gives you a FALSE result, because 1 it's not equal 2. But
%on the next line, you are redifining that a=b, therefore, doesn't matter
%that a and b had different values previously, now they are equal, that is
%why on the final line, a==b(line 32) will give you a TRUE result.

%explain the results of the following operations:
a = [1, 2, 4];
b = [0,2,7];
a == b

%Miguel Angel: The resut is 0 1 0. and that is because it is comparing the
%values of each column, 1 is not equal 0, therefore the values shows FALSE
%(zero). On the next column, 2 is 2, so it throws back a TRUE (one)
%result. On the last column is the same as the first, 4 is not equal 7,
%therefore is FALSE.

%explain why this gives an error:

b = [2, 3];
a == b

%Miguel Angel: This gives an error because the matrix is not of the same dimensions.
%Since we stated that a is a 3 value row, it cannot be compared against a 2
%value row. 

%explain why this does not give an error
b = 2;
a == b

%Miguel Angel: here you are stating to compare for the value 2 in matrix
%a, since the second vale is b, that is why it throws a TRUE result.
%Basically, you are commanding to look for the 2 in the 1,2,4 matrix

%%  : operator 
%(hint for the following type "help colon" at the command line to see
% how the ":" operator works
% the following makes an array of the numbers from one to ten: 
oneToTen = 1:10;

%here are two ways to make the array of numbers from 1 to twenty
%explain how the second line works.
1:20
[oneToTen, oneToTen+10]

%Miguel Angel: the second line works because you are first stating to
%enlist the numbers from 1 to 10, and then, when you add +10, it is
%enlisting the same numbers but adding a 10. So technically the second 
%part of the second line is 1+10,2+10,3+10...10+10. That is why in the end
%it gives you the same array as 1:20. 

% do each of the following in two different ways, by manipulating the array
% oneToTen and by defining it concisely from scratch

% 1. even numbers from two to twenty
oneToTen=2:2:20;
oneToTen=1:10
[oneToTen*2];

% 2. odd numbers from one to nineteen
oneToTen=1:2:20;
oneToTen=1:10
[oneToTen*2-1];

% 3. Even numbers in reverse order from twenty to two (hint lookup the
% matlab function fliplr)
oneToTen=20:-2:2;
oneToTen=fliplr(2:2:20);

% explain why the fliplr funciton no longer works and find a different
% matlab function that performs an equivalent function on the same array
oneToTen = oneToTen';
fliplr(oneToTen)'

%This is because you already making oneToTen a vertical set of numbers, so
%when you add the fliplr command, it doesn't flip them because there is no
%other column to flip with. Fliplr means a flip Left-Right, sort of mirroring.
%You have to use a flip up-down in order to achieve an inverted column.

flipud(oneToTen)

%% matrices, . operator

%look at the matrix this defines. Note the other functions zeros, eye, and
%rand which can define matrices. 

m1 = ones(2);
m2 = 2*ones(2);

%explain the output of these two commands:
m1*m2
m1.*m2

%Miguel Angel: so the first output m1*m2, is a basic matrix multiplication,
%which means that the operation being performed is
%[(1*2)+(1*2),(1*2)+(1*2);(1*2)+(1*2),(1*2)+(1*2)] resulting in 
% a [4,4;4,4] matrix. 

%The second one is an element wise multiplication, which means that is a 
%simple multiplication from each element of each matrix=
%[(1*2),(1*2);(1*2),(1*2)] which is why the result is [2,2:2,2]

%explain this command:
m2./m1

%Miguel Angel: this is a division of the elements from m2 to m1. [(2/1),(2/1);(2/1),(2/1)]
%that is why the answer gives a [2,2:2,2] matrix.

%extra credit: explain why this command gives a warning:
m2/m1

%Miguel Angel: this gives a warning because the matrix we create doesn't have an
%inverse. When the values of the matrix are repeated, it becomes singular.
%Therefore it cannot be solved (rank deficient)

%% access particular elements and groups of elements

%define a random matrix

rand_nums = rand(5);

%Miguel Angel: matrix: 

%   0.8147    0.0975    0.1576    0.1419    0.6557
%   0.9058    0.2785    0.9706    0.4218    0.0357
%   0.1270    0.5469    0.9572    0.9157    0.8491
%   0.9134    0.9575    0.4854    0.7922    0.9340
%   0.6324    0.9649    0.8003    0.9595    0.6787

%explain what is being done in each of the following lines

rand_nums(2,3)

%Miguel Angel: Here we are picking up the value of the second row, third column = 0.9706

rand_nums(2:4,3)

%Miguel Angel: Here we are selecting the values from the second to the fourth row
%within the third column = 0.9706, 0.9572, 0.4854

rand_nums(1:2,3:4)

%Miguel Angel: here we are picking up the values from the first and second
%row within the third and fourth column= 0.1576, 0.9706, 0.1419, 0.4218

rand_nums(:,2)

%Miguel Angel: This is for showing up all the values in column 2 (will show
%vertically)

rand_nums(1,:)

%Miguel Angel: This is for showing up all the values in row 1 (will show
%horizontally)

rand_nums(:,[1 3 5])

%Miguel Angel: Here we are commanding to show up all the values from 
%the columns 1, 3 and 5.

