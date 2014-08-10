//
//  CKDictionary.h
//  DataStructures
//
//  Created by Richard Lichkus on 7/28/14.
//  Copyright (c) 2014 Richard Lichkus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CKDictionary : NSObject

-(void)addObject:(id)data forKey:(NSString*)key;
-(id)objectForKey:(NSString*)key;

@end
