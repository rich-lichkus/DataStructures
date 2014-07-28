//
//  CKQueue.h
//  DataStructures
//
//  Created by Richard Lichkus on 7/28/14.
//  Copyright (c) 2014 Richard Lichkus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CKQueue : NSObject

-(id)dequeue;
-(void)enqueueWithData:(id)data;
-(BOOL)isEmpty;

@end
