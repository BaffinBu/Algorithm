//
//  main.m
//  冒泡排序
//
//  Created by wy0012 on 16/7/22.
//  Copyright © 2016年 wy0012. All rights reserved.
//

#import <Foundation/Foundation.h>
#define Num 9
#define Count(arr) Num*sizeof(int)/sizeof(int)

void sort(int arr[],int count);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
    }
    int arr[]={34,5,12,65,2,31,5,43,1};
    
    sort(arr,Num);
    
    return 0;
}


void sort(int arr[],int count){
    
    for(int i=0;i<Count(arr);i++){
        for(int j=0;j<Count(arr)-i-1;j++){
            
            if(arr[j]>arr[j+1]){
                int tmp=arr[j];
                arr[j]=arr[j+1];
                arr[j+1]=tmp;
            }
            
        }
    }
    
    for(int i=0;i<Num;i++){
        printf("%d,",arr[i]);
    }
}