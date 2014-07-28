//
//  CKStack.h
//  DataStructures
//
//  Created by Richard Lichkus on 7/28/14.
//  Copyright (c) 2014 Richard Lichkus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CKNode.h"

@interface CKStack : NSObject

-(instancetype)initWithData:(id)data;

-(id)peek;
-(void)pop;
-(void)pushWithData:(id)data;
-(BOOL)isEmpty;

@end
