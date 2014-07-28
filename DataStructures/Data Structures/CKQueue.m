//
//  CKQueue.m
//  DataStructures
//
//  Created by Richard Lichkus on 7/28/14.
//  Copyright (c) 2014 Richard Lichkus. All rights reserved.
//

#import "CKQueue.h"
#import "CKNode.h"

@interface CKQueue()

@property (strong, nonatomic) CKNode *headNode;
@property (strong, nonatomic) CKNode *tailNode;

@end

@implementation CKQueue

-(id)dequeue{
    id data;
    if(_headNode){
        CKNode *oldHead = _headNode;
        _headNode = _headNode.nextNode;
        data = oldHead.data;
        oldHead = nil;
    } else {
        data = nil;
    }
    return data;
}

-(void)enqueueWithData:(id)data{
    if(!_headNode){
        _headNode = [[CKNode alloc] initWithData:data];
        _tailNode = _headNode;
    } else {
        _tailNode.nextNode = [[CKNode alloc] initWithData:data];
        _tailNode = _tailNode.nextNode;
    }
}

-(BOOL)isEmpty{
    if(_headNode){
        return NO;
    } else {
        return YES;
    }
}

@end
