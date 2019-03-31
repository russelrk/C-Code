//
//  BST.h
//  BST
//
//  Created by Rafiul Rasel on 2/18/19.
//  Copyright © 2019 Rafiul Rasel. All rights reserved.
//

#ifndef BST_h
#define BST_h

using namespace std;

// Simple Binary Search Tree Construct
template <class T>
struct Node{
public:
    Node(){
        this->data = NULL;
        this->left = NULL;
        this->right = NULL;
    }
    Node(T val){
        this->data = val;
        this->left = NULL;
        this->right = NULL;
    }
    Node(T val, Node<T> left, Node<T> right){
        this->data = val;
        this->left = left;
        this->right = right;
    }

    T data;
    Node* left;
    Node* right;
};

// Binary Tree Class 
template <class T>
class BST: public Node<T> {
public:
    
    // add val to BST helper
    void add(T val){
        if(root){
            this->addHelper(root, val);
        }else{
            this->root = new Node<T>(val);
        }
    }
    
    // depth first search helper
    void dfs(int a=0){
        // a = 0 inorder
        // a = 1 pre order 
        // a = 2 post order
        this->dfsHelper(root, a);
    }
    
    // breadth first search helper 
    void bfs(){
        this->bfsHelper(root);
    }
    
    // check if BST or Not
    void isBST(){

        Node<T>* l = NULL;
        Node<T>* r = NULL;
        bool a = this->isBSTHelper(root, l, r);
        if(a) cout << "Is BST" << endl;
        else cout << "Not BST" << endl;
    }
    
    // search if val exist in BST or not helper 
    void searchBST(int val){
        if(!root) cout << "empty tree" << endl;
        bool index = this->searchBSTHelper(root, val);
        if (index)
            cout << "index of " << val << " found in BAST" << endl;
        else
            cout << "Not Found " << endl;
    }
    
    // print leaf in binary tree helper 
    void printLeaf(){
        this->printLeafHelper(root);
    }
private:
    Node<T> *root;
    
    void addHelper(Node<T> *root, T val) {
        if (root->data > val) {
            if (!root->left) {
                root->left = new Node<T>(val);
            } else {
                addHelper(root->left, val);
            }
        } else {
            if (!root->right) {
                root->right = new Node<T>(val);
            } else {
                addHelper(root->right, val);
            }
        }
    }
    
    
    void dfsHelper(Node<T> *root, int a){
        if(!root) return;
        if(a==0){
            dfsHelper(root->left, a);
            std::cout << root->data << " ";
            dfsHelper(root->right, a);
        }else if(a==1){
            std::cout << root->data << " ";
            dfsHelper(root->left, a);
            dfsHelper(root->right, a);
        }else if(a==-1){
            dfsHelper(root->left, a);
            dfsHelper(root->right, a);
            std::cout << root->data << " ";
        }
        
    }
    void bfsHelper(Node<T> *root){
        if(!root) cout << "tree is not initialized" << endl;
        int h = heightHelper(root);
        for(int i=1; i<=h; i++){
            printBFS(root, i);
        }
    }
    
    void printBFS(Node<T> *root, int l){
        if(!root) return;
        if(l == 1) cout << root->data << " ";
        else if (l>1){
            printBFS(root->left, l-1);
            printBFS(root->right, l-1);
        }
    }
    
    int heightHelper(Node<T> *root)
    {
        if (root==NULL)
            return 0;
        else
        {
            /* compute the height of each subtree */
            int lheight = 1+heightHelper(root->left);
            int rheight = 1+heightHelper(root->right);
            
            /* use the larger one */
            return lheight>rheight ? lheight : rheight;
        }
    }
    
    bool isBSTHelper(Node<T> *root, int min, int max){
        if(!root) return true;
        if(root->data < min && root->data > max) return false;
        
        return isBSTHelper(root->left, min, root->data-1) &&
            isBSTHelper(root->right, root->data+1, max);
    }
    
    bool isBSTHelper(Node<T> *root, Node<T>* l, Node<T>* r){
        if(!root) return true;
        if((l != NULL && root->data < l->data)
           || (r != NULL && root->data > r->data)) return false;
        
        return isBSTHelper(root->left, l, root) &&
        isBSTHelper(root->right, root, r);
    }
    
    bool searchBSTHelper(Node<T> *root, int val){
        if(!root) return false;
        if(root->data == val) return true;
        else{
            if(root->data > val) return searchBSTHelper(root->left, val);
            else return searchBSTHelper(root->right, val);
        }
        
        return false;
    }
    
    void printLeafHelper(Node<T>* root){
        if(root == NULL) cout << "empty tree" << endl;
        if(root->left == NULL && root->right == NULL) cout << root->data << " ";
        else{
            if(root->left != NULL) printLeafHelper(root->left);
            if(root->right != NULL) printLeafHelper(root->right);
        }
    }
};

#endif /* BST_h */
