//
//  main.m
//  模拟链表
//
//  Created by wy0012 on 16/7/27.
//  Copyright © 2016年 wy0012. All rights reserved.
//

#import <Foundation/Foundation.h>
//typedef struct node{
//    void * data;
//    struct node * next;
//} linkNode;
//
//typedef struct{
//    
//    linkNode * head;
//    linkNode * tail;
//    int length;
//    
//}LinkList;
//
//LinkList getLinkedList(){
//    LinkList list;
//    linkNode node;
//    node.data=0;
//    node.next=NULL;
//    list.head=&node;
//    list.tail=&node;
//    return list;
//}
//
//
//void insertFromHead(int num){
//    
//}

//记住这里定义结构体的问题
typedef struct Node_{
    void * data;
    struct Node_ * next;
}Node;


typedef struct {
    
    int size;
    int (*match) (const void * key1,const void * key2);
    void( * destory) (void * data);
    Node * head;
    Node * tail;
}List;

//初始化
void list_init(List *list, void (*destory) (void *data));
//销毁
void list_destory(List *list);
//插入数据
int list_ins_next(List * list,Node * element,const void * data);
//删除数据
int list_rem_next(List * list,Node * element, void **data);

#define list_size(list) ((list)->size)
#define list_head(list) ((list)->head)
#define list_tail(list) ((list)->tail)
#define list_is_head(list,element)  ((element)==(list)->head?1:0)
#define list_is tail(list,element) ((element)->next==NULL?1:0)
#define list_data(element) ((element)->data)
#define list_next(element) ((element)->next)


void list_init(List *list, void (*destory) (void *data)){
    list->size=0;
    list->destory=destory;
    list->head=NULL;
    list->tail=NULL;
    return;
}

void list_destory(List * list){
    void * data;
    while(list_size(list)>0){
        if(list_rem_next(list, NULL, (void**) &data)==0&&list->destory!=NULL){
            list->destory(data);
        }
    }

    memset(list, 0, sizeof(List));
    return;
    
}

int list_ins_next(List * list,Node * node,const void * data){
    
    Node * new_Node;
    if((new_Node=(Node *) malloc(sizeof(Node)))==NULL){
        return -1;
    }
    //开始插入数据
    new_Node->data=(void *) data;
    if(node==NULL){
        //头部插入数据
        if(list_size(list)==0)
            list->tail=new_Node;
            new_Node->next=list->head;
            list->head=new_Node;
        
        }
    else{
        if(node->next==NULL)
            list->tail=new_Node;
            new_Node->next=node->next;
            node->next=new_Node;
    }
    
    list->size++;
    return 0;
}


int list_rem_next(List * list,Node * node,void **data){
    Node * old_Node;
    //不允许从空listremove
    if(list_size(list)==0){
        return -1;
    }
    
    //移除元素
    if(node==NULL){
        *data=list->head->data;
        old_Node=list->head;
        list->head=list->head->next;
        if(list_size(list)==1)
            list->tail=NULL;
    }
    //从别处移除元素
    else{
        if(node->next==NULL)
            return -1;
        *data=node->next->data;
        old_Node=node->next;
        node->next=node->next->next;
        if(node->next==NULL){
            list->tail=node;
        }
    }
    
    return 0;
}



int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        for(int i=0;i<10;i++){
            
            
            
            
        }
        
        
        
        
        
    }
    return 0;
}
