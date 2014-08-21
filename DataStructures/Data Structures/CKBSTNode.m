//
//  CKTreeNode.m
//  DataStructures
//
//  Created by Richard Lichkus on 8/20/14.
//  Copyright (c) 2014 Richard Lichkus. All rights reserved.
//

#import "CKBSTNode.h"

@interface CKBSTNode ()

@end

@implementation CKBSTNode

-(instancetype)initWithKey:(NSInteger)key andString:(NSString*)string{
    self = [super init];
    if(self){
        self.key = key;
        self.string = string;
    }
    return self;
}




@end
