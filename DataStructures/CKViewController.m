//
//  CKViewController.m
//  DataStructures
//
//  Created by Richard Lichkus on 7/28/14.
//  Copyright (c) 2014 Richard Lichkus. All rights reserved.
//

#import "CKViewController.h"
#import "CKStack.h"
#import "CKQueue.h"
#import "CKBSTree.h"

@interface CKViewController ()

@property (strong, nonatomic) CKStack *stack;
@property (strong, nonatomic) CKQueue *queue;
@property (strong, nonatomic) CKBSTree *bstree;

@end

@implementation CKViewController

#pragma mark - View

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [self configureDataStructures];
}

-(void)configureDataStructures {
    
    self.stack = [[CKStack alloc] initWithData:@"First"];
    [self.stack pushWithData:@"Second"];
    [self.stack pushWithData:@"Third"];
    [self.stack pushWithData:@"Fourth"];
    [self.stack pushWithData:@"Fifth"];
    [self.stack pushWithData:@"Sixth"];
    [self.stack pop];
    [self.stack pop];
    [self.stack pop];
    [self.stack pop];
    [self.stack pushWithData:@"Third"];
    
    while(![self.stack isEmpty]){
        NSLog(@"Stack: %@",(NSString*)[self.stack peek]);
        [self.stack pop];
    }
    
    self.queue = [[CKQueue alloc] init];
    [self.queue enqueueWithData:@"First"];
    [self.queue enqueueWithData:@"Second"];
    [self.queue enqueueWithData:@"Third"];
    [self.queue enqueueWithData:@"Fourth"];
    [self.queue enqueueWithData:@"Fifth"];
    [self.queue dequeue];
    [self.queue dequeue];
    [self.queue dequeue];
    [self.queue enqueueWithData:@"Sixth"];
    
    while(![self.queue isEmpty]){
        NSLog(@"Queue: %@",(NSString*)[self.queue dequeue]);
    }
    
    self.bstree = [[CKBSTree alloc] init];
    [self.bstree addString:@"Richard" forKey:50];
    [self.bstree addString:@"Spencer" forKey:45];
    [self.bstree addString:@"Tod" forKey:55];
    [self.bstree addString:@"Chicken Head" forKey:25];
    
    [self.bstree printInOrderTraversalFromRoot];
    [self.bstree printPreOrderTraversalFromRoot];
    [self.bstree printPostOrderTraversalFromRoot];
    
}
#pragma mark - Memory

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
