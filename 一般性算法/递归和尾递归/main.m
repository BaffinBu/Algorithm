//
//  main.m
//  递归和尾递归
//
//  Created by wy0012 on 16/7/26.
//  Copyright © 2016年 wy0012. All rights reserved.
//

#import <Foundation/Foundation.h>
int  calcFactorial(int  num);
int  calcFactorial2(int num,int a);


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        int result=calcFactorial2(4,4);
        printf("%d",result);
        
    }
    return 0;
}

//递归求阶乘
int  calcFactorial(int  num){
    if(num==0){
        return 0;
    }
    if(num==1){
        return 1;
    }
    return num*calcFactorial(num-1);
}
//尾递归
int calcFactorial2(int num,int a){
    a--;
    if(num==0){
        return 0;
    }
    if(a==1){
        return num*1;
    }
    return calcFactorial2(num*a, a);
    
    
}