//
//  JsonController.m
//  mjextJson
//
//  Created by apple on 16/8/23.
//  Copyright © 2016年 zhanyan. All rights reserved.
//

#import "JsonController.h"
#import "jsonModel.h"
#import <MJExtension.h>

@interface JsonController ()
@property (weak, nonatomic) IBOutlet UILabel *username;
@property(nonatomic,strong)NSDictionary * userinfoDIC;
@property (weak, nonatomic) IBOutlet UILabel *stauts;
@property (weak, nonatomic) IBOutlet UILabel *uid;



@end


@implementation JsonController


-(void)viewDidLoad{
    [super viewDidLoad];
    
    [self getjson];
}



-(void)getjson{
    //取网络数据
    //加载一个NSURL对象
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://songruiting.zhanyan.cc/code/ci/"]];
   
    
    //将请求的url数据放到NSData对象中
    NSData *response = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    //IOS5自带解析类NSJSONSerialization从response中解析出数据放到字典中
    NSError *error;
    _userinfoDIC = [NSJSONSerialization JSONObjectWithData:response options:NSJSONReadingMutableLeaves error:&error];
    //_userinfoDIC包括了所有（2级数据）
    NSLog(@"JSON过来的字典%@",_userinfoDIC);
    //MJ字典转模型
    jsonModel *jsonM=[jsonModel mj_objectWithKeyValues:_userinfoDIC];
    
    // 遍历出数组中的模型属性
    for (Data *dataM in jsonM.data) {
        NSLog(@"username=%@",dataM.username);
       NSLog(@"uc_uid=%@",dataM.uc_uid);
        NSLog(@"status=%@",dataM.status);
   
        self.username.text=dataM.username;
        self.uid.text=dataM.uc_uid;
        self.stauts.text=dataM.status;
    
    }
}

    
    /**
     
     
     */
    
    
    //    Status *status = [Status objectWithKeyValues:dict];
    ;
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

@end
