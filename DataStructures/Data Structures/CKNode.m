//
//  CKNode.m
//  DataStructures
//
//  Created by Richard Lichkus on 7/28/14.
//  Copyright (c) 2014 Richard Lichkus. All rights reserved.
//

#import "CKNode.h"

@interface CKNode ()

@end

@implementation CKNode

-(instancetype)initWithData:(id)data{
    self = [super init];
    if (self) {
        _data = data;
    }
    return self;
}

@end
