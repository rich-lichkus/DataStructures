//
//  CKTree.h
//  DataStructures
//
//  Created by Richard Lichkus on 8/20/14.
//  Copyright (c) 2014 Richard Lichkus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CKBSTNode.h"

@interface CKBSTree : NSObject

-(void)addString:(NSString*)string forKey:(NSInteger)key;

-(void)printInOrderTraversalFromRoot;
-(void)printInOrderTraversalFromNode:(CKBSTNode*)focusNode;

-(void)printPreOrderTraversalFromRoot;
-(void)printPreOrderTraversalFromNode:(CKBSTNode*)focusNode;

-(void)printPostOrderTraversalFromRoot;
-(void)printPostOrderTraversalFromNode:(CKBSTNode*)focusNode;

-(void)findNodeWithKey:(NSInteger)key;

@end

