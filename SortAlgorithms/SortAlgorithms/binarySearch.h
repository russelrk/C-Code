//
//  binarySearch.h
//  SortAlgorithms
//
//  Created by Rafiul Rasel on 3/12/19.
//  Copyright © 2019 Rafiul Rasel. All rights reserved.
//

#ifndef binarySearch_h
#define binarySearch_h

template <typename T>
int binarySearch(T arr[], int val, int l, int h){
    int d = l+(h-l)/2;
    int index = -1;

    if(arr[d]==val) {
        return d;
    }
    if((l<d || d<h) && index == -1){
        if(arr[d]>val){
            index = binarySearch(arr, val, l, d-1);
        }
        else{
            index = binarySearch(arr, val, d+1, h);
        }
    }
    
    return index;
    
    
}

#endif /* binarySearch_h */
