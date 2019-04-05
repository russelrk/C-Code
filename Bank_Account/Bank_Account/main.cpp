//
//  main.cpp
//  Bank_Account
//
//  Created by Rafiul Rasel on 4/4/19.
//  Copyright © 2019 Rafiul Rasel. All rights reserved.
//

#include <iostream>
#include "account.h"

int main(int argc, const char * argv[]) {
    // insert code here...
    checking new_acc("Rafiul Rasel", 100);
    savings new_acc2("Rafiul Rasel", 1000);
    savings new_acc1("Rafiul Rasel", 1000);
    
    new_acc.get_details();
    new_acc.deposit(50.7);
    new_acc.withdrow(30);
    
    new_acc1.get_details();
    new_acc1.deposit(50.7);
    new_acc1.withdrow(30);
    
    return 0;
}
