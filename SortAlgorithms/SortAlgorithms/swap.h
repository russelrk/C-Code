//
//  swap.h
//  SortAlgorithms
//
//  Created by Rafiul Rasel on 2/18/19.
//  Copyright © 2019 Rafiul Rasel. All rights reserved.
//

#ifndef swap_h
#define swap_h

template <typename T>
void swap(T* a, T* b){
    int temp;
    temp = *a;
    *a = *b;
    *b = temp;
}

#endif /* swap_h */
