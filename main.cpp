// Sayidolimkhon Usmankhonov 220069
// Monday 14:00 lab

#include <iostream>

using namespace std;

// Main function
// Q1
void question1(int argc, char* argv[]) {
    cout << "Number of arguments received: " << argc - 1 << endl;
    for (int i = 1; i < argc; i++) {
        cout << argv[i] << endl;
    }
}
/***
Q2
Answer: The primary purpose of main function is to start program execution,
call other functions and receive command-line arguments. In Java it is static,
because it allows Java Virtual Machine to call it directly, without creating an
instance of some class
Q3
Answer: The return type of main function in C++ is int, in Java it is void.
The parameters of main function in C++ are (int argc, char* argv[]), in Java
they are (String[] args). The main function in C++ does not have access modifiers,
but in Java it is always public
Q4
Answer: It signifies the exit status of the program. In C++, exit 0 means the 
program was executed successfully, anything else means there was an error. In Java,
a non-zero exit status (let's say 1) can be achieved by calling System.exit(1);
*/


//Variables
//Q1
void question2() {
    int a, b;
    cout << "Enter two numbers (before swap): ";
    cin >> a >> b;
    a = a + b;
    b = a - b;
    a = a - b;
    cout << "After swap: " << a << " " << b << endl;
}
/***
Q2
Answer: Primitive types take fixed and very few amount of memory, because they are stored
in the stack. Reference types can take more memory, because they are stored both in stack
and heap. The stack stores the address to the object, while the object itself
is stored in the heap
Q3
Answer: Scope is the part of program where a variable is accessible. Local scope variables
are only accessible within the {} they are defined in. Class-level scope variables are accessible
within the class they are defined in.
Q4
Answer: C++, Java and other statically-typed languages define the type of variable
at compile-time and fix that type. Dynamic-typed languages like Python, JavaScript
define the type of variable at run-time and allow changing the type (let's say, a variable
called 'element' can be an integer at one point, and a string somewhere else)
*/


// Control Flow
// Q1
void question3() {
    int n1 = 0, n2 = 1, n3 = 1;
    cout << n1 << " " << n2 << " " << n3 << " ";
    for (int i = 3; i < 10; i++) {
        n1 = n2;
        n2 = n3;
        n3 = n1 + n2;
        cout << n3 << " ";
    }
    cout << endl;
}
/***
Q2
Answer: A 'while' loop checks the condition before each iteration, so the loop will not
execute if the condition is false at the beginning. A 'do-while' loop checks the condition
after each iteration, so the loop will execute at least once, even if the condition is
false at the beginning. A 'do-while' loop might be chosen when we want the loop to
execute at least once, regardless of the condition.
Q3
Answer: A 'switch' statement allows to compare a variable against multiple values (cases)
and execute different lines of code based on which case matches. It is an alternative
to using several 'if-else' statements. 'break' allows to exit the switch block
at the point it is called, and 'default' tells what to do if neither case matches
Q4
Answer: These are logical operators: 'a && b' returns true if both a and b are true,
'c || d' returns true if either c or d is true. Obviously, if a is false, then
'a && b' will be false regardless of b, so b can be skipped. Similarly, if c is true,
then 'c || d' will be true regardless of d, so d can be skipped. This 'skipping' is called
short-circuit evaluation. It is useful if evaluating b or d is much more difficult than
evaluating a or c: for example, '0 && (factorial(1000) > 4 * power(10, 2567))' will just
return false without calculating factorial(1000) or 4 * power(10, 2567)
*/


// Functions / Methods
// Q1
bool isPalindrome(string str) {
    for (int i = 0; i < str.length() / 2; i++) if (str[i] != str[str.length() - 1 - i]) return false;
    return true;
}
/***
Q2
Answer: In C++, primitive types are passed by value, while objects can be passed
by pointer or by reference. Passing by pointer means passing the address of the object,
while passing by reference means passing an alias to the object. In Java, primitive types
are also passed by value, but objects are always passed by reference
Q3
Answer: When multiple functions/methods have the same name but different parameters
(types, number, order), it is called function/method overloading. The parameters
must either have different types, order, or their number must be different
Q4
Answer: Recursion happens when a function calls itself. A base case tells when to stop
the recursion. Without a base case, the recursion can run infinitely, which will quickly
consume all RAM and crash the program (or the system)
*/


// Comments
// Q1
// This is a single-line comment
/* This is a
multi-line comment */
/**
 * And this is a documentation-style comment
 * @brief
 * @returns
 * @param
 * @throws
 * TODO:
 * */
/*** 
Q2
Answer: Comments are the main way to explain the purpose and logic of the code
to your teammates (or to yourself in the future), they are an essential communication tool
Q3
Answer: They help to highlight the important parts of documentation comments,
like @brief, @param, @returns, etc., and generate documentation in HTML, PDF, LaTeX
from the source code comments
Q4
Answer: Good code is code that is written in a clear to understand way. It's very easy
to make documentation reading such code. Comments might still be necessary to explain
difficult parts of the code. Good code is a result, comments are a tool to achieve it
*/


// Classes
// Q1
class BankAccount {
private:
double balance;
public:
    BankAccount(double initialBalance) {
        if (initialBalance < 0) balance = 0;
        else balance = initialBalance;
    }

    void deposit(double amount) {
        if (amount > 0) balance += amount;
    }

    double getBalance() {
        return balance;
    }
};

void question6() {
    BankAccount account(100.5);
    cout << "Initial balance: " << account.getBalance() << endl;
    account.deposit(50.25);
    cout << "Balance after deposit: " << account.getBalance() << endl;
}
/***
Q2
Answer: A class is a blueprint to create objects. An object is an instance of a class
Q3
Answer:
‘public‘ -- accessible from outside the class,
‘private‘ -- accessible only from within the class,
‘protected‘ -- accessible from within the class, by derived class instances and friends
Q4
Answer: A constructor is a special function that initializes an object when it is created.
A default constructor is a constructor that takes no parameters. If no constructor is defined
for a class, the compiler automatically provides a default constructor that initializes
the object with default values
*/


// Enums
// Q1
// no time to finish((


int main(int argc, char* argv[]) {
    int question = 0;
    cout << "Choose your question: ";
    cin >> question;
    if (question == 1) question1(argc, argv);
    else if (question == 2) question2();
    else if (question == 3) question3();
    else if (question == 4) {
        string str;
        cout << "Enter a string: ";
        cin >> str;
        if (isPalindrome(str)) cout << str << " is a palindrome" << endl;
        else cout << str << " is not a palindrome" << endl;
    }
    // else if (question == 5) look at my comments :-)
    else if (question == 6) question6();
    // else if (question == 7) question7(argc, argv);
    // else if (question == 8) question8(argc, argv);
    // else if (question == 9) question9(argc, argv);
    // else if (question == 10) question10(argc, argv);
    // else if (question == 11) question11(argc, argv);
    // else if (question == 12) question12(argc, argv);
    else cout << "Invalid question number." << endl;
    return 0;
}