//
//  main.m
//  深度优先搜索
//
//  Created by wy0012 on 16/4/8.
//  Copyright © 2016年 wy0012. All rights reserved.
//

//数的全排列
#import <Foundation/Foundation.h>

const int n=5;
int arr[6];

int book[6];
void dfs(int step);
int main(int argc, const char * argv[]) {

    dfs(1);
}

//深度优先搜索算法(递归的思想)
void dfs(int step){
    //如果step达到6了,说明前5个数排序好了,输出
    if(step==n+1){
        for(int i=1;i<=n;i++){
            printf("%d-->",arr[i]);
        }
        printf("\n");
        return;
    }
    
    //核心算法,循环判断数是否已经用过,book[i]==0说明没用过
    for(int i=1;i<=n;i++){
        if(book[i]==0){
            arr[step]=i;
            book[i]=1;
            dfs(step+1);
            book[i]=0;
        }
    }
   
    return;
    
}
