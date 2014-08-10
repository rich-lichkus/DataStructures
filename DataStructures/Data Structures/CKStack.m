//
//  CKStack.m
//  DataStructures
//
//  Created by Richard Lichkus on 7/28/14.
//  Copyright (c) 2014 Richard Lichkus. All rights reserved.
//

#import "CKStack.h"

@interface CKStack ()

@property (strong, nonatomic) CKNode *headNode;

@end

@implementation CKStack

-(instancetype)initWithData:(id)data{
    self = [super init];
    if(self){
        self.headNode = [[CKNode alloc] initWithData:data];
    }
    return self;
}

-(id)peek{
    if(![self isEmpty]){
        return _headNode.data;
    }
    return nil;
}

-(void)pop{
    if(![self isEmpty]){
        CKNode *popNode = _headNode;
        _headNode = popNode.nextNode;
        popNode = nil;
    }
}

-(void)pushWithData:(id)data{
    if(![self isEmpty]){
        CKNode *newNode = [[CKNode alloc] initWithData:data];
        newNode.nextNode = _headNode;
        _headNode = newNode;
    }
}

-(void)pushWithData:(id)data andKey:(NSString *)key{
    if(![self isEmpty]){
        CKNode *newNode = [[CKNode alloc] initWithData:data];
        newNode.key = key;
        newNode.nextNode = _headNode;
        _headNode = newNode;
    }
}


-(BOOL)isEmpty{
    if(_headNode){
        return NO;
    } else {
        return YES;
    }
}

-(id)dataForKey:(NSString*)key{
    CKNode *node = _headNode;
    while(node){
        if([key isEqualToString:node.key]){
            return node.data;
        }
        node = node.nextNode;
    }
    return nil;
}

-(id)deleteNodeForKey:(NSString*)key{
    CKNode *node = _headNode;
    while(node){
        if([key isEqualToString:node.key]){
            CKNode *oldNode = node;
            
        }
        node = node.nextNode;
    }
    return nil;
}



@end
