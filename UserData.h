//
//  UserData.h
//  SlideOutMenu
//
//  Created by Ainur on 17/12/2015.
//  Copyright © 2015 Archetapp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserData : NSObject

@property (nonatomic) int ID;
@property (nonatomic, strong) NSString *USER;
@property (nonatomic,strong) NSString *PASSWORD;
@property (nonatomic,strong) NSString *EMAIL;
@property (nonatomic,strong) NSString *PICTURE;
@property (nonatomic,strong) NSString *DATE_CREATION;
@property (nonatomic) int CHECK_ACCOUNT;

@end
