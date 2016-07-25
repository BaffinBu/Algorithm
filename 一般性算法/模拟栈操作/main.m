//
//  main.m
//  模拟栈操作
//
//  Created by wy0012 on 16/4/8.
//  Copyright © 2016年 wy0012. All rights reserved.
//

#import <Foundation/Foundation.h>
//第一种定义方法
//struct Student{
//    int age;
//    char name[3];
//};
//使用: struct Student stu1

//第二种定义
//struct{
//    int age;
//    char name[3];
//} stu1,stu2;
//使用,只能使用stu1,stu2

//第三种定义方法,最常用
//typedef  struct{
//    int age;
//    char name[3];
//}  STUD;
//使用 STUD stu1..

//定义栈的结构体
typedef struct{
    int head;
    int arr[100];
    void (*push) (int num);
    void (*pop) ();
} Stack;


int head=0;
int arr[10];
void push(int num);
void pop();

int main(int argc, const char * argv[]) {
    
    Stack stack;
    stack.pop=pop;
    stack.push=push;
    
    
    for(int i=0;i<10;i++){
        stack.push(i);
    }
    printf("\n");
    for(int i=0;i<10;i++){
        stack.pop();
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
