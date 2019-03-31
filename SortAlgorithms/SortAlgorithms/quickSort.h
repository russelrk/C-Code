//
//  quickSort.h
//  quickSort
//
//  Created by Rafiul Rasel on 2/18/19.
//  Copyright © 2019 Rafiul Rasel. All rights reserved.
//
#include "swap.h"

#ifndef quickSort_h
#define quickSort_h

template <typename T>
int partition(T arr[], int low, int high){
    int pivot = arr[high];
    int i = low;
    
    for(int j=low; j<high; j++){
        if(arr[j]<pivot){
            swap(&arr[i], &arr[j]);
            i++;
        }
    }
    swap(&arr[i], &arr[high]);
    return i;
}

template <typename T>
int partitionN(T arr[], int low, int high){
    int pivot = arr[low];
    int i = high;
    
    for(int j=high; j>=low; j--){
        if(arr[j]>=pivot){
            swap(&arr[i], &arr[j]);
            i--;
        }
    }
    
    return i+1;
}

template <typename T>
void quickSort(T arr[], int low, int high){
    
    if(low < high){
        
        int piv = arr[high];
        int pi = low;
        
        for(int i=pi; i<high; i++){
            if(arr[i]<piv){
                swap(&arr[i], &arr[pi]);
                pi++;
            }
        }
        swap(&arr[pi], &arr[high]);
        
        
        quickSort(arr, low, pi-1);
        quickSort(arr, pi+1, high);
        
    }
}


#endif /* quickSort_h */
