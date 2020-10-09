var flowcontrol = {
  0: [
    """In this section, you will learn to create decisions in a Python program using different forms of if..else statement.
  """,
    """Decision making is required when we want to execute a code only if a certain condition is satisfied.
The if…elif…else statement is used in Python for decision making.
""",
    """if test expression:
    statement(s)
Here, the program evaluates the test expression and will execute statement(s) only if the text expression is True.
If the text expression is False, the statement(s) is not executed.
In Python, the body of the if statement is indicated by the indentation. Body starts with an indentation and the first unindented line marks the end.
Python interprets non-zero values as True. None and 0 are interpreted as False.
""",
    """# If the number is positive, we print an appropriate message

num = 3
if num > 0:
    print(num, "is a positive number.")
print("This is always printed.")

num = -1
if num > 0:
    print(num, "is a positive number.")
print("This is also always printed.")

When you run the program, the output will be:
3 is a positive number
This is always printed
This is also always printed.
In the above example, num > 0 is the test expression.
The body of if is executed only if this evaluates to True.
When variable num is equal to 3, test expression is true and body inside body of if is executed.
If variable num is equal to -1, test expression is false and body inside body of if is skipped.
The print() statement falls outside of the if block (unindented). Hence, it is executed regardless of the test expression.
""",
    """Syntax of if...else
if test expression:
    Body of if
else:
    Body of else
The if..else statement evaluates test expression and will execute body of if only when test condition is True.
If the condition is False, body of else is executed. Indentation is used to separate the blocks.
""",
    """# Program checks if the number is positive or negative
# And displays an appropriate message

num = 3

# Try these two variations as well. 
# num = -5
# num = 0

if num >= 0:
    print("Positive or Zero")
else:
    print("Negative number")


In the above example, when num is equal to 3, the test expression is true and body of if is executed and body of else is skipped.
If num is equal to -5, the test expression is false and body of else is executed and body of if is skipped.
If num is equal to 0, the test expression is true and body of if is executed and body of else is skipped.
""",
    """Syntax of if...elif...else
if test expression:
    Body of if
elif test expression:
    Body of elif
else: 
    Body of else
The elif is short for else if. It allows us to check for multiple expressions.
If the condition for if is False, it checks the condition of the next elif block and so on.
If all the conditions are False, body of else is executed.
Only one block among the several if...elif...else blocks is executed according to the condition.
The if block can have only one else block. But it can have multiple elif blocks.
""",
    """# In this program, 
# we check if the number is positive or
# negative or zero and 
# display an appropriate message

num = 3.4

# Try these two variations as well:
# num = 0
# num = -4.5

if num > 0:
    print("Positive number")
elif num == 0:
    print("Zero")
else:
    print("Negative number")

When variable num is positive, Positive number is printed.
If num is equal to 0, Zero is printed.
If num is negative, Negative number is printed
""",
    """We can have a if...elif...else statement inside another if...elif...else statement. This is called nesting in computer programming.
Any number of these statements can be nested inside one another. Indentation is the only way to figure out the level of nesting. This can get confusing, so must be avoided if we can.
""",
    """1.	# In this program, we input a number
2.	# check if the number is positive or
3.	# negative or zero and display
4.	# an appropriate message
5.	# This time we use nested if
6.	
7.	num = float(input("Enter a number: "))
8.	if num >= 0:
9.	    if num == 0:
10.	        print("Zero")
11.	    else:
12.	        print("Positive number")
13.	else:
14.	    print("Negative number")
Output 1
Enter a number: 5
Positive number

Output 2
Enter a number: -1
Negative number

Output 3
Enter a number: 0
Zero
""",
    """Loops are used in programming to repeat a specific block of code. In this module, you will learn to create a while loop in Python.
""",
    """The while loop in Python is used to iterate over a block of code as long as the test expression (condition) is true.
We generally use this loop when we don't know beforehand, the number of times to iterate.
""",
    """while test_expression:
    Body of while
In while loop, test expression is checked first. The body of the loop is entered only if the test_expression evaluates to True. After one iteration, the test expression is checked again. This process continues until the test_expression evaluates to False.
In Python, the body of the while loop is determined through indentation.
Body starts with indentation and the first unindented line marks the end.
Python interprets any non-zero value as True. None and 0 are interpreted as False
""",
    """
# Program to add natural
# numbers upto 
# sum = 1+2+3+...+n

# To take input from the user,
# n = int(input("Enter n: "))

n = 10

# initialize sum and counter
sum = 0
i = 1

while i <= n:
    sum = sum + i
    i = i+1    # update counter

# print the sum
print("The sum is", sum)

When you run the program, the output will be:
Enter n: 10
The sum is 55
In the above program, the test expression will be True as long as our counter variable i is less than or equal to n (10 in our program).
We need to increase the value of counter variable in the body of the loop. This is very important (and mostly forgotten). Failing to do so will result in an infinite loop (never ending loop).
Finally the result is displayed.
""",
    """Same as that of for loop, we can have an optional else block with while loop as well.
The else part is executed if the condition in the while loop evaluates to False.
The while loop can be terminated with a break statement. In such case, the else part is ignored. Hence, a while loop's else part runs if no break occurs and the condition is false.
Here is an example to illustrate this.
# Example to illustrate
# the use of else statement
# with the while loop

counter = 0

while counter < 3:
    print("Inside loop")
    counter = counter + 1
else:
    print("Inside else")

Output
Inside loop
Inside loop
Inside loop
Inside else
Here, we use a counter variable to print the string Inside loop three times.
On the forth iteration, the condition in while becomes False. Hence, the else part is executed.

""",
    """In this module, you'll learn to iterate over a sequence of elements using the different variations of for loop.""",
    """The for loop in Python is used to iterate over a sequence (list, tuple, string) or other iterable objects. Iterating over a sequence is called traversal.
""",
    """for val in sequence:
	Body of for
Here, val is the variable that takes the value of the item inside the sequence on each iteration.
Loop continues until we reach the last item in the sequence. The body of for loop is separated from the rest of the code using indentation.
""",
    """
# Program to find the sum of all numbers stored in a list

# List of numbers
numbers = [6, 5, 3, 8, 4, 2, 5, 4, 11]

# variable to store the sum
sum = 0

# iterate over the list
for val in numbers:
	sum = sum+val

# Output: The sum is 48
print("The sum is", sum)
	

when you run the program, the output will be:
The sum is 48
""",
    """We can generate a sequence of numbers using range() function. range(10) will generate numbers from 0 to 9 (10 numbers).
We can also define the start, stop and step size as range(start,stop,step size). step size defaults to 1 if not provided.
This function does not store all the values in memory, it would be inefficient. So it remembers the start, stop, step size and generates the next number on the go.
To force this function to output all the items, we can use the function list().
The following example will clarify this.
# Output: range(0, 10)
print(range(10))

# Output: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
print(list(range(10)))

# Output: [2, 3, 4, 5, 6, 7]
print(list(range(2, 8)))

# Output: [2, 5, 8, 11, 14, 17]
print(list(range(2, 20, 3)))	
We can use the range() function in for loops to iterate through a sequence of numbers. It can be combined with the len() function to iterate though a sequence using indexing. Here is an example.
# Program to iterate through a list using indexing

genre = ['pop', 'rock', 'jazz']

# iterate over the list using index
for i in range(len(genre)):
	print("I like", genre[i])

When you run the program, the output will be:
I like pop
I like rock
I like jazz
________________________________________
""",
    """A for loop can have an optional else block as well. The else part is executed if the items in the sequence used in for loop exhausts.
break statement can be used to stop a for loop. In such case, the else part is ignored.
Hence, a for loop's else part runs if no break occurs.
Here is an example to illustrate this.
digits = [0, 1, 5]

for i in digits:
    print(i)
else:
    print("No items left.")

When you run the program, the output will be:
0
1
5
No items left.
Here, the for loop prints items of the list until the loop exhausts. When the for loop exhausts, it executes the block of code in the else and prints
No items left.

"""
  ],
  1: [
    "Python if...else Statement",
    "What are if...else statement in Python?",
    "Python if Statement Syntax",
    "Example: Python if Statement",
    "Python if...else Statement",
    "Example of if...else",
    "Python if...elif...else Statement",
    "Example of if...elif...else",
    "Python Nested if statements",
    "Python Nested if Example",
    "Python while Loop",
    "What is while loop in Python?",
    "Syntax of while Loop in Python",
    "Example: Python while Loop",
    "while loop with else",
    "Python for Loop",
    "What is for loop in Python?"
        "Syntax of for Loop",
    "Example: Python for Loop",
    "The range() function",
    "for loop with else"
  ]
};

var functions = {
  0: [
    """In this chapter, you'll learn about functions; what is a function, the syntax, components and types of a function. Also, you'll learn to create a function in Python.""",
    """In Python, function is a group of related statements that perform a specific task.
Functions help break our program into smaller and modular chunks. As our program grows larger and larger, functions make it more organized and manageable.
Furthermore, it avoids repetition and makes code reusable.
""",
    """def function_name(parameters):
	\"""docstring\"""
	statement(s)
Above shown is a function definition which consists of following components.
1.	Keyword def marks the start of function header.
2.	A function name to uniquely identify it. Function naming follows the same rules of writing identifiers in Python.
3.	Parameters (arguments) through which we pass values to a function. They are optional.
4.	A colon (:) to mark the end of function header.
5.	Optional documentation string (docstring) to describe what the function does.
6.	One or more valid python statements that make up the function body. Statements must have same indentation level (usually 4 spaces).
7.	An optional return statement to return a value from the function.
""",
    """def greet(name):
    \"""This function greets 
to
    the person passed in as
    parameter\"""
    print("Hello, " + name + 
". Good morning!")
""",
    """Once we have defined a function, we can call it from another function, program or even the Python prompt. To call a function we simply type the function name with appropriate parameters.

>>> greet('Paul')
Hello, Paul. Good morning!
	
Note: Try running the above code into the Python shell to see the output.
""",
    """The first string after the function header is called the docstring and is short for documentation string. It is used to explain in brief, what a function does.
Although optional, documentation is a good programming practice. Unless you can remember what you had for dinner last week, always document your code.
In the above example, we have a docstring immediately below the function header. We generally use triple quotes so that docstring can extend up to multiple lines. This string is available to us as __doc__ attribute of the function.
For example:
Try running the following into the Python shell to see the output.
1.	>>> print(greet.__doc__)
2.	This function greets to
3.		the person passed into the
4.		name parameter
5.		
""",
    """The return statement is used to exit a function and go back to the place from where it was called.""",
    """return [expression_list]
This statement can contain expression which gets evaluated and the value is returned. If there is no expression in the statement or the return statement itself is not present inside a function, then the function will return the None object.
For example:
1.	>>> print(greet("May"))
2.	Hello, May. Good morning!
3.	None
4.		
Here, None is the returned value.
""",
    """\"""This function 
returns the absolute
    value of the entered 
number\"""
    if num >= 0:
        return num
    else:
        return -num
# Output: 2
print(absolute_value(2))
# Output: 4
print(absolute_value(-4))

""",
    """Scope of a variable is the portion of a program where the variable is recognized. Parameters and variables defined inside a function is not visible from outside. Hence, they have a local scope.
Lifetime of a variable is the period throughout which the variable exits in the memory. The lifetime of variables inside a function is as long as the function executes.
They are destroyed once we return from the function. Hence, a function does not remember the value of a variable from its previous calls.
Here is an example to illustrate the scope of a variable inside a function.
def my_func():
    x = 10
    print("Value inside 
function:",x)
x = 20
my_func()
print("Value outside 
function:",x)
Output
Value inside function: 10
Value outside function: 20
	
Here, we can see that the value of x is 20 initially. Even though the function my_func() changed the value of x to 10, it did not effect the value outside the function.
This is because the variable x inside the function is different (local to the function) from the one outside. Although they have same names, they are two different variables with different scope.
On the other hand, variables outside of the function are visible from inside. They have a global scope.
We can read these values from inside the function but cannot change (write) them. In order to modify the value of variables outside the function, they must be declared as global variables using the keyword global.
________________________________________
""",
    """Basically, we can divide functions into the following two types:
1.	Built-in functions - Functions that are built into Python.
2.	User-defined functions - Functions defined by the users themselves.

""",
    """In Python, you can define a function that takes variable number of arguments. You will learn to define such functions using default, keyword and arbitrary arguments in this section.
""",
    """In user-defined function topic, we learned about defining a function and calling it. Otherwise, the function call will result into an error. Here is an example.

def greet(name,msg):
   \"""This function greets 
to
   the person with the 
provided message\"""
   print("Hello",name + ', ' 
+ msg)
greet("Monica","Good 
morning!")

Output
Hello Monica, Good morning!
Here, the function greet() has two parameters.
Since, we have called this function with two arguments, it runs smoothly and we do not get any error.
If we call it with different number of arguments, the interpreter will complain. Below is a call to this function with one and no arguments along with their respective error messages.
>>> greet("Monica")    # only one argument
TypeError: greet() missing 1 required positional argument: 'msg'
>>> greet()    # no arguments
TypeError: greet() missing 2 required positional arguments: 'name' and 'msg'
""",
    """Up until now functions had fixed number of arguments. In Python there are other ways to define a function which can take variable number of arguments.
Three different forms of this type are described below.
""",
    """Function arguments can have default values in Python.
We can provide a default value to an argument by using the assignment operator (=). Here is an example.
def greet(name, msg = "Good 
morning!"):
   \"""
   This function greets to
   the person with the
   provided message.
   If message is not 
provided,
   it defaults to "Good
   morning!"
   \"""
   print("Hello",name + ', 
' + msg)

In this function, the parameter name does not have a default value and is required (mandatory) during a call.
On the other hand, the parameter msg has a default value of "Good morning!". So, it is optional during a call. If a value is provided, it will overwrite the default value.
Any number of arguments in a function can have a default value. But once we have a default argument, all the arguments to its right must also have default values.
This means to say, non-default arguments cannot follow default arguments. For example, if we had defined the function header above as:
def greet(msg = "Good morning!", name):
We would get an error as:
SyntaxError: non-default argument follows default argument
""",
    """When we call a function with some values, these values get assigned to the arguments according to their position.
For example, in the above function greet(), when we called it as greet("Bruce","How do you do?"), the value "Bruce" gets assigned to the argument name and similarly "How do you do?" to msg.
Python allows functions to be called using keyword arguments. When we call functions in this way, the order (position) of the arguments can be changed. Following calls to the above function are all valid and produce the same result.
>>> # 2 keyword arguments
>>> greet(name = "Bruce",msg = "How do you do?")

>>> # 2 keyword arguments (out of order)
>>> greet(msg = "How do you do?",name = "Bruce") 

>>> # 1 positional, 1 keyword argument
>>> greet("Bruce",msg = "How do you do?")           
As we can see, we can mix positional arguments with keyword arguments during a function call. But we must keep in mind that keyword arguments must follow positional arguments.
Having a positional argument after keyword arguments will result into errors. For example the function call as follows:
greet(name="Bruce","How do you do?")
Will result into error as:
SyntaxError: non-keyword arg after keyword arg
""",
    """Sometimes, we do not know in advance the number of arguments that will be passed into a function. Python allows us to handle this kind of situation through function calls with arbitrary number of arguments.
In the function definition we use an asterisk (*) before the parameter name to denote this kind of argument. Here is an example.
def greet(*names):
   \"""This function greets 
all
   the person in the names 
tuple.\"""
   # names is a tuple with 
arguments
   for name in names:
       print("Hello",name)
greet("Monica","Luke"
,"Steve","John")

Output
Hello Monica
Hello Luke
Hello Steve
Hello John
Here, we have called the function with multiple arguments. These arguments get wrapped up into a tuple before being passed into the function. Inside the function, we use a for loop to retrieve all the arguments back.


"""
  ],
  1: [
    "Python Functions",
    "What is a function in Python?",
    "Syntax of Function",
    "Example of a function",
    "How to call a function in python?",
    "Docstring",
    "The return statement",
    "Syntax of return",
    "Example of return",
    "Scope and Lifetime of variables",
    "Types of Functions",
    "Python Function Arguments",
    "Arguments",
    "Variable Function Arguments",
    "Python Default Arguments",
    "Python Keyword Arguments",
    "Python Arbitrary Arguments",
  ]
};

var modules = {
  0: [
    """In this chapter, you will learn to create and import custom modules in Python. Also, you will find different techniques to import and use custom and built-in modules in Python.""",
    """Modules refer to a file containing Python statements and definitions.
A file containing Python code, for e.g.: example.py, is called a module and its module name would be example.
We use modules to break down large programs into small manageable and organized files. Furthermore, modules provide reusability of code.
We can define our most used functions in a module and import it, instead of copying their definitions into different programs.
Let us create a module. Type the following and save it as example.py.
1.	# Python Module example
2.	
3.	def add(a, b):
4.	   \"""This program adds two
5.	   numbers and return the result\"""
6.	
7.	   result = a + b
8.	   return result
Here, we have defined a function add() inside a module named example. The function takes in two numbers and returns their sum.
""",
    """We can import the definitions inside a module to another module or the interactive interpreter in Python.
We use the import keyword to do this. To import our previously defined module example we type the following in the Python prompt.
>>> import example
This does not enter the names of the functions defined in example directly in the current symbol table. It only enters the module name example there.
Using the module name we can access the function using the dot . operator. For example:
>>> example.add(4,5.5)
9.5
Python has a ton of standard modules available.
You can check out the full list of Python standard modules and what they are for. These files are in the Lib directory inside the location where you installed Python.
Standard modules can be imported the same way as we import our user-defined modules.
There are various ways to import modules. They are listed as follows.
""",
    """We can import a module using import statement and access the definitions inside it using the dot operator as described above. Here is an example.

# import statement example
# to import standard module 
math
import math
print("The value of pi is", 
math.pi)

When you run the program, the output will be:
The value of pi is 3.141592653589793
""",
    """We can import a module by renaming it as follows.
# import module by renaming 
it
import math as m
print("The value of pi is", 
m.pi)

We have renamed the math module as m. This can save us typing time in some cases.
Note that the name math is not recognized in our scope. Hence, math.pi is invalid, m.pi is the correct implementation.
""",
    """We can import specific names from a module without importing the module as a whole. Here is an example.
# import only pi from math 
module
from math import pi
print("The value of pi is", 
pi)

We imported only the attribute pi from the module.
In such case we don't use the dot operator. We could have imported multiple attributes as follows.
>>> from math import pi, e
>>> pi
3.141592653589793
>>> e
2.718281828459045
""",
    """We can import all names(definitions) from a module using the following construct.
# import all names from the 
standard module math
from math import *
print("The value of pi is", 
pi)

We imported all the definitions from the math module. This makes all names except those beginnig with an underscore, visible in our scope.
Importing everything with the asterisk (*) symbol is not a good programming practice. This can lead to duplicate definitions for an identifier. It also hampers the readability of our code.
""",
    """We can use the dir() function to find out names that are defined inside a module.
For example, we have defined a function add() in the module example that we had in the beginning.
>>> dir(example)
['__builtins__',
'__cached__',
'__doc__',
'__file__',
'__initializing__',
'__loader__',
'__name__',
'__package__',
'add']
Here, we can see a sorted list of names (along with add). All other names that begin with an underscore are default Python attributes associated with the module (we did not define them ourself).
For example, the __name__ attribute contains the name of the module.
>>> import example
>>> example.__name__
'example'
All the names defined in our current namespace can be found out using the dir() function without any arguments.
>>> a = 1
>>> b = "hello"
>>> import math
>>> dir()
['__builtins__', '__doc__', '__name__', 'a', 'b', 'math', 'pyscripter']

"""
  ],
  1: [
    "Python Modules",
    "What are modules in Python?",
    "How to import modules in Python?",
    "Python import statement",
    "Import with renaming",
    "Python from...import statement",
    "Import all names",
    "The dir() built-in function",
  ]
};

var oop = {
  0: [
    """In this Chapter, you’ll learn about the Object Oriented Programming (OOP) in Python and their fundamental concept with examples.""",
    """Python is a multi-paradigm programming language. Meaning, it supports different programming approach.
One of the popular approach to solve a programming problem is by creating objects. This is known as Object-Oriented Programming (OOP).
An object has two characteristics:
•	attributes
•	behavior
Let's take an example:
Parrot is an object,
•	name, age, color are attributes
•	singing, dancing are behavior

The concept of OOP in Python focuses on creating reusable code. This concept is also known as DRY (Don't Repeat Yourself).
In Python, the concept of OOP follows some basic principles:

Inheritance: 	A process of using details from a new class without modifying existing class.

Encapsulation: 	Hiding the private details of a class from other objects.

Polymorphism:	A concept of using common operation in different ways for different data input.
________________________________________
""",
    """A class is a blueprint for the object.
We can think of class as an sketch of a parrot with labels. It contains all the details about the name, colors, size etc. Based on these descriptions, we can study about the parrot. Here, parrot is an object.
The example for class of parrot can be :
class Parrot:
    pass
Here, we use class keyword to define an empty class Parrot. From class, we construct instances. An instance is a specific object created from a particular class.
________________________________________
""",
    """An object (instance) is an instantiation of a class. When class is defined, only the description for the object is defined. Therefore, no memory or storage is allocated.
The example for object of parrot class can be:
obj = Parrot()
Here, obj is object of class Parrot.
Suppose we have details of parrot. Now, we are going to show how to build the class and objects of parrot.
""",
    """class Parrot:
    # class attribute
    species = "bird"
    # instance attribute
    def __init__(self, name
, age):
        self.name = name
        self.age = age
# instantiate the Parrot 
class
blu = Parrot("Blu", 10)
woo = Parrot("Woo", 15)
# access the class 
attributes
print("Blu is a {}".format
(blu.__class__.species))
print("Woo is also a {}"
.format(woo.__class__
.species))

When we run the program, the output will be:
Blu is a bird
Woo is also a bird
Blu is 10 years old
Woo is 15 years old
In the above program, we create a class with name Parrot. Then, we define attributes. The attributes are a characteristic of an object.
Then, we create instances of the Parrot class. Here, blu and woo are references (value) to our new objects.
Then, we access the class attribute using __class __.species. Class attributes are same for all instances of a class. Similarly, we access the instance attributes using blu.name and blu.age. However, instance attributes are different for every instance of a class.
""",
    """Methods are functions defined inside the body of a class. They are used to define the behaviors of an object.
""",
    """class Parrot:
    
    # instance attributes
    def __init__(self, name
, age):
        self.name = name
        self.age = age
    
    # instance method
    def sing(self, song):
        return "{} sings 
{}".format(self.name, song)
    def dance(self):
        return "{} is now 
dancing".format(self.name)
# instantiate the object
blu = Parrot("Blu", 10)
# call our instance methods

When we run program, the output will be:
Blu sings 'Happy'
Blu is now dancing
In the above program, we define two methods i.e sing() and dance(). These are called instance method because they are called on an instance object i.e blu.
________________________________________
""",
    """Inheritance is a way of creating new class for using details of existing class without modifying it. The newly formed class is a derived class (or child class). Similarly, the existing class is a base class (or parent class).
""",
    """        print("Bird is 
ready")
    def whoisThis(self):
        print("Bird")
    def swim(self):
        print("Swim faster"
)
# child class
class Penguin(Bird):
    def __init__(self):
        # call super() 
function
        super().__init__()
        print("Penguin is 
ready")
    def whoisThis(self):
        print("Penguin")
    def run(self):
        print("Run faster")
peggy = Penguin()
peggy.whoisThis()
peggy.swim()
peggy.run()

When we run this program, the output will be:
Bird is ready
Penguin is ready
Penguin
Swim faster
Run faster
In the above program, we created two classes i.e. Bird (parent class) and Penguin (child class). The child class inherits the functions of parent class. We can see this from swim() method. Again, the child class modified the behavior of parent class. We can see this from whoisThis() method. Furthermore, we extend the functions of parent class, by creating a new run() method.
Additionally, we use super() function before __init__() method. This is because we want to pull the content of __init__() method from the parent class into the child class.
""",
    """Using OOP in Python, we can restrict access to methods and variables. This prevent data from direct modification which is called encapsulation. In Python, we denote private attribute using underscore as prefix i.e single “ _ “ or double “ __“.""",
    """    def sell(self):
        print("Selling 
Price: {}".format(self
.__maxprice))
    def setMaxPrice(self, 
price):
        self.__maxprice = 
price
c = Computer()
c.sell()
# change the price
c.__maxprice = 1000
c.sell()
# using setter function
c.setMaxPrice(1000)
c.sell()

When we run this program, the output will be:
Selling Price: 900
Selling Price: 900
Selling Price: 1000
In the above program, we defined a class Computer. We use __init__() method to store the maximum selling price of computer. We tried to modify the price. However, we can’t change it because Python treats the __maxprice as private attributes. To change the value, we used a setter function i.e setMaxPrice() which takes price as parameter.
""",
    """Polymorphism is an ability (in OOP) to use common interface for multiple form (data types).
Suppose, we need to color a shape, there are multiple shape option (rectangle, square, circle). However we could use same method to color any shape. This concept is called Polymorphism.
""",
    """class Parrot:
    def fly(self):
        print("Parrot can 
fly")
    
    def swim(self):
        print("Parrot can't 
swim")
class Penguin:
    def fly(self):
        print("Penguin 
can't fly")
    
    def swim(self):
        print("Penguin can 
swim")
# common interface
def flying_test(bird):
    bird.fly()
#instantiate objects
blu = Parrot()
peggy = Penguin()

When we run above program, the output will be:
Parrot can fly
Penguin can't fly
In the above program, we defined two classes Parrot and Penguin. Each of them have common method fly() method. However, their functions are different. To allow polymorphism, we created common interface i.e flying_test() function that can take any object. Then, we passed the objects blu and peggy in the flying_test() function, it ran effectively.
________________________________________
""",
    """•	The programming gets easy and efficient.
•	The class is sharable, so codes can be reused.
•	The productivity of programmers increases
•	Data is safe and secure with data abstraction.
"""
  ],
  1: [
    "Python Object Oriented Programming",
    "Introduction to OOPs in Python",
    "Class",
    "Object",
    "Example 1: Creating Class and Object in Python",
    "Methods",
    "Example 2 : Creating Methods in Python",
    "Inheritance",
    "Example 3: Use of Inheritance in Python",
    "Encapsulation",
    "Example 4: Data Encapsulation in Python",
    "Polymorphism",
    "Example 5: Using Polymorphism in Python",
    "Key Points to Remember:"
  ]
};

var file = {
  0: [
    """In this chapter, you'll learn about Python file operations. More specifically, opening a file, reading from it, writing into it, closing it and various file methods you should be aware of.
    """,
    """File is a named location on disk to store related information. It is used to permanently store data in a non-volatile memory (e.g. hard disk).
Since, random access memory (RAM) is volatile which loses its data when computer is turned off, we use files for future use of the data.
When we want to read from or write to a file we need to open it first. When we are done, it needs to be closed, so that resources that are tied with the file are freed.
Hence, in Python, a file operation takes place in the following order.
1.	Open a file
2.	Read or write (perform operation)
3.	Close the file
________________________________________
""",
    """Python has a built-in function open() to open a file. This function returns a file object, also called a handle, as it is used to read or modify the file accordingly.
1.	>>> f = open("test.txt")    # open file in current directory
2.	>>> f = open("C:/Python33/README.txt")  # specifying full path
We can specify the mode while opening a file. In mode, we specify whether we want to read 'r', write 'w' or append 'a' to the file. We also specify if we want to open the file in text mode or binary mode.
The default is reading in text mode. In this mode, we get strings when reading from the file.
On the other hand, binary mode returns bytes and this is the mode to be used when dealing with non-text files like image or exe files.
Mode	Description
'r'	Open a file for reading. (default)
'w'	Open a file for writing. Creates a new file if it does not exist or truncates the file if it exists.
'x'	Open a file for exclusive creation. If the file already exists, the operation fails.
'a'	Open for appending at the end of the file without truncating it. Creates a new file if it does not exist.
't'	Open in text mode. (default)
'b'	Open in binary mode.
'+'	Open a file for updating (reading and writing)
Python File Modes
1.	f = open("test.txt")      # equivalent to 'r' or 'rt'
2.	f = open("test.txt",'w')  # write in text mode
3.	f = open("img.bmp",'r+b') # read and write in binary mode
Unlike other languages, the character 'a' does not imply the number 97 until it is encoded using ASCII (or other equivalent encodings).
Moreover, the default encoding is platform dependent. In windows, it is 'cp1252' but 'utf-8' in Linux.
So, we must not also rely on the default encoding or else our code will behave differently in different platforms.
Hence, when working with files in text mode, it is highly recommended to specify the encoding type.
1.	f = open("test.txt",mode = 'r',encoding = 'utf-8')
""",
    """When we are done with operations to the file, we need to properly close the file.
Closing a file will free up the resources that were tied with the file and is done using Python close() method.
Python has a garbage collector to clean up unreferenced objects but, we must not rely on it to close the file.
1.	f = open("test.txt",encoding = 'utf-8')
2.	# perform file operations
3.	f.close()
This method is not entirely safe. If an exception occurs when we are performing some operation with the file, the code exits without closing the file.
A safer way is to use a try...finally block.
1.	try:
2.	   f = open("test.txt",encoding = 'utf-8')
3.	   # perform file operations
4.	finally:
5.	   f.close()
This way, we are guaranteed that the file is properly closed even if an exception is raised, causing program flow to stop.
The best way to do this is using the with statement. This ensures that the file is closed when the block inside with is exited.
We don't need to explicitly call the close() method. It is done internally.
1.	with open("test.txt",encoding = 'utf-8') as f:
2.	   # perform file operations
""",
    """In order to write into a file in Python, we need to open it in write 'w', append 'a' or exclusive creation 'x' mode.
We need to be careful with the 'w' mode as it will overwrite into the file if it already exists. All previous data are erased.
Writing a string or sequence of bytes (for binary files) is done using write() method. This method returns the number of characters written to the file.
1.	with open("test.txt",'w',encoding = 'utf-8') as f:
2.	   f.write("my first file\n")
3.	   f.write("This file\n\n")
4.	   f.write("contains three lines\n")
This program will create a new file named 'test.txt' if it does not exist. If it does exist, it is overwritten.
We must include the newline characters ourselves to distinguish different lines.
________________________________________
""",
    """To read a file in Python, we must open the file in reading mode.
There are various methods available for this purpose. We can use the read(size) method to read in size number of data. If size parameter is not specified, it reads and returns up to the end of the file.
1.	>>> f = open("test.txt",'r',encoding = 'utf-8')
2.	>>> f.read(4)    # read the first 4 data
3.	'This'
4.	
5.	>>> f.read(4)    # read the next 4 data
6.	' is '
7.	
8.	>>> f.read()     # read in the rest till end of file
9.	'my first file\nThis file\ncontains three lines\n'
10.	
11.	>>> f.read()  # further reading returns empty sting
12.	''
We can see that, the read() method returns newline as '\n'. Once the end of file is reached, we get empty string on further reading.
We can change our current file cursor (position) using the seek() method. Similarly, the tell() method returns our current position (in number of bytes).
1.	>>> f.tell()    # get the current file position
2.	56
3.	
4.	>>> f.seek(0)   # bring file cursor to initial position
5.	0
6.	
7.	>>> print(f.read())  # read the entire file
8.	This is my first file
9.	This file
10.	contains three lines
We can read a file line-by-line using a for loop. This is both efficient and fast.
1.	>>> for line in f:
2.	...     print(line, end = '')
3.	...
4.	This is my first file
5.	This file
6.	contains three lines
The lines in file itself has a newline character '\n'.
Moreover, the print() end parameter to avoid two newlines when printing.
Alternately, we can use readline() method to read individual lines of a file. This method reads a file till the newline, including the newline character.
1.	>>> f.readline()
2.	'This is my first file\n'
3.	
4.	>>> f.readline()
5.	'This file\n'
6.	
7.	>>> f.readline()
8.	'contains three lines\n'
9.	
10.	>>> f.readline()
11.	''
Lastly, the readlines() method returns a list of remaining lines of the entire file. All these reading method return empty values when end of file (EOF) is reached.
1.	>>> f.readlines()
2.	['This is my first file\n', 'This file\n', 'contains three lines\n']
""",
    """There are various methods available with the file object. Some of them have been used in above examples.
Here is the complete list of methods in text mode with a brief description.
Method              	Description


close()	            Close an open file. It has no effect if the file is already closed.
detach()          	Separate the underlying binary buffer from the TextIOBase and return it.
fileno()          	Return an integer number (file descriptor) of the file.
flush()	            Flush the write buffer of the file stream.
isatty()          	Return True if the file stream is interactive.
read(n)	            Read atmost n characters form the file. Reads till end of file if it is negative or None.
readable()	        Returns True if the file stream can be read from.
readline(n=-1)	    Read and return one line from the file. Reads in at most n bytes if specified.
readlines(n=-1)	    Read and return a list of lines from the file. Reads in at most n bytes/characters if specified.
seek(offset,from=SEEK_SET)	Change the file position to offset bytes, in reference to from (start, current, end).
seekable()	        Returns True if the file stream supports random access.
tell()             	Returns the current file location.
truncate(size=None)	Resize the file stream to size bytes. If size is not specified, resize to current location.
writable()        	Returns True if the file stream can be written to.
write(s)          	Write string s to the file and return the number of characters written.
writelines(lines) 	Write a list of lines to the file.
"""
  ],
  1: [
    "Python File I/O",
    "What is a file?",
    "How to open a file?",
    "How to close a file Using Python?",
    "How to write to File Using Python?",
    "How to read files in Python?",
    "Python File Methods",
  ]
};
