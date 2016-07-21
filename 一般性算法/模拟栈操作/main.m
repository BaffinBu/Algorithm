//
//  main.m
//  模拟栈操作
//
//  Created by wy0012 on 16/4/8.
//  Copyright © 2016年 wy0012. All rights reserved.
//

#import <Foundation/Foundation.h>
int head=0;
int arr[10];
void push(int num);
void pop();
int main(int argc, const char * argv[]) {
    for(int i=0;i<10;i++){
        push(i);
    }
    printf("\n");
    for(int i=0;i<10;i++){
        pop();
    }
    
}
void push(int num){
    printf("%d-->",num);
    arr[head]=num;
    head++;
}
void pop(){
    printf("%d-->",arr[head]);
    arr[head]=0;
    head--;
    
}
