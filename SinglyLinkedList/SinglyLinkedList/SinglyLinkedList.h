//
//  SinglyLinkedList.h
//  SinglyLinkedList
//
//  Created by Rafiul Rasel on 3/9/19.
//  Copyright © 2019 Rafiul Rasel. All rights reserved.
//

#ifndef SinglyLinkedList_h
#define SinglyLinkedList_h
using namespace std;

template <typename T>
class SinglyLinkedListNode{
public:
    T data;
    SinglyLinkedListNode *next;
    SinglyLinkedListNode() {}
    SinglyLinkedListNode(T node_data) {
        this->data = node_data;
        this->next = nullptr;
    }
};


#endif /* SinglyLinkedList_h */
