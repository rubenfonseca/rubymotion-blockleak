//
//  NativeObject.h
//  NativeObject
//
//  Created by Ruben Fonseca on 12/05/13.
//  Copyright (c) 2013 Ruben Fonseca. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^blockName)();

@interface NativeObject : NSObject

@property (nonatomic, copy) blockName block;

-(NSString *)description;
-(void)cleanup;

@end
