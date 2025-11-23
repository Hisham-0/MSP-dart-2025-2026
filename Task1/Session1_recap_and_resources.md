# Resources
- [Dart from Wael Abo Hamza](https://youtube.com/playlist?list=PL93xoMrxRJIutlMCImcV3CYMmjS0MmlWL&si=Wp9PMTXKN27t9x2Q)
    > **Note:** if a video is talking about a topic we didn't mention in the session, then ignore it probabilty will be discussed later
- [Git and Github Tutorial from Elzero Web School](https://youtube.com/playlist?list=PLDoPjvoNmBAw4eOj58MZPakHjaO3frVMF&si=tds1tsZzjdAdPR3O)
    > **Note:** No need to watch the full play-list, just watch the sufficient amount to be able to use Git and GitHub
- [Slides for Revision](https://cisasuedu-my.sharepoint.com/:p:/g/personal/2023170400_cis_asu_edu_eg/EVIAgIvwUshJncibtYn7zEQBGqK3gcZzv9PFo7662zvsaw?e=caRbFd)
- [Dart Online Compiler](https://www.programiz.com/dart/online-compiler/)
---

# Quick Recap

To start programming using dart, we start with the main block
```
void main() {
    //Code Here
}   
```
## Data Types in Dart
- **numbers** 
```
int a = 10; // Integer data type
double b = 20.5; // Double data type

// "num" could hold both int or double values 
num c = 10;
c = 10.5;
```
- **String**
```
String name = "Dart";
```

**Note:** we can use Single Quotations `'String'` or double Quotations `"String"`, to include String values in it
```
String a = 'Value';
a = "another value";

// Both will work fine :)
``` 
- **Bolean**
```
bool isActive = true;
```

- **Var**
var can be adapted on the data entered in initialization
```
var a = 10;
```
This var will be assigned and treated as int for the rest of runtime

**We can't Change the data type of var later in the code, it will throw an Exception**
```
var a = 10; // assigned as int 

a = 'Some String'; // Compile Time Error
```

- **Dynamic**

Same as var, but the only different is that dynamic will be treated as dynamic for the entire runtime!
Meanning that you can change the data type in runtime with no problem

```
dynamic a = 10; //treated as dynamic

a = 'Some String'; //treated as dynamic and doesn't throw Excpetion at runtime or compile time
```

**Note:** if we didn't initialize the variable at the time of declaration, then dart will treat it as dynamic by default
```
var a; // treated as dynamic
a = 10; // valid
a = 'Some String'; // valid
```

## Printing
```
print('Hello, world!');  // The most simple way of printing and adding new line after the print
```

We can print using `dart:io` library
```
import 'dart:io'; // This is how we import libraries or packages in dart;

void main(){
    stdout.write('Printed Value'); // This won't add a new line after the printed word
    stdout.writeln('Printed value with new line after'); // This will add a new line after the printed word, same as print()
}
```
To Concatenate Any value in the printed message, we use `$` before the variable name
```
int a = 10;
print('The value of a is $a');
```
> The value of a is 10

In case we have more than the only variable name, such as an operation, or you need to use a built in function with variable name, then we have to use `${}`
```
double d = 10.5;
print('The double value after rounding is ${d.round()}');
```
>The double value after rounding is 11

## User Input
Now for the Input, we can take input from the user using the same `dart:io`
```
stdin.readLineSync();
```
In case we want to store the input value in a variable
```
 String a = stdin.readLineSync()!;
```
**Note:** All Inputs from user are Strings

## Null Safety

maybe you noticed the `!` in the last block of code, this is null Safety

when declaring a variable, we must tell the compiler if this variable can accept null values `nullable variable` or must contin valu `non-nullable variable`

```
String a = 'String value'; //valid declaration for non-nullable variable

String b; //Invalid declaration for non-nullable variable

String? b // Valid declaration for nullable variable
```
The `?` after data type means that we are telling the compiler: `This variable will be nullable`

By applying this rule, then we can rewrite the same input line without null-check

```
String? a = stdin.readLineSync();
```

Now we won't have any issues :)

---

So back to our original input line
```
String a = stdin.readLineSync()!;
```

What does the `!` mean?

It tells the compiler that we promise you there will be a value coming from `stdin.readLineSync()`, since `stdin.readLineSync()` could return `null`, and the variable is `non-nullable`

but if we aren't sure that the user could provide input, we can make what's called `null check operation`

```
String a = stdin.readLineSync()??'Some Value';
```
This line tells the compiler, if you found the return value of `stdin.readLineSync()` null, then use the value after the `??`

**Note:** we can't access any nullable variable without initialization or it could throw runtime exception

```
double? a;

a.round(); // Runtime Error, since a is null
```
## Type Conversion
if we went back to the input line
```
String a = stdin.readLineSync()!;
```
The variable `a` is a String, but what if we want to take an integer input from the user?
We have to convert the String to int using `int.parse()`
```
String a = stdin.readLineSync()!;
int number = int.parse(a);
```
Or we can do it in a single line
```
int number = int.parse(stdin.readLineSync()!);
```

---

In case we want to take double input from the user, we can use `double.parse()`
```
double number = double.parse(stdin.readLineSync()!);
```

--- 

In case we want to convert int to double or double to int, we can use the built-in functions `toInt()` and `toDouble()`
```
int a = 10;
double b = a.toDouble(); // converts int to double
double c = 10.5;
int d = c.toInt(); // converts double to int
```

---

if we want to convert any data type to String, we can use `toString()`
```
int a = 10;
String str = a.toString(); // converts int to String
double b = 10.5;
String str2 = b.toString(); // converts double to String
```

## control Flow Statements
- **if-else statement**

this is the most simple way to control the flow of our program, using conditions
```
if(condition){
    //code here
} else if (condition2){
    //code here
} else {
    //code here
}
```

---

- **switch-case statement**

this is antother way to control the flow of our program, using multiple conditions based on a single variable

```
switch(variable){
    case value1:
        //code here
        break;
    case value2:
        //code here
        break;
    default:
        //code here
}
```
> **Note:** don't forget to use `break;` after each case to avoid going through all the cases

> **Note:** we can use `default:` to handle any value that doesn't match any case

## Loops

Loops are used to repeat a block of code multiple times until a specific condition is met

- **for loop**
for loop is used to repeat a block of code a specific number of times
```
for(initialization; condition; increment/decrement){
    //code here
}
```

**initialization:** is used to initialize the loop variable

**condition:** is used to check if the loop should continue or not

**increment/decrement:** is used to update the loop variable

---

- **while loop** while loop is used to repeat a block of code while a specific condition is true
```
while(condition){
    //code here
}
```

---

- **do-while loop**
do-while loop is used to repeat a block of code at least once, and then while a specific condition is true
```
do{
    //code here
}while(condition);
```

**Note:** We can use `break;` to exit the loop at any time, and `continue;` to skip the current iteration and move to the next one

## Collections
- **List** list is an ordered collection of values, we can declare it like this
```
List<int> numbers = [10,20,30,40];
```

so we could hold multiple values in a single variable
To access any value in the list, we use the index of the value starting from 0
```
print(numbers[0]); // prints 10
print(numbers[2]); // prints 30
```
**Note:** we can declare list without specifying the data type by using `dynamic` instead of specific data type, but if you are sure about the data type it's better to specify it

--- 

- **Set**
set is an unordered collection of unique values, we can declare it like this
```
Set<String> fruits = {'Apple', 'Banana', 'Orange'};
```
To access any value in the set, we can use a loop to iterate through all values
```
for (var fruit in fruits) {
    print(fruit);
}
```

---

- **Map**
map is a collection of `key-value` pairs, we can declare it like this
```
Map<String, int> scores = {
    'Math': 90,
    'Science': 85,
    'English': 88
};
```
To access any value in the map, we use the key associated with that value
```
print(scores['Math']); // prints 90
print(scores['English']); // prints 88
```

we can also assign value to keys or add new key-value pairs using this format
```
Map <String, int> scores = {};
scores['History'] = 92; // adds new key-value pair
scores['Math'] = 95; // updates the value for the key 'Math'
```

## Functions
Functions are used to group a block of code that can be reused multiple times
- **Block Functions**
```
returnType functionName(parameter1Type parameter1, parameter2Type parameter2){
    //code here
    return returnValue; // if returnType is not void
}
```
**Note:** if the function doesn't return any value, we use `void` as returnType
```
void greet(String name){
    print('Hello, $name!');
}   
```

if we let the function without return type, dart will consider it as `dynamic`
```
greet(String name){
    print('Hello, $name!');
}   
```
This means that the function could return any data type

--- 

- **Arrow Functions**
if the function contains a single expression, we can use arrow function syntax
```
returnType functionName(parameter1Type parameter1, parameter2Type parameter2) => expression;
```
This is equivalent to
```
returnType functionName(parameter1Type parameter1, parameter2Type parameter2){
    return expression;
}
```

But since the function contains a single expression, we don't need to use `return` keyword
```
int add(int a, int b) => a + b;
void greet(String name) => print('Hello, $name!');
```

--- 

- **lmbda Functions (anonymous functions)** 
lmbda functions are functions without a name, we can use them as arguments to other functions or assign them to variables

it could either be a block function or an arrow function

```
var add = (int a, int b) {
    return a + b;
};
```

```
var add = (int a, int b) => a + b;
```


## Example Code
```
import 'dart:io';
void main() {
    stdout.write('Enter your name: ');
    String name = stdin.readLineSync()!;

    greet(name);

    stdout.write('Enter first number: ');
    int num1 = int.parse(stdin.readLineSync()!);

    stdout.write('Enter second number: ');
    int num2 = int.parse(stdin.readLineSync()!);

    int sum = add(num1, num2);
    print('The sum of $num1 and $num2 is $sum');
}

void greet(String name) {
    print('Hello, $name!');
}

int add(int a, int b) {
    return a + b;
} 
```
