//
//  CKTree.m
//  DataStructures
//
//  Created by Richard Lichkus on 8/20/14.
//  Copyright (c) 2014 Richard Lichkus. All rights reserved.
//

#import "CKBSTree.h"

@interface CKBSTree()

@property (strong, nonatomic) CKBSTNode *root;

@end

@implementation CKBSTree

-(void)addString:(NSString *)string forKey:(NSInteger)key{
    
    // New node to be added
    CKBSTNode *newNode = [[CKBSTNode alloc]initWithKey:key andString:string];
    
    // Have a Root?
    if(!self.root){
        // No, new node equals root
        self.root = newNode;
    } else {
        // Yes, make root the focus node
        CKBSTNode *focusNode = self.root;
        
        CKBSTNode *parent; // Future parent for new node
        
        while (true) {
            // Set parent to focusNode (first time its the root)
            parent = focusNode;
            
            // If new key is less than focusNode, new node goes to the left
            if(key < focusNode.key){
                
                // New focus the left child
                focusNode = focusNode.leftChild;
                
                // Exist?
                if(!focusNode){
                    // No, new node is added as the left child of the parent node (aka the previous focus)
                    parent.leftChild = newNode;
                    return; // Exit loop
                }
            } else { // Key was greater than focus node, new node goes to the right
                
                // New focus is the right child
                focusNode = focusNode.rightChild;
                
                // Exist?
                if(!focusNode){
                    // No, new node is added as the right child of the parent node (aka the previous focus)
                    parent.rightChild = newNode;
                    return; // Exit loop
                }
            }
        }
    }
}

-(void)printInOrderTraversalFromRoot{
    [self printInOrderTraversalFromNode:self.root];
}

-(void)printInOrderTraversalFromNode:(CKBSTNode*)focusNode{
    
    // In Order Traversal => Left, Root, Right
    
    if(focusNode){
        // Traverse left node
        [self printInOrderTraversalFromNode:focusNode.leftChild];
        
        // Print the focus node
        NSLog(@"BST In Order: String %@ for key: %i", focusNode.string, focusNode.key);
        
        // Traverse right node
        [self printInOrderTraversalFromNode:focusNode.rightChild];
    }
}

-(void)printPreOrderTraversalFromRoot{
    [self printPreOrderTraversalFromNode:self.root];
}

-(void)printPreOrderTraversalFromNode:(CKBSTNode*)focusNode{
    
    // Pre Order Traversal => Root, Left, Right
    
    if(focusNode){
        // Print the focus node
        NSLog(@"BST Pre Order: String %@ for key: %i", focusNode.string, focusNode.key);

        // Traverse left node
        [self printPreOrderTraversalFromNode:focusNode.leftChild];
        
        // Traverse right node
        [self printPreOrderTraversalFromNode:focusNode.rightChild];
    }
}

-(void)printPostOrderTraversalFromRoot{
    [self printPostOrderTraversalFromNode:self.root];
}

-(void)printPostOrderTraversalFromNode:(CKBSTNode*)focusNode{
    
    // Post Order Traversal => Left, Right, Root
    
    if(focusNode){
        // Traverse left node
        [self printPostOrderTraversalFromNode:focusNode.leftChild];
        
        // Traverse right node
        [self printPostOrderTraversalFromNode:focusNode.rightChild];

        // Print the focus node
        NSLog(@"BST Post Order: String %@ for key: %i", focusNode.string, focusNode.key);
    }
}

-(void)findNodeWithKey:(NSInteger)key{

}

@end
