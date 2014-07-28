//
//  CKNode.h
//  DataStructures
//
//  Created by Richard Lichkus on 7/28/14.
//  Copyright (c) 2014 Richard Lichkus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CKNode : NSObject

@property (strong, nonatomic) CKNode *nextNode;
@property (strong, nonatomic) id data;

-(instancetype)initWithData:(id)data;

@end
