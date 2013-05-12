//
//  NativeObject.m
//  NativeObject
//
//  Created by Ruben Fonseca on 12/05/13.
//  Copyright (c) 2013 Ruben Fonseca. All rights reserved.
//

#import "NativeObject.h"

@implementation NativeObject

-(void)setBlock:(blockName)b {
	NSLog(@"Setting block to %@", b);
	
	_block = [b copy];
}

-(NSString *)description {
	return [NSString stringWithFormat:@"NATIVE OBJECT WITH BLOCK %@", self.block];
}

-(void)cleanup {
	self.block = nil;
}

@end
