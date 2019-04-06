//
//  main.cpp
//  Sparse_Matrix
//  Sparse Matrix example using linked list 
//  Created by Rafiul Rasel on 1/5/19.
//  Copyright © 2019 Rafiul Rasel. All rights reserved.
//

#include <iostream>
#include "Sparse_Matrix.h"

int main(int argc, const char * argv[]) {
    // insert code here...
    
    int a[4][4] = {{1, 0, 0, 7},
        {0, 3, 0, 1},
        {9, 5, 0, 0},
        {0, 0, 2, 0}};
    
    Sparse_Matrix<int>* mat = new Sparse_Matrix<int>();
    
    for(int i=0; i<4; i++){
        for(int j=0; j<4; j++){
            if(a[i][j]!=0){
                mat->add_data(a[i][j], i, j);
            }
        }
    }
    
    if(mat->find(3)){
        cout << "found" << endl;
    }else{
        cout << "not found" << endl;
    }
    
    mat->print();
    std::cout << "Hello, World!\n";
    return 0;
}
