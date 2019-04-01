//
//  main.cpp
//  DoubliLinkedList
//
//  Created by Rafiul Rasel on 3/12/19.
//  Copyright © 2019 Rafiul Rasel. All rights reserved.
//

#include <iostream>
using namespace std;


struct Node{
    int data;
    Node* next;
    Node* prev;
    Node(){}
    Node(int val){
        data = val;
        next = NULL;
        prev = NULL;
    }
};


class DoubliLinkedList{
public:
    DoubliLinkedList(){
        this->root = NULL;
    }
    DoubliLinkedList(int val){
        this->root = new Node(val);
    }
    void nextLinker(DoubliLinkedList* node){
        this->root->next = node->root;
        node->root->prev = this->root;
    }
    DoubliLinkedList* next(){
        DoubliLinkedList* ptr = this;
        if(ptr->root != NULL)
            ptr->root = ptr->root->next;
        return ptr;
    }
    DoubliLinkedList* prev(){
        DoubliLinkedList* ptr = this;
        if(ptr->root != NULL)
            ptr->root = ptr->root->prev;
        return ptr;
    }
    DoubliLinkedList* addAtHead(DoubliLinkedList* node, int val){
        if(node->root == NULL) {
            return new DoubliLinkedList(val);
        }
        DoubliLinkedList* ptr = node;
        node = new DoubliLinkedList(val);
        node->nextLinker(ptr);
    
        return node;
    }
    DoubliLinkedList* addAtTail(DoubliLinkedList* node, int val){
        if(node->root == NULL) {
            return new DoubliLinkedList(val);
        }
        DoubliLinkedList* ptr = node;
        while(ptr->root->next != NULL)
            ptr = ptr->next();

        ptr->nextLinker(new DoubliLinkedList(val));
        
        while(ptr->root->prev != NULL)
            ptr = ptr->prev();
        
        return ptr;
    }
    
    void print(){
        Node* ptr = this->root;
        if(ptr == NULL) cout << "NULL pointer" << endl;
        while(ptr != NULL){
            cout << ptr->data << " ";
            ptr = ptr->next;
        }
        
        
    }
private:
    Node* root;
};

int main(int argc, const char * argv[]) {
    // insert code here...
    DoubliLinkedList* node = new DoubliLinkedList();
    node = node->addAtHead(node, 1);
    node = node->addAtTail(node, 2);
    node = node->addAtTail(node, 3);
    node = node->addAtTail(node, 4);
    node = node->addAtTail(node, 5);
    
    node->print();
    cout << endl << endl;
    return 0;
}
