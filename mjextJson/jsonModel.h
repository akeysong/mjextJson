//
//  jsonModel.h
//  mjextJson
//
//  Created by apple on 16/8/23.
//  Copyright © 2016年 zhanyan. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 
 {
 message : success,
 data : [
 {
 bday : 19,
 byear : 2013,
 province : ,
 status : 1,
 likes : 0,
 tags : ,
 albums : 0,
 score : 0,
 uc_uid : 0,
 intro : ,
 city : ,
 cover : ,
 last_ip : 0,
 shares : 0,
 score_level : 0,
 reg_ip : 192.168.1.111,
 reg_time : 1353895892,
 follows : 0,
 id : 1,
 gender : 1,
 last_time : 1376018066,
 email : 313131@qq.com,
 bmonth : 7,
 daren : 0,
 fans : 0,
 password : 5f05b9a44a2ef4c619143b44fe5dc926,
 username : dan8288749
 }
 ],
 code : 200
 }
 
 */




//实现原理，一个文件存两个模型。相当于二维数组。JSONMODEL模型里有个DATA数组来装DATA数据模型。
@class Data;
//这是jsonModel模型。此模型里有一个数组DATA，里面装的都是模型。
@interface jsonModel : NSObject

@property (nonatomic, copy) NSString *message;
//存放着一堆的DATA数据（里面都是DATA模型）
@property (nonatomic, strong) NSArray<Data *> *data;

@property (nonatomic, copy) NSString *code;

@end

//是DATA模型。等于是两个模型写在一个文件里了。
@interface Data : NSObject

@property (nonatomic, copy) NSString *bday;

@property (nonatomic, copy) NSString *byear;

@property (nonatomic, copy) NSString *province;

@property (nonatomic, copy) NSString *status;

@property (nonatomic, copy) NSString *likes;

@property (nonatomic, copy) NSString *tags;

@property (nonatomic, copy) NSString *albums;

@property (nonatomic, copy) NSString *score;

@property (nonatomic, copy) NSString *uc_uid;

@property (nonatomic, copy) NSString *intro;

@property (nonatomic, copy) NSString *city;

@property (nonatomic, copy) NSString *cover;

@property (nonatomic, copy) NSString *last_ip;

@property (nonatomic, copy) NSString *shares;

@property (nonatomic, copy) NSString *score_level;

@property (nonatomic, copy) NSString *reg_ip;

@property (nonatomic, copy) NSString *reg_time;

@property (nonatomic, copy) NSString *follows;

@property (nonatomic, copy) NSString *id;

@property (nonatomic, copy) NSString *gender;

@property (nonatomic, copy) NSString *last_time;

@property (nonatomic, copy) NSString *email;

@property (nonatomic, copy) NSString *bmonth;

@property (nonatomic, copy) NSString *daren;

@property (nonatomic, copy) NSString *fans;

@property (nonatomic, copy) NSString *password;

@property (nonatomic, copy) NSString *username;

@end
