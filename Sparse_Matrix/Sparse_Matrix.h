//
//  Sparse_Matrix.h
//  Sparse_Matrix
//
//  Created by Rafiul Rasel on 4/5/19.
//  Copyright © 2019 Rafiul Rasel. All rights reserved.
//

#ifndef Sparse_Matrix_h
#define Sparse_Matrix_h
using namespace std;


struct Index{
    int row;
    int col;
    Index(int row1, int col1): row(row1), col(col1){}
    ~Index(){}
};

template <typename T>
struct Node{
    T val;
    Index index;
    Node* next;
    
    Node(){}
    Node(T val1, int row1, int col1):index(row1, col1){
        this->val = val1;
        this->next = NULL;
    }
};

template <typename T>
class Sparse_Matrix{
public:
    Sparse_Matrix(){
        sparse_matrix = NULL;
    }
    ~Sparse_Matrix(){
        delete sparse_matrix;
    }
    
    Sparse_Matrix* add_data(T val, int row, int col){
        if(sparse_matrix==NULL){
            sparse_matrix = new Node<T>(val, row, col);
        }else{
            
            Node<T>* ptr = sparse_matrix;
            while(ptr->next != NULL){
                ptr = ptr->next;
            }
            ptr->next = new Node<T>(val, row, col);
        }
        
        return this;
    }
    
    void print(){
        Node<T>* ptr = sparse_matrix;
        while(ptr != NULL){
            cout << "[" << ptr->index.row << " " << ptr->index.col << "]" << "  " << ptr->val << endl;
            ptr = ptr->next;
        }
    }
    
    bool find(T val){
        int count = 0;
        Node<T>* ptr1 = sparse_matrix;
        Node<T>* ptr2 = NULL;
        if(sparse_matrix->next->next != NULL)
            ptr2 = sparse_matrix->next->next;
        else
            ptr2 = sparse_matrix->next;
        
        while(ptr1 != NULL || ptr2 != NULL){
            count++;
            if(ptr1->val == val){
                cout << count << endl;
                return true;
            }
            if(ptr2->val == val){
                cout << count << endl;
                return true;
            }
            ptr1 = ptr1->next;
            if(sparse_matrix->next->next != NULL)
                ptr2 = sparse_matrix->next->next;
            else
                ptr2 = sparse_matrix->next;
        }
        
        return false;
    }
    
private:
    Node<T>* sparse_matrix;
};


#endif /* Sparse_Matrix_h */
