//
//  main.cpp
//  BST
//
//  Created by Rafiul Rasel on 2/18/19.
//  Copyright © 2019 Rafiul Rasel. All rights reserved.
//
#include <stdio.h>
#include <iostream>
#include <algorithm>
#include <iterator>
#include "BST.h"
using namespace std;


int main(int argc, const char * argv[]) {
    // insert code here...
    BST<int> *bst = new BST<int>();
    
    bst->add(11);
    bst->add(1);
    bst->add(6);
    bst->add(-1);
    bst->add(-10);
    bst->add(100);
    bst->add(10);
    bst->add(5);
    bst->add(4);
    bst->add(20);
    bst->add(30);
    
    //in order
    cout << "In order Traversal of BST" << endl;
    bst->dfs(0);
    cout << endl;
    
    //pre order
    cout << "Pre Order Traversal of BST" << endl;
    bst->dfs(1);
    cout << endl;
    
    //post order
    cout << "Post order Traversal of BST" << endl;
    bst->dfs(-1);
    cout << endl;
    
    // breadth first traversal
    cout << "Breadth First Traversal of BST" << endl;
    bst->bfs();
    cout << endl;
    
    
    bst->isBST();
    
    bst->searchBST(1000);
    
    cout << "Print Leaf" << endl;
    
    bst->printLeaf();
    
    cout << endl;
    return 0;
}

