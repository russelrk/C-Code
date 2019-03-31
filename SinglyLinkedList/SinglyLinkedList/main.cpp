//
//  main.cpp
//  SinglyLinkedList
//
//  Created by Rafiul Rasel on 3/9/19.
//  Copyright © 2019 Rafiul Rasel. All rights reserved.
//

#include <iostream>
#include "SinglyLinkedList.h"

template <typename T>
SinglyLinkedListNode<T>* addAtHead(SinglyLinkedListNode<T>* node, T data){
    if(node == NULL) return new SinglyLinkedListNode<T>(data);
    
    SinglyLinkedListNode<T>* ptr;
    ptr = node;
    node = new SinglyLinkedListNode<T>(data);
    node->next = ptr;
    return node;
}

template <typename T>
SinglyLinkedListNode<T>* addInBetween(SinglyLinkedListNode<T>* node, T data, int pos){
    SinglyLinkedListNode<T>* ptr = new SinglyLinkedListNode<T>();
    SinglyLinkedListNode<T>* cur = node;
    
    if(node == NULL) return new SinglyLinkedListNode<T>(data);
    
    while(pos-1>0){
        node = node->next;
        pos--;
    }
    
    ptr = node->next;
    node->next = new SinglyLinkedListNode<T>(data);
    node = node->next;
    node->next = ptr;
    delete ptr;
    return cur;
}

template <typename T>
SinglyLinkedListNode<T>* addAtTail(SinglyLinkedListNode<T>* node, T data){
    if(node == NULL) return new SinglyLinkedListNode<T>(data);
    
    SinglyLinkedListNode<T>* cur = node;
    
    while(node->next != NULL){
        node = node->next;
    }
    

    node->next = new SinglyLinkedListNode<T>(data);
    node = node->next;
    node->next = NULL;

    return cur;
}

template <typename T>
SinglyLinkedListNode<T>* reverseList(SinglyLinkedListNode<T>* node){
    if(node == NULL || node->next == NULL) return node;
    
    SinglyLinkedListNode<T>* res = NULL;
    SinglyLinkedListNode<T>* next = NULL;
    
    while(node != NULL){
        next = node->next;
        node->next = res;
        res = node;
        node = next;
    }

    return res;
}

template <typename T>
SinglyLinkedListNode<T>* reverseList(SinglyLinkedListNode<T>* node, int k){
    if(node == NULL || node->next == NULL) return node;
    
    SinglyLinkedListNode<T>* res = NULL;
    SinglyLinkedListNode<T>* next = NULL;
    
    while(k>0){
        next = node->next;
        node->next = res;
        res = node;
        node = next;
        k--;
    }
    while(node != NULL){
        res = addAtTail(res, node->data);
        node = node->next;
    }
    return res;
}

template <typename T>
SinglyLinkedListNode<T>* margeAlternate(SinglyLinkedListNode<T>* node1, SinglyLinkedListNode<T>* node2){
    SinglyLinkedListNode<T>* res = NULL;
    
    while(node1 != NULL && node2 != NULL){
        res = addAtHead(res, node1->data);
        node1 = node1->next;
        res = addAtHead(res, node2->data);
        node2 = node2->next;
    }
    
    while(node1 != NULL){
        res = addAtHead(res, node1->data);
        node1 = node1->next;
    }
    
    while(node2 != NULL){
        res = addAtHead(res, node2->data);
        node2 = node2->next;
    }
    
    res = reverseList(res);
    return res;
}

template <typename T>
void print(SinglyLinkedListNode<T>* node){
    while(node != NULL){
        cout << node->data << " ";
        node = node->next;
    }
}

template <typename T>
bool checkLoop(SinglyLinkedListNode<T>* node){
    SinglyLinkedListNode<int>* ptr1 = node;
    SinglyLinkedListNode<int>* ptr2 = node;
    
    
    while(ptr1 != NULL && ptr2 != NULL && ptr2->next != NULL){
        ptr1 = ptr1->next;
        ptr2 = ptr2->next->next;
        if(ptr1==ptr2) {
            return true;
        }
    }
    
    return false;
}


int main(int argc, const char * argv[]) {
    // insert code here...
    SinglyLinkedListNode<int>* node1 = NULL;
    SinglyLinkedListNode<int>* node2 = NULL;

    for(int i=0; i<5; i++){
        node1 = addAtHead(node1, 10-i);
        node2 = addAtTail(node2, 10+1+i);
    }
    
    
    SinglyLinkedListNode<int>* node3 = new SinglyLinkedListNode<int>();
    
    node3 = margeAlternate(node1, node2);
    
    print(node1);
    cout << endl;

    
    node1 = reverseList(node1);
    
    print(node1);
    cout << endl;
    
    node1->next->next = node1;
    
    if(checkLoop(node1)){
        cout << "Loop Exists" << endl;
    }
    
    cout << endl;
    return 0;
}
