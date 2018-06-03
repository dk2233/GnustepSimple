/*
 * main.m
 * 
 * Copyright 2018 daniel <daniel@daniel-mini>
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 * 
 * 
 */


#include "class.h"

@implementation SimpleOne: NSObject {
	
@public 
BOOL IsThisTrue;
NSString *String;
	
}
-(BOOL)IsSet
{
	return IsThisTrue;
}
-(NSString *)string
{
	return String;
}
-(void)setIsThisTrue:(BOOL)var
{
	IsThisTrue = var;
}
@end

int main(int argc, char **argv)
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	SimpleOne *simple = [ [SimpleOne alloc] init ];
	
	simple->IsThisTrue = NO;
	
	NSLog(@"%d",[simple IsSet]);
	[simple setIsThisTrue:YES];
	NSLog(@"%d",[simple IsSet]);
	
	[pool drain];
	
	return 0;
}

