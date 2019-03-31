//
//  selSort.h
//  SortAlgorithms
//
//  Created by Rafiul Rasel on 2/18/19.
//  Copyright © 2019 Rafiul Rasel. All rights reserved.
//
#include "swap.h"

#ifndef selSort_h
#define selSort_h

template <typename T>
void selSort(T arr[], int len){
    for(int i=0; i<len-1; i++){
        for(int j=i+1; j<len; j++){
            if(arr[i]>arr[j]) swap(&arr[i], &arr[j]);
        }
    }
}


#endif /* selSort_h */
