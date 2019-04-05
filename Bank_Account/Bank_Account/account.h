//
//  account.h
//  Bank_Account
//
//  Created by Rafiul Rasel on 4/4/19.
//  Copyright © 2019 Rafiul Rasel. All rights reserved.
//

#ifndef account_h
#define account_h
using namespace std;

const int acc_number = 10000;

class account{
protected:
    static int a;
public:
    account(){
        acc_no = acc_number+a;
        a++;
    }
    virtual ~account(){
        a--;
    }
    // set names
    void set_name(string name){
        acc_name = name;
    }
    // set balance
    void set_bal(double bal){
        acc_bal = bal;
    }
    // set type
    void set_type(string type){
        acc_type = type;
    }
    // get details
    void get_details(){
        this->get_details_helper();
    }
    // deposit
    virtual void deposit(double bal){
        this->deposit_helper(bal);
    }
    // withdrow
    virtual void withdrow(double bal){
        this->withdrow_helper(bal);
    }
private:
    string acc_name;
    int acc_no;
    double acc_bal;
    string acc_type;
    // det details helper
    virtual void get_details_helper(){
        cout << "Account Name     : " << this->acc_name << endl;
        cout << "Account No       : " << this->acc_no << endl;
        cout << "Account Type     : " << this->acc_type << endl;
        cout << "Account Balance  : " << this->acc_bal << endl;
    }
    
    // deposit helper function
    void deposit_helper(double bal){
        this->acc_bal += bal;
        cout << "New Balance: " << this->acc_bal << endl;
    }
    
    // withdrowal helper function 
    void withdrow_helper(double bal){
        if(bal>this->acc_bal)
            cout << "Withrown ammount is larger than the accout balance!!" << endl;
        else{
            cout << "Balance            : " << this->acc_bal << endl;
            this->acc_bal -= bal;
            cout << "Ammount Withdrown  : " << bal << endl;
            cout << "New Balance        : " << this->acc_bal << endl;
        }
    }
    
};

class checking: account{
private:
    
public:
    // intialize checking class with its perent class
    checking(string name="", double bal=0):account(){
        this->set_name(name);
        this->set_bal(bal);
        this->set_type("Checking");
    }
    ~checking(){}
    
    void get_details(){
        account::get_details();
    };
    
    void deposit(double bal){
        account::deposit(bal);
    }
    
    void withdrow(double bal){
        account::withdrow(bal);
    }
    
};

class savings: account{
private:
    
public:
    // intialize savings class with its perent class
    savings(string name="", double bal=250):account(){
        if(bal<250){
            cout << "Opening balance must be greather or equal to 250" << endl;
            account::a--;
        }else {
            this->set_name(name);
            this->set_bal(bal);
            this->set_type("Savings");
        }
    }
    ~savings(){}
    void get_details(){
        account::get_details();
    }
    
    void deposit(double bal){
        account::deposit(bal);
    }
    
    void withdrow(double bal){
        if(bal<100)
            cout << "Withdrowal ammount must be greater than 100" << endl;
        else
            account::withdrow(bal);
    }
    
};

int account::a = 1;
#endif /* account_h */
