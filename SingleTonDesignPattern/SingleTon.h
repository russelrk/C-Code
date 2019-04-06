//
//  SingleTon.h
//  SingleTonDesignPattern
//
//  Created by Rafiul Rasel on 4/5/19.
//  Copyright © 2019 Rafiul Rasel. All rights reserved.
//

#ifndef SingleTon_h
#define SingleTon_h
using namespace std;

class SingleTon{
public:
    static SingleTon* getInstance(){
        if(instance == NULL){
            instance = new SingleTon();
        }
        instance->addRef();
        return instance;
    }
    
    static void releaseInstance(){
        instance->relRef();
        if(instance !=NULL && count == 0){
            delete instance;
            instance = NULL;
        }
        
    }
    
    void getActiveInstance(){
        cout << "Active Instance: " << count << endl;
    }
    int getActiveNumber(){
        return count;
    }
    
    void set_name(string name1){
        this->name = name1;
    }
    
    void get_name(){
        cout << "Name of ref " << count << " :" << this->name << endl;
    }
private:
    // constructor and destructor
    SingleTon(){
        cout << "constructor called" << endl;
    }
    ~SingleTon(){
        cout << "destructor called" << endl;
    }
    
    // static reference
    static SingleTon* instance;
    
    string name;
    
    
    static int count;
    
    static void addRef(){
        count++;
    }
    static void relRef(){
        count--;
    }
};

SingleTon* SingleTon::instance = NULL;
int SingleTon::count = 0;


#endif /* SingleTon_h */
