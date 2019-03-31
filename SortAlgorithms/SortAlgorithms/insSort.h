//
//  insSort.h
//  SortAlgorithms
//
//  Created by Rafiul Rasel on 2/18/19.
//  Copyright © 2019 Rafiul Rasel. All rights reserved.
//

#ifndef insSort_h
#define insSort_h

template <typename T>
void insSort(T arr[], int len){
    for(int i=0; i<len; i++){
        
        int key = arr[i];
        int j=i-1;
        while( j>=0 && arr[j]>key){
            arr[j+1] = arr[j];
            j--;
        }
        arr[j+1] = key;
    }
}

#endif /* insSort_h */
