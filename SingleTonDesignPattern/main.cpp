//
//  main.cpp
//  SingleTonDesignPattern
//  Single Design Pattern Example with delete instance example 
//  Created by Rafiul Rasel on 4/5/19.
//  Copyright © 2019 Rafiul Rasel. All rights reserved.
//

#include <iostream>
#include "SingleTon.h"

int main(int argc, const char * argv[]) {
    // insert code here...
    SingleTon* ins = SingleTon::getInstance();
    SingleTon* ins1 = SingleTon::getInstance();
    SingleTon* ins2 = SingleTon::getInstance();
    
    ins->getActiveInstance();
    
    
    
    while(ins->getActiveNumber() > 0){
        ins->releaseInstance();
    }
    ins->getActiveInstance();
    
    return 0;
}
