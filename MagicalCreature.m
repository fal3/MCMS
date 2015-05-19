//
//  MagicalCreature.m
//  MCMS
//
//  Created by alex fallah on 5/19/15.
//  Copyright (c) 2015 alex fallah. All rights reserved.
//

#import "MagicalCreature.h"

@implementation MagicalCreature

-(instancetype)initWithDetails:(NSString *)name detail:(NSString *)detail accessories:(NSMutableArray *)accessories image:(NSString *)image{
    self = [super init];
    self.name = name;
    self.detail = detail;
    self.accessories = accessories;
    self.image = image;

    return self;



}





@end
