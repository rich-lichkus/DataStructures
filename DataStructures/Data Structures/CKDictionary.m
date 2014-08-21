//
//  CKDictionary.m
//  DataStructures
//
//  Created by Richard Lichkus on 7/28/14.
//  Copyright (c) 2014 Richard Lichkus. All rights reserved.
//

#import "CKDictionary.h"
#import "CKStack.h"

@interface CKDictionary()

@property (strong, nonatomic) NSMutableArray *array;
@property (nonatomic) NSInteger arraySize;

@end

@implementation CKDictionary

-(instancetype)init{
    self = [super init];
    if(self){

        _array = [[NSMutableArray alloc] init];
        for (int i =0; i<=9; i++) {
            CKStack *stack = [[CKStack alloc] init];
            [_array addObject:stack];
        }
    }
    return self;
}

-(void)addObject:(id)data forKey:(NSString*)key{
    NSInteger index = [self indexLocationForKey:key];
    [((CKStack*)_array[index]) pushWithData:data andKey:key];
}

-(id)objectForKey:(NSString*)key{
    NSInteger index = [self indexLocationForKey:key];
    return [((CKStack*)_array[index]) dataForKey:key];
}

//-(void)removeObjectForKey:(NSString*){
//    NSInteger index = [self indexLocationForKey:key];
//    return [((CKStack*)_array[index]) deleteNodeWith:key];
//}

-(NSInteger)indexLocationForKey:(NSString*)key{
    
    return 1;
}

@end
