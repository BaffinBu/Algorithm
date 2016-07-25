//
//  main.m
//  模拟队列
//
//  Created by wy0012 on 16/7/25.
//  Copyright © 2016年 wy0012. All rights reserved.
//

#import <Foundation/Foundation.h>
#define MaxQueueNum 100

typedef struct{
    int arr[100];
    int head;
    int tail;
} Queue;

Queue initQueue();
void inQueue(int num,Queue * q);
void deQueue(Queue * q);
void printQueue(Queue * q,int head,int tail);

int main(int argc, const char * argv[]) {
    Queue queue=initQueue();
    for(int i=0;i<10;i++){
        inQueue(i, &queue);
    }
    printQueue(&queue,queue.head,queue.tail);
    
    
    for(int i=0;i<10;i++){
        deQueue(&queue);
    }
    printQueue(&queue,queue.head,queue.tail);
    return 0;
}

Queue initQueue(){
    Queue queue;
    queue.head=0;
    queue.tail=0;
    return queue;
}



void inQueue(int num,Queue * q){
    //一般队列
    
    
    q->arr[q->tail]=num;
    q->tail++;
    //环形队列
    
    
}

void deQueue(Queue * q){
    q->arr[q->head]=0;
    q->head++;
    if(q->head==MaxQueueNum-1){
        q->head=0;
    }
}

void printQueue(Queue * q,int head,int tail){
    if(tail-head==0){
        printf("no elements in queue");
    }
    
    for(int i=0;i<tail-head;i++){
        printf("%d----->",q->arr[i]);
    }
    
}
