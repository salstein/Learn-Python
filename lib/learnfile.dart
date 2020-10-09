var introduction = {
  0: [
    """

Python was developed by Guido van Rossum in the late eighties and early nineties at the National Research Institute for Mathematics and Computer Science in the Netherlands. 
 Python 1.0 was released in November 1994. In 2000, Python 2.0 was released. Python 2.7.11 is the latest edition of Python 2.
 Meanwhile, Python 3.0 was released in 2008. Python 3 is not backward compatible with Python 2. The emphasis in Python 3 had been on the removal of duplicate programming constructs and modules so that "There should be one – and preferably only one -- obvious way to do it." Python 3.6.5 is the latest version of Python 3. 
""",
    """

Python's feature highlights include: 
i.	Easy-to-learn 
ii.	Easy-to-read
iii.	Easy-to-maintain 
iv.	A broad standard library Interactive Mode 
v.	Portable 
vi.	Extendable 
vii.	Databases 
viii.	GUI Programming 
ix.	Scalable
""",
    """Apart from the above mentioned features, Python has a big list of good features, few are listed below: 

i.	Support for functional and structured programming methods as well as OOP. 

ii.	It can be used as a scripting language or can be compiled to byte-code for building large applications.

iii.	Very high-level dynamic data types and supports dynamic type checking.

iv.	Supports automatic garbage collection. 

v.	It can be easily integrated with C, C++, COM, ActiveX, CORBA, and Java. 
 """,
    """The main goal of Python was to reduce the learning curve by choosing a syntax that is understandable as plain English""",
    """

•	reserved words designed for special purposes.
•	Convey meaning to the compiler or interpreter.
•	Each keyword has a special meaning and a specific operation. 
•	Keywords cannot be used as variable. 

Examples of keyword in python are given below:

and , exec, Not, as, finally, or, assert, for , pass, break, from, print, class, global, raise, continue, if, return, def, import, try, del, in, while, elif, is, with, else, lambda, yield, except…
""",
    """

A Python identifier is a name used to identify a variable, function, class, module or other object. An identifier starts with a letter A to Z or a to z or an underscore ( _ ) followed by zero or more letters, underscores and digits (0 to 9). 
""",
    """
•	The only special character that can be used in identifiers is the underscore (_).
•	You cannot use keyword in python as an identifier.
•	Python is case sensitive that is “A” and “a” are not the same. 
•	Class names start with an uppercase letter. All other identifiers start with a lowercase letter. 
•	 Starting an identifier with a single leading underscore indicates that the identifier is private. 
•	 Starting an identifier with two leading underscores (_) indicates a strong private identifier. 
•	 If the identifier also ends with two trailing underscores, the identifier is a language defined special name. 
""",
    """ 
A hash sign (#) that is not inside a string literal is the beginning of a comment. All characters after the #, up to the end of the physical line, are part of the comment and the 
Python interpreter ignores them.
Multiline codes can also be commented by enclosing the bock of code in triple single Quote, or triple Double Quote. 
""",
    """ 
Literals are the data given or stored in a variable.
Types of literals in python
i. String Literal
ii. Numeric Literal
iii. Boolean Literal
iv. Special literal
 """,
    """
A string literal can be formed by enclosing text in quotes.
Both single and double quotes can be used.
""",
    """
characters are selected from digits 0 – 9, sign characters of +, -, and decimal point.
Integer:
numbers that does not contain decimal point, this can be positive or negative e.g 21, + 21, - 21
Float:
 real numbers with both integer and fractional part e.g 21.034
Complex:
 numbers in form a+bj. Where “a” forms the real part and “b” forms the imaginary part.
""",
    """
  True, or False values. """,
    """The only special literal in python is None which is used to indicate s field that is not created.""",
  ],
  1: [
    """ A Brief History of Python
""",
    """Python Features
""",
    """More about python Features
 """,
    """ Goal of Python""",
    """Keywords
""",
    """Identifiers
""",
    """Rules for naming Identifiers
""",
    """Comments in Python 
""",
    """Literals in python
 """,
    """String literals
""",
    """Numeric literals
""",
    """Boolean  """,
    """Special literal""",
  ]
};

var basic = {
  0: [
    """Operators are symbols in python that carry out some basic computation.
The value that the operator operate on is called the operand, while the result given after the computation is known as the output of the operation.
""",
    """>>> 2+3
5
Here, + is the operator that performs addition, 2 and 3 are the operands and 5 is the output of the operation.
""",
    """
•	Arithmetic Operators
•	Comparison operators
•	Logical operators 
•	Bitwise operators
•	Assignment Operators  
•	Special operators 
""",
    """These operators re used to carry out basic arithmetic Operations in python
Examples are:
+  (Addition) : Adds two Operands
-  (Subtraction): Subtract operand from the left
*  (Multiplication) :   Multiply two operands
/   (Division )  : Divide left operand by the right one (always result in a float).
//  (Floor Division):  Division that results into whole number It tells the number of times the right operand can go in the left one .
**  (Exponent): Left operand raised to the power of the right.

""",
    """Order of operation follows the regular PEMDAS
Parenthesis, Exponent, Multiplication, Division, Addition, Subtraction

""",
    """To show the order of operation of Python 

>>> 2*3+(3+4)/5
7.4
""",
    """>>>2 + 3 
 Output  5
3 added to 2 gives 5

>>>5 – 3 

Output  2

3 Subtracted from 5 gives 2


>>> 5*3 
 Output 15
5 multiplied by 3 is 15


>>>15/3
Output 5.0
15 divided by 3 gives 5.0, The division operator returns a float

>>> 7%2
Output 1
>>> 4%2
Output 1

It returns the remainder when the left operand is divided by the right on 

>>> 20 // 3
Output 6
3 goes in 20 six times.

>>> 2**3
8
2 to the power of 3

>>> 2*3+(3+4)/5
Output 7.4
Arithmetic operation follows PEMDAS 
""",
    """Used to compare values. It either returns True or False according to the condition.
> (Greater than): 
True if the left operand is greater than the right one
<      (Less than )  :
True if the left operand is less than the right one. 

= =  ( Equal to ):
True if both operands are equal
!=    (Not Equal to) :
True if both operands are not equal

>=   (Greater than or equal to):
True if left operand is greater than or equal to the right

<=   (less than or equal to ) :
True if left operand is less than or equal to the right"""
        """>>> 2 <= 3
True
""",
    """Logical operators are the operators in python used for logical computation they are: 
‘and’, ‘or’, ‘not’ operators. 
""",
    """The and Operator Operates on two Operands (5>3 and 4<3), it gives True result if both operands are true. In the example give here the output False. Though 5 is greater than 3 but 4 is not less than 3.""",
    """The or Operator Operates on two Operands (5>3 or 4<3), it gives False result if both operands are false. In the example give here the output True. Because one of the operand is true."""
        """this operator Operates on one operand; it returns the complement of the operand. For example 

>>>not True 
False

""",
    """Assignment operators are used in python to assign values to variables.

Examples are :
= , += , -= , *=, /= , %=, //=, **=

""",
    """x += 5 , this is equivalent to x = x+5 

x -= 5 , this is equivalent to x = x-5 

x *= 5 , this is equivalent to x = x*5 

x /= 5 , this is equivalent to x = x/5 

x %= 5 , this is equivalent to x = x%5 

""",
    """Python language offers some special type of operators like the

 identity operator (‘is’, and ‘is not’)  and 

 the Membership operators (‘in’, and ‘not in’).
"""
  ],
  1: [
    "Operators in Python",
    "Example:",
    "Types of Operators in Python",
    "Arithmetic Operators",
    "Order of Operation",
    "Example:",
    "Examples:",
    "Comparison operators",
    "Example:",
    "Logical operators",
    "and Operator",
    "or Operator",
    "not Operator ",
    "Assignment Operators",
    "Example:",
    "Special operators "
  ]
};

var datatypes = {
  0: [
    """Python supports integers, floating point numbers and complex numbers. They are defined as int, float and complex class in Python.
Integers and floating points are separated by the presence or absence of a decimal point. 5 is integer whereas 5.0 is a floating point number.
Complex numbers are written in the form, x + yj, where x is the real part and y is the imaginary part.
We can use the type() function to know which class a variable or a value belongs to and isinstance() function to check if it belongs to a particular class.
1.	a = 5
2.	# Output: <class 'int'>
3.	print(type(a))
4.	# Output: <class 'float'>
5.	print(type(5.0))
6.	# Output: (8+3j)
7.	c = 5 + 3j
8.	print(c + 3)
9.	# Output: True
10.	print(isinstance(c, complex))



While integers can be of any length, a floating point number is accurate only up to 15 decimal places (the 16th place is inaccurate).
Numbers we deal with everyday are decimal (base 10) number system. But computer programmers (generally embedded programmer) need to work with binary (base 2), hexadecimal (base 16) and octal (base 8) number systems.
""",
    """We can convert one type of number into another. This is also known as coercion.
Operations like addition, subtraction coerce integer to float implicitly (automatically), if one of the operand is float.
1.	>>> 1 + 2.0
2.	3.0
We can see above that 1 (integer) is coerced into 1.0 (float) for addition and the result is also a floating point number.
We can also use built-in functions like int(), float() and complex() to convert between types explicitly. These function can even convert from strings.
1.	>>> int(2.3)
2.	2
3.	>>> int(-2.8)
4.	-2
5.	>>> float(5)
6.	5.0
7.	>>> complex('3+5j')
8.	(3+5j)
When converting from float to integer, the number gets truncated (integer that is closer to zero).
""",
    """In Python a  string is a sequence of characters. A character is simply a symbol. For example, the English language has 26 characters.
Computers do not deal with characters, they deal with numbers (binary). Even though you may see characters on your screen, internally it is stored and manipulated as a combination of 0's and 1's.
This conversion of character to a number is called encoding, and the reverse process is decoding. ASCII and Unicode are some of the popular encoding used.
In Python, string is a sequence of Unicode character. Unicode was introduced to include every character in all languages and bring uniformity in encoding.
""",
    """Strings can be created by enclosing characters inside a single quote or double quotes. Even triple quotes can be used in Python but generally used to represent multiline strings and docstrings.
1.	# all of the following are 
2.	equivalent
3.	my_string = 'Hello'
4.	print(my_string)
5.	my_string = "Hello"
6.	print(my_string)
7.	my_string = '''Hello'''
8.	print(my_string)
9.	# triple quotes string can 
10.	extend multiple lines
11.	my_string = \"""Hello, 
12.	welcome to 
13.	the world of 
14.	Python\"""
When you run the program, the output will be:
Hello
Hello
Hello
Hello, welcome to
           the world of Python
""",
    """We can access individual characters using indexing and a range of characters using slicing. Index starts from 0. Trying to access a character out of index range will raise an IndexError. The index must be an integer. We can't use float or other types, this will result into TypeError.
Python allows negative indexing for its sequences.
The index of -1 refers to the last item, -2 to the second last item and so on. We can access a range of items in a string by using the slicing operator (colon).
str = 'programiz'
print('str = ', str)
#first character
print('str[0] = ', str[0])
#last character
print('str[-1] = ', str[
-1])
#slicing 2nd to 5th 
character
print('str[1:5] = ', str[1
:5])
#slicing 6th to 2nd last 
character

If we try to access index out of the range or use decimal number, we will get errors.
1.	# index must be in range
2.	>>> my_string[15]  
3.	...
4.	IndexError: string index out of range
5.	
6.	# index must be an integer
7.	>>> my_string[1.5] 
8.	...
9.	TypeError: string indices must be integers
Slicing can be best visualized by considering the index to be between the elements as shown below.
If we want to access a range, we need the index that will slice the portion from the string.
""",
    """Strings are immutable. This means that elements of a string cannot be changed once it has been assigned. We can simply reassign different strings to the same name.
1.	>>> my_string = 'programiz'
2.	>>> my_string[5] = 'a'
3.	...
4.	TypeError: 'str' object does not support item assignment
5.	>>> my_string = 'Python'
6.	>>> my_string
7.	'Python'
We cannot delete or remove characters from a string. But deleting the string entirely is possible using the keyword del.
1.	>>> del my_string[1]
2.	...
3.	TypeError: 'str' object doesn't support item deletion
4.	>>> del my_string
5.	>>> my_string
6.	...
7.	NameError: name 'my_string' is not defined
""",
    """There are many operations that can be performed with string which makes it one of the most used datatypes in Python.
Concatenation of Two or More Strings
Joining of two or more strings into a single one is called concatenation.
The + operator does this in Python. Simply writing two string literals together also concatenates them.
The * operator can be used to repeat the string for a given number of times.

str1 = 'Hello'
str2 ='World!'
# using +
print('str1 + str2 = ', 
str1 + str2)
# using *
print('str1 * 3 =', str1 * 
3)

Writing two string literals together also concatenates them like + operator.
If we want to concatenate strings in different lines, we can use parentheses.
1.	>>> # two string literals together
2.	>>> 'Hello ''World!'
3.	'Hello World!'
4.	
5.	>>> # using parentheses
6.	>>> s = ('Hello '
7.	...      'World')
8.	>>> s
9.	'Hello World'
""",
    """Using for loop we can iterate through a string. Here is an example to count the number of 'l' in a string.


count = 0
for letter in 'Hello World'
:
    if(letter == 'l'):
        count += 1
print(count,'letters found'
)
""",
    """We can test if a sub string exists within a string or not, using the keyword in.
1.	>>> 'a' in 'program'
2.	True
3.	>>> 'at' not in 'battle'
4.	False
""",
    """Various built-in functions that work with sequence, works with string as well.
Some of the commonly used ones are enumerate() and len(). The enumerate() function returns an enumerate object. It contains the index and value of all the items in the string as pairs. This can be useful for iteration.
Similarly, len() returns the length (number of characters) of the string.

str = 'cold'
# enumerate()
list_enumerate = list
(enumerate(str))
print('list(enumerate(str) 
= ', list_enumerate)
#character count
print('len(str) = ', len
(str))
""",
    """If we want to print a text like -He said, "What's there?"- we can neither use single quote or double quotes. This will result into SyntaxError as the text itself contains both single and double quotes.
1.	>>> print("He said, "What's there?"")
2.	...
3.	SyntaxError: invalid syntax
4.	>>> print('He said, "What's there?"')
5.	...
6.	SyntaxError: invalid syntax
One way to get around this problem is to use triple quotes. Alternatively, we can use escape sequences.
An escape sequence starts with a backslash and is interpreted differently. If we use single quote to represent a string, all the single quotes inside the string must be escaped. Similar is the case with double quotes. Here is how it can be done to represent the above text.
# using triple quotes
print('''He said, "What's 
there?"''')
# escaping single quotes
print('He said, "What\'s 
there?"')
# escaping double quotes
print("He said, \"What's 
there?\"")
""",
    """Sometimes we may wish to ignore the escape sequences inside a string. To do this we can place r or R in front of the string. This will imply that it is a raw string and any escape sequence inside it will be ignored.
1.	>>> print("This is \x61 \ngood example")
2.	This is a
3.	good example
4.	>>> print(r"This is \x61 \ngood example")
5.	This is \x61 \ngood example
""",
    """There are numerous methods available with the string object. The format() method that we mentioned above is one of them. Some of the commonly used methods are lower(), upper(), join(), split(), find(), replace() etc…
>>> "BdgCode".lower()
1.	'bdgcode'
2.	>>> "BdgCode".upper()
3.	'BDGCODE'
4.	>>> "This will split all words into a list".split()
5.	['This', 'will', 'split', 'all', 'words', 'into', 'a', 'list']
6.	>>> ' '.join(['This', 'will', 'join', 'all', 'words', 'into', 'a', 'string'])
7.	'This will join all words into a string'
8.	>>> 'Happy New Year'.find('ew')
9.	7
10.	>>> 'Happy New Year'.replace('Happy','Brilliant')
11.	'Brilliant New Year'
"""
  ],
  1: [
    "Number Data Type in Python",
    "Type Conversion",
    "Python Strings",
    "How to create a string in Python?",
    "How to access characters in a string?",
    "How to change or delete a string?",
    "Python String Operations",
    "Iterating Through String",
    "String Membership Test",
    "Built-in functions to Work with Python",
    "Python String Formatting Escape Sequence",
    "Raw String to ignore escape sequence",
    "Common Python String Methods"
  ]
};

// ignore: non_constant_identifier_names
var data_structure = {
  0: [
    """Python offers more sophisticated datatypes referred to as Data structures. In this section we’ll learn about data Structures. 
They are of four types:
1.	List,
2.	Tuple,
3.	Set, and
4.	Dictionaries
""",
    """List is one of the most frequently used and very versatile datatype used in Python.  Here you’ll learn about python lists.""",
    """In Python programming, a list is created by placing all the items (elements) inside a square bracket [ ], separated by commas.
It can have any number of items and they may be of different types (integer, float, string, tuple, dictionaries etc.). 
A list can also to a list as an element. This is known as a nested list.
1.	# empty list
2.	my_list = []
3.	
4.	# list of integers
5.	my_list = [1, 2, 3]
6.	
7.	# list with mixed datatypes
8.	my_list = [1, "Hello", 3.4]
Also, a list can even have another list as an item. This is called nested list.

# nested list
my_list = ["mouse", [8, 4, 6], ['a']]
""",
    """There are various ways in which we can access the elements of a list.
The index of the items or elements in the list is used to access the items. What is an index? 
Nested List 
Nested list is a type of list which one of more of its element is/ are lists an example of nested list is given below
my_list = ["mouse", [8, 4, 6], ['a']]

List Index
The index of a list is the position each element in the list attains. 
We can use the index operator [] to access an item in a list. Index starts from 0. So, a list having 5 elements will have index from 0 to 4.
Trying to access an element other that this will raise an IndexError. The index must be an integer. We can't use float or other types; this will result into TypeError.
Nested lists are accessed using nested indexing.
1.	my_list = ['p','r','o','b','e']
2.	# Output: p
3.	print(my_list[0])
4.	
5.	# Output: o
6.	print(my_list[2])
7.	
8.	# Output: e
9.	print(my_list[4])
10.	
11.	# Error! Only integer can be used for indexing
12.	# my_list[4.0]
13.	
14.	# Nested List
15.	n_list = ["Happy", [2,0,1,5]]
16.	
17.	# Nested indexing
18.	
19.	# Output: a
20.	print(n_list[0][1])    
21.	
22.	# Output: 5
23.	print(n_list[1][3])

Negative indexing
Python allows negative indexing for its sequences. The index of -1 refers to the last item, -2 to the second last item and so on.
1.	my_list = ['p','r','o','b','e']
2.	
3.	# Output: e
4.	print(my_list[-1])
5.	
6.	# Output: p
7.	print(my_list[-5])
""",
    """We can access a range of items in a list by using the slicing operator (colon).
1.	my_list = ['p','r','o','g','r','a','m','i','z']
2.	# elements 3rd to 5th
3.	print(my_list[2:5])
4.	
5.	# elements beginning to 4th
6.	print(my_list[:-5])
7.	
8.	# elements 6th to end
9.	print(my_list[5:])
10.	
11.	# elements beginning to end
12.	print(my_list[:])
""",
    """List are mutable, meaning, their elements can be changed unlike string or tuple.
We can use assignment operator (=) to change an item or a range of items.
1.	# mistake values
2.	odd = [2, 4, 6, 8]
3.	
4.	# change the 1st item    
5.	odd[0] = 1            
6.	
7.	# Output: [1, 4, 6, 8]
8.	print(odd)
9.	
10.	# change 2nd to 4th items
11.	odd[1:4] = [3, 5, 7]  
12.	
13.	# Output: [1, 3, 5, 7]
14.	print(odd)                   


We can add one item to a list using append() method or add several items using extend() method.
1.	odd = [1, 3, 5]
2.	
3.	odd.append(7)
4.	
5.	# Output: [1, 3, 5, 7]
6.	print(odd)
7.	
8.	odd.extend([9, 11, 13])
9.	
10.	# Output: [1, 3, 5, 7, 9, 11, 13]
11.	print(odd)
We can also use + operator to combine two lists. This is also called concatenation.
The * operator repeats a list for the given number of times.
1.	odd = [1, 3, 5]
2.	
3.	# Output: [1, 3, 5, 9, 7, 5]
4.	print(odd + [9, 7, 5])
5.	
6.	#Output: ["re", "re", "re"]
7.	print(["re"] * 3)
Furthermore, we can insert one item at a desired location by using the method insert() or insert multiple items by squeezing it into an empty slice of a list.
1.	odd = [1, 9]
2.	odd.insert(1,3)
3.	
4.	# Output: [1, 3, 9] 
5.	print(odd)
6.	
7.	odd[2:2] = [5, 7]
8.	
9.	# Output: [1, 3, 5, 7, 9]
10.	print(odd)
""",
    """We can delete one or more items from a list using the keyword del. It can even delete the list entirely.
1.	my_list = ['p','r','o','b','l','e','m']
2.	
3.	# delete one item
4.	del my_list[2]
5.	
6.	# Output: ['p', 'r', 'b', 'l', 'e', 'm']     
7.	print(my_list)
8.	
9.	# delete multiple items
10.	del my_list[1:5]  
11.	
12.	# Output: ['p', 'm']
13.	print(my_list)
14.	
15.	# delete entire list
16.	del my_list       
17.	
18.	# Error: List not defined
19.	print(my_list)

We can use remove() method to remove the given item or pop() method to remove an item at the given index.
The pop() method removes and returns the last item if index is not provided. This helps us implement lists as stacks (first in, last out data structure).
We can also use the clear() method to empty a list.
1.	my_list = ['p','r','o','b','l','e','m']
2.	my_list.remove('p')
3.	
4.	# Output: ['r', 'o', 'b', 'l', 'e', 'm']
5.	print(my_list)
6.	
7.	# Output: 'o'
8.	print(my_list.pop(1))
9.	
10.	# Output: ['r', 'b', 'l', 'e', 'm']
11.	print(my_list)
12.	
13.	# Output: 'm'
14.	print(my_list.pop())
15.	
16.	# Output: ['r', 'b', 'l', 'e']
17.	print(my_list)
18.	
19.	my_list.clear()
20.	
21.	# Output: []
22.	print(my_list)
Finally, we can also delete items in a list by assigning an empty list to a slice of elements.
1.	>>> my_list = ['p','r','o','b','l','e','m']
2.	>>> my_list[2:3] = []
3.	>>> my_list
4.	['p', 'r', 'b', 'l', 'e', 'm']
5.	>>> my_list[2:5] = []
6.	>>> my_list
7.	['p', 'r', 'm']
""",
    """Methods that are available with list object in Python programming are :
They are accessed as list.method(). Some of the methods have already been used above.

Python List Methods

append() - Add an element to the end of the list

extend() - Add all elements of a list to the another list

insert() - Insert an item at the defined index

remove() - Removes an item from the list

pop() - Removes and returns an element at the given index

clear() - Removes all items from the list

index() - Returns the index of the first matched item

count() - Returns the count of number of items passed as an argument

sort() - Sort items in a list in ascending order

reverse() - Reverse the order of items in the list

copy() - Returns a shallow copy of the list

Some examples of Python list methods:
1.	my_list = [3, 8, 1, 6, 0, 8, 4]
2.	
3.	# Output: 1
4.	print(my_list.index(8))
5.	
6.	# Output: 2
7.	print(my_list.count(8))
8.	
9.	my_list.sort()
10.	
11.	# Output: [0, 1, 3, 4, 6, 8, 8]
12.	print(my_list)
13.	
14.	my_list.reverse()
15.	
16.	# Output: [8, 8, 6, 4, 3, 1, 0]
17.	print(my_list)
""",
    """List comprehension is an elegant and concise way to create a new list from an existing list in Python.
List comprehension consists of an expression followed by for statement inside square brackets.
Here is an example to make a list with each item being increasing power of 2.
1.	pow2 = [2 ** x for x in range(10)]
2.	
3.	# Output: [1, 2, 4, 8, 16, 32, 64, 128, 256, 512]
4.	print(pow2)
This code is equivalent to
1.	pow2 = []
2.	for x in range(10):
3.	   pow2.append(2 ** x)
A list comprehension can optionally contain more for or if statements. An optional if statement can filter out items for the new list. Here are some examples.
1.	>>> pow2 = [2 ** x for x in range(10) if x > 5]
2.	>>> pow2
3.	[64, 128, 256, 512]
4.	>>> odd = [x for x in range(20) if x % 2 == 1]
5.	>>> odd
6.	[1, 3, 5, 7, 9, 11, 13, 15, 17, 19]
7.	>>> [x+y for x in ['Python ','C '] for y in ['Language','Programming']]
8.	['Python Language', 'Python Programming', 'C Language', 'C Programming']
""",
    """List Membership Test
We can test if an item exists in a list or not, using the keyword in.
1.	my_list = ['p','r','o','b','l','e','m']
2.	
3.	# Output: True
4.	print('p' in my_list)
5.	
6.	# Output: False
7.	print('a' in my_list)
8.	
9.	# Output: True
10.	print('c' not in my_list)
________________________________________
Iterating Through a List
Using a for loop we can iterate though each item in a list.
1.	for fruit in ['apple','banana','mango']:
2.	    print("I like",fruit)
""",
    """A tuple in Python is similar to a list. The difference between the two is that we cannot change the elements of a tuple once it is assigned whereas, in a list, elements can be changed.""",
    """A tuple is created by placing all the items (elements) inside parentheses (), separated by commas. The parentheses are optional, however, it is a good practice to use them.
A tuple can have any number of items and they may be of different types (integer, float, list, string, etc.).

# Empty tuple
my_tuple = ()
print(my_tuple)  # Output: ()
# Tuple having integers
my_tuple = (1, 2, 3)
print(my_tuple)  # Output: (1, 2, 3) 
# tuple with mixed datatypes
my_tuple = (1, "Hello", 3.4)
print(my_tuple)  # Output: (1, "Hello", 3.4)  
# nested tuple
my_tuple = ("mouse", [8, 4, 6], (1, 2, 3))
# Output: ("mouse", [8, 4, 6], (1, 2, 3)) 
print(my_tuple)

A tuple can also be created without using parentheses. This is known as tuple packing.
my_tuple = 3, 4.6, "dog"
print(my_tuple)   # Output: 3, 4.6, "dog" 
# tuple unpacking is also possible
a, b, c = my_tuple
print(a)      # 3
print(b)      # 4.6 
print(c)      # dog 

Creating a tuple with one element is a bit tricky.
Having one element within parentheses is not enough. We will need a trailing comma to indicate that it is, in fact, a tuple.

my_tuple = ("hello")
print(type(my_tuple))  # <class 'str'>
# Creating a tuple having one element
my_tuple = ("hello",)  
print(type(my_tuple))  # <class 'tuple'> 
# Parentheses is optional
my_tuple = "hello",
print(type(my_tuple))  # <class 'tuple'> 
""",
    """There are various ways in which we can access the elements of a tuple.
1. Indexing
We can use the index operator [] to access an item in a tuple where the index starts from 0.
So, a tuple having 6 elements will have indices from 0 to 5. Trying to access an element outside of tuple (for example, 6, 7,...) will raise an IndexError.
The index must be an integer; so we cannot use float or other types. This will result in TypeError.
Likewise, nested tuples are accessed using nested indexing, as shown in the example below.



my_tuple = ('p','e','r','m','i','t')
print(my_tuple[0])   # 'p' 
print(my_tuple[5])   # 't'
# IndexError: list index out of range
# print(my_tuple[6])
# Index must be an integer
# TypeError: list indices must be integers, not float
# my_tuple[2.0]
# nested tuple
n_tuple = ("mouse", [8, 4, 6], (1, 2, 3))
# nested index
print(n_tuple[0][3])       # 's'
print(n_tuple[1][1])       # 4


2. Negative Indexing
Python allows negative indexing for its sequences.
The index of -1 refers to the last item, -2 to the second last item and so on.
my_tuple = ('p','e','r','m','i','t')
# Output: 't'
print(my_tuple[-1])
# Output: 'p'
print(my_tuple[-6])

________________________________________
3. Slicing
We can access a range of items in a tuple by using the slicing operator - colon ":".
my_tuple = ('p','r','o','g','r','a','m','i','z')
# elements 2nd to 4th
# Output: ('r', 'o', 'g')
print(my_tuple[1:4])
# elements beginning to 2nd
# Output: ('p', 'r')
print(my_tuple[:-7])
# elements 8th to end
# Output: ('i', 'z')
print(my_tuple[7:])
# elements beginning to end
# Output: ('p', 'r', 'o', 'g', 'r', 'a', 'm', 'i', 'z')
print(my_tuple[:])

Slicing can be best visualized by considering the index to be between the elements as shown below. So if we want to access a range, we need the index that will slice the portion from the tuple.
""",
    """Unlike lists, tuples are immutable.
This means that elements of a tuple cannot be changed once it has been assigned. But, if the element is itself a mutable datatype like list, its nested items can be changed.
We can also assign a tuple to different values (reassignment).
my_tuple = (4, 2, 3, [6, 5])
# TypeError: 'tuple' object does not support item assignment
# my_tuple[1] = 9
# However, item of mutable element can be changed
my_tuple[3][0] = 9    # Output: (4, 2, 3, [9, 5])
print(my_tuple)
# Tuples can be reassigned
my_tuple = ('p','r','o','g','r','a','m','i','z')
# Output: ('p', 'r', 'o', 'g', 'r', 'a', 'm', 'i', 'z')
print(my_tuple)

We can use + operator to combine two tuples. This is also called concatenation.
We can also repeat the elements in a tuple for a given number of times using the * operator.
Both + and * operations result in a new tuple.


# Concatenation
# Output: (1, 2, 3, 4, 5, 6)
print((1, 2, 3) + (4, 5, 6))
# Repeat
# Output: ('Repeat', 'Repeat', 'Repeat')
print(("Repeat",) * 3)
""",
    """As discussed above, we cannot change the elements in a tuple. That also means we cannot delete or remove items from a tuple.
But deleting a tuple entirely is possible using the keyword del.

my_tuple = ('p','r','o','g','r','a','m')
# can't delete items
# TypeError: 'tuple' object doesn't support item deletion
# del my_tuple[3]
# Can delete an entire tuple
del my_tuple
# NameError: name 'my_tuple' is not defined
print(my_tuple)
""",
    """Methods that add items or remove items are not available with tuple. Only the following two methods are available.
Method	Description
count(x)
Returns the number of items x
index(x)
Returns the index of the first item that is equal to x
Python Tuple Method
Some examples of Python tuple methods:
my_tuple = ('a','p','p','l','e',)
print(my_tuple.count('p'))  # Output: 2
print(my_tuple.index('l'))  # Output: 3
""",
    """1. Tuple Membership Test
We can test if an item exists in a tuple or not, using the keyword in.

my_tuple = ('a','p','p','l','e',)
# In operation
# Output: True
print('a' in my_tuple)
# Output: False
print('b' in my_tuple)
# Not in operation
# Output: True
print('g' not in my_tuple)

________________________________________
2. Iterating Through a Tuple
Using a for loop we can iterate through each item in a tuple.

# Output: 
# Hello John
# Hello Kate
for name in ('John','Kate'):
     print("Hello",name)    
""",
    """Since tuples are quite similar to lists, both of them are used in similar situations as well.
However, there are certain advantages of implementing a tuple over a list. Below listed are some of the main advantages:
•	We generally use tuple for heterogeneous (different) datatypes and list for homogeneous (similar) datatypes.
•	Since tuples are immutable, iterating through tuple is faster than with list. So there is a slight performance boost.
•	Tuples that contain immutable elements can be used as a key for a dictionary. With lists, this is not possible.
•	If you have data that doesn't change, implementing it as tuple will guarantee that it remains write-protected.
""",
    """In this section, you'll learn everything about Python sets; how they are created, adding or removing elements from them, and all operations performed on sets in Python.""",
    """A set is an unordered collection of items. Every element is unique (no duplicates) and must be immutable (which cannot be changed).
However, the set itself is mutable. We can add or remove items from it.
Sets can be used to perform mathematical set operations like union, intersection, symmetric difference etc.
""",
    """A set is created by placing all the items (elements) inside curly braces {}, separated by comma or by using the built-in function set().
It can have any number of items and they may be of different types (integer, float, tuple, string etc.). But a set cannot have a mutable element, like list, set or dictionary, as its element.
# set of integers
my_set = {1, 2, 3}
print(my_set)

# set of mixed datatypes
my_set = {1.0, "Hello", (1, 2, 3)}
print(my_set)

Try the following examples as well.
# set do not have duplicates
# Output: {1, 2, 3, 4}
my_set = {1,2,3,4,3,2}
print(my_set)

# set cannot have mutable items
# here [3, 4] is a mutable list
# If you uncomment line #12,
# this will cause an error.
# TypeError: unhashable type: 'list'

#my_set = {1, 2, [3, 4]}

# we can make set from a list
# Output: {1, 2, 3}
my_set = set([1,2,3,2])
print(my_set)

Creating an empty set is a bit tricky.
Empty curly braces {} will make an empty dictionary in Python. To make a set without any elements we use the set() function without any argument.
# initialize a with {}
a = {}

# check data type of a
# Output: <class 'dict'>
print(type(a))

# initialize a with set()
a = set()

# check data type of a
# Output: <class 'set'>
print(type(a))
""",
    """Sets are mutable. But since they are unordered, indexing have no meaning.
We cannot access or change an element of set using indexing or slicing. Set does not support it.
We can add single element using the add() method and multiple elements using the update() method. The update() method can take tuples, lists, strings or other sets as its argument. In all cases, duplicates are avoided.
# initialize my_set
my_set = {1,3}
print(my_set)

# if you uncomment line 9,
# you will get an error
# TypeError: 'set' object does not support indexing

#my_set[0]

# add an element
# Output: {1, 2, 3}
my_set.add(2)
print(my_set)

# add multiple elements
# Output: {1, 2, 3, 4}
my_set.update([2,3,4])
print(my_set)

# add list and set
# Output: {1, 2, 3, 4, 5, 6, 8}
my_set.update([4,5], {1,6,8})
print(my_set)

When you run the program, the output will be:
{1, 3}
{1, 2, 3}
{1, 2, 3, 4}
{1, 2, 3, 4, 5, 6, 8}
""",
    """A particular item can be removed from set using methods, discard() and remove().
The only difference between the two is that, while using discard() if the item does not exist in the set, it remains unchanged. But remove() will raise an error in such condition.
The following example will illustrate this.
# initialize my_set
my_set = {1, 3, 4, 5, 6}
print(my_set)

# discard an element
# Output: {1, 3, 5, 6}
my_set.discard(4)
print(my_set)

# remove an element
# Output: {1, 3, 5}
my_set.remove(6)
print(my_set)

# discard an element
# not present in my_set
# Output: {1, 3, 5}
my_set.discard(2)
print(my_set)

# remove an element
# not present in my_set
# If you uncomment line 27,
# you will get an error.
# Output: KeyError: 2

#my_set.remove(2)

Similarly, we can remove and return an item using the pop() method.
Set being unordered, there is no way of determining which item will be popped. It is completely arbitrary.
We can also remove all items from a set using clear().
# initialize my_set
# Output: set of unique elements
my_set = set("HelloWorld")
print(my_set)

# pop an element
# Output: random element
print(my_set.pop())

# pop another element
# Output: random element
my_set.pop()
print(my_set)

# clear my_set
#Output: set()
my_set.clear()
print(my_set)
""",
    """Sets can be used to carry out mathematical set operations like union, intersection, difference and symmetric difference. We can do this with operators or methods.
Let us consider the following two sets for the following operations.
1.	>>> A = {1, 2, 3, 4, 5}
2.	>>> B = {4, 5, 6, 7, 8}
Set Union
 
Union of A and B is a set of all elements from both sets.
Union is performed using | operator. Same can be accomplished using the method union().
# initialize A and B
A = {1, 2, 3, 4, 5}
B = {4, 5, 6, 7, 8}

# use | operator
# Output: {1, 2, 3, 4, 5, 6, 7, 8}
print(A | B)

Try the following examples on Python shell.
1.	
2.	# use union function
3.	>>> A.union(B)
4.	{1, 2, 3, 4, 5, 6, 7, 8}
5.	
6.	# use union function on B
7.	>>> B.union(A)
8.	{1, 2, 3, 4, 5, 6, 7, 8}
9.	 
________________________________________
Set Intersection
 
Intersection of A and B is a set of elements that are common in both sets.
Intersection is performed using & operator. Same can be accomplished using the method intersection().
# initialize A and B
A = {1, 2, 3, 4, 5}
B = {4, 5, 6, 7, 8}

# use & operator
# Output: {4, 5}
print(A & B)

Try the following examples on Python shell.
1.	
2.	# use intersection function on A
3.	>>> A.intersection(B)
4.	{4, 5}
5.	
6.	# use intersection function on B
7.	>>> B.intersection(A)
8.	{4, 5}
9.	 
________________________________________
Set Difference
 
Difference of A and B (A - B) is a set of elements that are only in A but not in B. Similarly, B - A is a set of element in B but not in A.
Difference is performed using - operator. Same can be accomplished using the method difference().
# initialize A and B
A = {1, 2, 3, 4, 5}
B = {4, 5, 6, 7, 8}

# use - operator on A
# Output: {1, 2, 3}
print(A - B)

Try the following examples on Python shell.
1.	
2.	# use difference function on A
3.	>>> A.difference(B)
4.	{1, 2, 3}
5.	
6.	# use - operator on B
7.	>>> B - A
8.	{8, 6, 7}
9.	
10.	# use difference function on B
11.	>>> B.difference(A)
12.	{8, 6, 7}
13.	 
________________________________________
Set Symmetric Difference
 
Symmetric Difference of A and B is a set of elements in both A and B except those that are common in both.
Symmetric difference is performed using ^ operator. Same can be accomplished using the method symmetric_difference().
# initialize A and B
A = {1, 2, 3, 4, 5}
B = {4, 5, 6, 7, 8}

# use ^ operator
# Output: {1, 2, 3, 6, 7, 8}
print(A ^ B)

Try the following examples on Python shell.
1.	
2.	# use symmetric_difference function on A
3.	>>> A.symmetric_difference(B)
4.	{1, 2, 3, 6, 7, 8}
5.	
6.	# use symmetric_difference function on B
7.	>>> B.symmetric_difference(A)
8.	{1, 2, 3, 6, 7, 8}
""",
    """There are many set methods, some of which we have already used above. Here is a list of all the methods that are available with set objects.
Method	Description
add()
Adds an element to the set
clear()
Removes all elements from the set
copy()
Returns a copy of the set
difference()
Returns the difference of two or more sets as a new set
difference_update()
Removes all elements of another set from this set
discard()
Removes an element from the set if it is a member. (Do nothing if the element is not in set)
intersection()
Returns the intersection of two sets as a new set
intersection_update()
Updates the set with the intersection of itself and another
isdisjoint()
Returns True if two sets have a null intersection
issubset()
Returns True if another set contains this set
issuperset()
Returns True if this set contains another set
pop()
Removes and returns an arbitary set element. Raise KeyError if the set is empty
remove()
Removes an element from the set. If the element is not a member, raise a KeyError
symmetric_difference()
Returns the symmetric difference of two sets as a new set
symmetric_difference_update()
Updates a set with the symmetric difference of itself and another
union()
Returns the union of sets in a new set
update()
Updates the set with the union of itself and others
""",
    """Set Membership Test
We can test if an item exists in a set or not, using the keyword in.
# initialize my_set
my_set = set("apple")

# check if 'a' is present
# Output: True
print('a' in my_set)

# check if 'p' is present
# Output: False
print('p' not in my_set)

________________________________________
Iterating Through a Set
Using a for loop, we can iterate though each item in a set.
1.	>>> for letter in set("apple"):
2.	...     print(letter)
3.	...    
4.	a
5.	p
6.	e
7.	l
""",
    """Built-in functions like all(), any(), enumerate(), len(), max(), min(), sorted(), sum() etc. are commonly used with set to perform different tasks.
Function	Description
all()
Return True if all elements of the set are true (or if the set is empty).
any()
Return True if any element of the set is true. If the set is empty, return False.
enumerate()
Return an enumerate object. It contains the index and value of all the items of set as a pair.
len()
Return the length (the number of items) in the set.
max()
Return the largest item in the set.
min()
Return the smallest item in the set.
sorted()
Return a new sorted list from elements in the set(does not sort the set itself).
sum()
Retrun the sum of all elements in the set.
""",
    """Frozenset is a new class that has the characteristics of a set, but its elements cannot be changed once assigned. While tuples are immutable lists, frozensets are immutable sets.
Sets being mutable are unhashable, so they can't be used as dictionary keys. On the other hand, frozensets are hashable and can be used as keys to a dictionary.
Frozensets can be created using the function frozenset().
This datatype supports methods like copy(), difference(), intersection(), isdisjoint(), issubset(), issuperset(), symmetric_difference() and union(). Being immutable it does not have method that add or remove elements.
# initialize A and B
A = frozenset([1, 2, 3, 4])
B = frozenset([3, 4, 5, 6])

Try these examples on Python shell.
1.	>>> A.isdisjoint(B)
2.	False
3.	>>> A.difference(B)
4.	frozenset({1, 2})
5.	>>> A | B
6.	frozenset({1, 2, 3, 4, 5, 6})
7.	>>> A.add(3)
8.	...
9.	AttributeError: 'frozenset' object has no attribute 'add'

""",
    """In this Chapter, you'll learn everything about Python dictionary; how they are created, accessing, adding and removing elements from them and, various built-in methods.""",
    """Python dictionary is an unordered collection of items. While other compound data types have only value as an element, a dictionary has a key: value pair.
Dictionaries are optimized to retrieve values when the key is known.
""",
    """Creating a dictionary is as simple as placing items inside curly braces {} separated by comma.
An item has a key and the corresponding value expressed as a pair, key: value.
While values can be of any data type and can repeat, keys must be of immutable type (string, number or tuple with immutable elements) and must be unique.
1.	# empty dictionary
2.	my_dict = {}
3.	
4.	# dictionary with integer keys
5.	my_dict = {1: 'apple', 2: 'ball'}
6.	
7.	# dictionary with mixed keys
8.	my_dict = {'name': 'John', 1: [2, 4, 3]}
9.	
10.	# using dict()
11.	my_dict = dict({1:'apple', 2:'ball'})
12.	
13.	# from sequence having each item as a pair
14.	my_dict = dict([(1,'apple'), (2,'ball')])
As you can see above, we can also create a dictionary using the built-in function dict().
""",
    """While indexing is used with other container types to access values, dictionary uses keys. Key can be used either inside square brackets or with the get() method.
The difference while using get() is that it returns None instead of KeyError, if the key is not found.

my_dict = {'name':'Jack', 
'age': 26}
# Output: Jack
print(my_dict['name'])
# Output: 26
print(my_dict.get('age'))
# Trying to access keys 
which doesn't exist throws 
error
# my_dict.get('address')
# my_dict['address']

When you run the program, the output will be:
Jack
26
""",
    """Dictionary are mutable. We can add new items or change the value of existing items using assignment operator.
If the key is already present, value gets updated, else a new key: value pair is added to the dictionary.
my_dict = {'name':'Jack', 
'age': 26}
# update value
my_dict['age'] = 27
#Output: {'age': 27, 'name'
: 'Jack'}
print(my_dict)
# add item
my_dict['address'] = 
'Downtown'  
# Output: {'address': 
'Downtown', 'age': 27, 
'name': 'Jack'}
When you run the program, the output will be:
{'name': 'Jack', 'age': 27}
{'name': 'Jack', 'age': 27, 'address': 'Downtown'}
""",
    """We can remove a particular item in a dictionary by using the method pop(). This method removes as item with the provided key and returns the value.
The method, popitem() can be used to remove and return an arbitrary item (key, value) form the dictionary. All the items can be removed at once using the clear() method.
We can also use the del keyword to remove individual items or the entire dictionary itself.

print(squares)
# remove an arbitrary item
# Output: (1, 1)
print(squares.popitem())
# Output: {2: 4, 3: 9, 5: 
25}
print(squares)
# delete a particular item
del squares[5]  
# Output: {2: 4, 3: 9}
print(squares)
# remove all items
squares.clear()
# Output: {}
print(squares)
# delete the dictionary 
itself
del squares

When you run the program, the output will be:
16
{1: 1, 2: 4, 3: 9, 5: 25}
(1, 1)
{2: 4, 3: 9, 5: 25}
{2: 4, 3: 9}
{}
""",
    """Methods that are available with dictionary are tabulated below. Some of them have already been used in the above examples.
Method	Description
clear()
Remove all items form the dictionary.
copy()
Return a shallow copy of the dictionary.
fromkeys(seq[, v])
Return a new dictionary with keys from seq and value equal to v (defaults to None).
get(key[,d])
Return the value of key. If key doesnot exit, return d (defaults to None).
items()
Return a new view of the dictionary's items (key, value).
keys()
Return a new view of the dictionary's keys.
pop(key[,d])
Remove the item with key and return its value or d if key is not found. If d is not provided and key is not found, raises KeyError.
popitem()
Remove and return an arbitary item (key, value). Raises KeyError if the dictionary is empty.
setdefault(key[,d])
If key is in the dictionary, return its value. If not, insert key with a value of d and return d (defaults to None).
update([other])
Update the dictionary with the key/value pairs from other, overwriting existing keys.
values()
Return a new view of the dictionary's values
Python Dictionary Methods
Here are a few example use of these methods.
marks = {}.fromkeys(['Math'
,'English','Science'], 0)
# Output: {'English': 0, 
'Math': 0, 'Science': 0}
print(marks)
for item in marks.items():
    print(item)
# Output: ['English', 
'Math', 'Science']
list(sorted(marks.keys()))
""",
    """Dictionary comprehension is an elegant and concise way to create new dictionary from an iterable in Python.
Dictionary comprehension consists of an expression pair (key: value) followed by for statement inside curly braces {}.
Here is an example to make a dictionary with each item being a pair of a number and its square.
squares = {x: x*x for x in 
range(6)}
# Output: {0: 0, 1: 1, 2: 4, 
3: 9, 4: 16, 5: 25}
print(squares)
This code is equivalent to
1.	squares = {}
2.	for x in range(6):
3.	   squares[x] = x*x
A dictionary comprehension can optionally contain more for or if statements.
An optional if statement can filter out items to form the new dictionary.
Here are some examples to make dictionary with only odd items.

odd_squares = {x: x*x for x 
in range(11) if x%2 == 1}
# Output: {1: 1, 3: 9, 5: 25
, 7: 49, 9: 81}
print(odd_squares)
""",
"""Dictionary Membership Test
We can test if a key is in a dictionary or not using the keyword in. Notice that membership test is for keys only, not for values.


squares = {1: 1, 3: 9, 5: 
25, 7: 49, 9: 81}
# Output: True
print(1 in squares)
# Output: True
print(2 not in squares)
# membership tests for key 
only not value
# Output: False
print(49 in squares)

Iterating Through a Dictionary
Using a for loop we can iterate though each key in a dictionary.

squares = {1: 1, 3: 9, 5: 25
, 7: 49, 9: 81}
for i in squares:
    print(squares[i])
""",
"""Built-in functions like all(), any(), len(), cmp(), sorted() etc. are commonly used with dictionary to perform different tasks.
Function	Description
all()
Return True if all keys of the dictionary are true (or if the dictionary is empty).
any()
Return True if any key of the dictionary is true. If the dictionary is empty, return False.
len()
Return the length (the number of items) in the dictionary.
cmp()	Compares items of two dictionaries.
sorted()
Return a new sorted list of keys in the dictionary.
Built-in Functions with Dictionary
Here are some examples that uses built-in functions to work with dictionary.
squares = {1: 1, 3: 9, 5: 25
, 7: 49, 9: 81}
# Output: 5
print(len(squares))
# Output: [1, 3, 5, 7, 9]
print(sorted(squares))
"""
  ],
  1: [
    "Python Data structures ",
    "Python List",
    "Creating a list in Python?",
    "How to access elements from a list?",
    "How to slice lists in Python?",
    "How to change or add elements to a list?",
    "How to delete or remove elements from a list?",
    "Python List Methods",
    "List Comprehension",
    "Other List Operations in Python",
    "Python Tuple",
    "Creating a Tuple",
    "Access Tuple Elements",
    "Changing a Tuple",
    "Deleting a Tuple",
    "Tuple Methods",
    "Other Tuple Operations",
    "Advantages of Tuple over List",
    "Python Sets",
    "What is a set in Python?",
    "How to create a set?",
    "How to change a set in Python?",
    "How to remove elements from a set?",
    "Python Set Operations"
        "Different Python Set Methods",
    "Other Set Operations",
    "Built-in Functions with Set",
    "Python Frozenset",
    "Python Dictionary",
    "What is dictionary in Python?",
    "How to create a dictionary?",
    "How to access elements from a dictionary?",
    "How to change or add elements in a dictionary?",
    "How to delete or remove elements from a dictionary?",
    "Python Dictionary Methods",
    "Python Dictionary Comprehension",
    "Other Dictionary Operations",
    "Built-in Functions with Dictionary",

  ]
};


