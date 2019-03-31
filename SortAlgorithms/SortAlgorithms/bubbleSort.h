//
//  bubbleSort.h
//  Selection Sort Algorithms
//
//  Created by Rafiul Rasel on 2/18/19.
//  Copyright © 2019 Rafiul Rasel. All rights reserved.
//

#include "swap.h"

#ifndef bubbleSort_h
#define bubbleSort_h
template <typename T>
void bubbleSort(T arr[], int len){
    for(int i=0; i<len-1; i++){
        for(int j=0; j<len-i-1; j++){
            if(arr[j]>arr[j+1]) swap(&arr[j], &arr[j+1]);
        }
    }
}
#endif /* bubbleSort_h */
