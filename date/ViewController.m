//
//  ViewController.m
//  date
//
//  Created by sifudemac1 on 15/9/4.
//  Copyright (c) 2015年 sifudemac1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSTimeInterval  timeZoneOffset=[[NSTimeZone systemTimeZone] secondsFromGMT];
    NSDate* date =[[NSDate date] dateByAddingTimeInterval:timeZoneOffset];
    NSInteger time =[date timeIntervalSince1970];
//    NSInteger currentTime=time-8*60*60;
    // 获取零点
    time = time- time%(3600*24)- (3600*24);
//    时间戳转时间的方法
    NSDate *confromTimesp = [NSDate dateWithTimeIntervalSince1970:time];
//    NSDate *nowDate = [NSDate date];
//
    NSDateFormatter * dateFormat =[[NSDateFormatter alloc] init];
    
    [dateFormat setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"UTC"]];
    dateFormat.dateFormat = @"yyyyMMdd";
    
    NSString  *dateStr =[dateFormat stringFromDate:confromTimesp];
    NSLog(@"the date is %@,the dateStr is %@",date,dateStr);
    
    NSDateComponents *comps;

//    NSDateFormatter * dateFormat =[[NSDateFormatter alloc] init];
//    dateFormat.dateFormat = @"yyyy-MM-dd";
//    NSDate * now = [NSDate date];
//    NSTimeInterval  timeZoneOffset=[[NSTimeZone systemTimeZone] secondsFromGMT];
//    NSDate* date =[[NSDate date] dateByAddingTimeInterval:timeZoneOffset];
//    
//    NSLog(@"%@",date);


    // Do any additional setup after loading the view, typically from a nib.
}
-(void)dealloc{
    }
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
