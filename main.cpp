//
//  main.cpp
//  factorial
//
//  Created by Rafiul Rasel on 10/14/18.
//  Copyright © 2018 Rafiul Rasel. All rights reserved.
//

#include <iostream>
#include <cstdio>
#include <algorithm>
#include <string>
#include <vector>


using namespace std;

int factorial(int a){
    // if (*a>=1) true return ((*a)--) * factorial(a) else return 1
    if(a<=1)
        return 1;
    else{
        return a * factorial(a-1);
    }
}

int fib(int n){
    if(n==1 || n==2) return 1;
    else{
        return fib(n-1) + fib(n-2);
    }
}


int main(int argc, const char * argv[]) {
    // insert code here...
    int c = 6;
    int *a = new int();
    *a = c;
    int b = factorial(c);

    cout << "factorial of " << c << "! :" << b << endl;

    
    std::cout << "end the program" << endl;
    
    delete a;
    return 0;
}
