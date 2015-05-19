//
//  MagicalCreature.h
//  MCMS
//
//  Created by alex fallah on 5/19/15.
//  Copyright (c) 2015 alex fallah. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MagicalCreature : NSObject
@property NSString *name;
@property NSString *detail;
@property NSMutableArray *accessories;
@property NSString *image;


-(instancetype)initWithDetails:(NSString *)name detail:(NSString *)detail accessories:(NSMutableArray *)accessories image:(NSString *)image;


@end
