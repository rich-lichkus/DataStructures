//
//  CKTreeNode.h
//  DataStructures
//
//  Created by Richard Lichkus on 8/20/14.
//  Copyright (c) 2014 Richard Lichkus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CKBSTNode : NSObject

@property (nonatomic) NSInteger key;
@property (strong, nonatomic) NSString *string;

@property (strong, nonatomic) CKBSTNode *rightChild;
@property (strong, nonatomic) CKBSTNode *leftChild;

-(instancetype)initWithKey:(NSInteger)key andString:(NSString*)string;

@end
