//
//  main.cpp
//  SortAlgorithms
//
//  Created by Rafiul Rasel on 2/18/19.
//  Copyright © 2019 Rafiul Rasel. All rights reserved.
//


#include <stdio.h>
#include <iostream>
#include <algorithm>
#include <iterator>
#include "intSort.h"


void swap(int &a, int &b){
    int temp = a;
    a = b;
    b = temp;
}
void sort(int arr[], int l, int r){
    if(l<r){
        int m = l+(r-l)/2;
        
        sort(arr, l, m);
        sort(arr, m+1, r);
        
        int i, j, k;
        int n1 = m-l+1;
        int n2 = r-m;
        
        int R[n1], L[n2];
        
        for(i=0; i<n1; i++){
            L[i] = arr[l+i];
        }
        for(i=0; i<n2; i++){
            R[i] = arr[m+i+1];
        }
        
        i=0;
        j=0;
        k=l;
        while(i<n1 && j<n2){
            if(L[i]<R[j]){
                arr[k] = L[i];
                k++;
                i++;
            }else{
                arr[k] = R[j];
                k++;
                j++;
            }
        }
        while(i<n1){
                arr[k] = L[i];
                k++;
                i++;
        }
        while(j<n2){
            arr[k] = R[j];
            k++;
            j++;
        }
        
    }
}
int main() {
    int a, b;
    a = 1;
    b = 2;
    int arr[] = {2, 10, 1, 3, 5, 6, 7, 4, 15, 8};
    
    int len = sizeof(arr)/sizeof(*arr);
    

    insSort(arr, len-1);
    
    for(int i=0; i<len; i++){
        cout << arr[i] << " " ;
    }
    
    int index = binarySearch(arr, 1000, 0, len-1);
    cout << endl;
    cout << "value found : " << index << endl;
    cout << endl;
    return 0;
}

