//
//  NSString+UrlEncode.m
//
//  Created by Kevin Renskers on 31-10-13.
//  Copyright (c) 2013 Kevin Renskers. All rights reserved.
//

#import "NSString+UrlEncode.h"

@implementation NSString (UrlEncode)

- (NSString *)urlEncode {
    return [self urlEncodeUsingEncoding:NSUTF8StringEncoding];
}

- (NSString *)urlEncodeUsingEncoding:(NSStringEncoding)encoding {
    return (__bridge_transfer NSString *)CFURLCreateStringByAddingPercentEscapes(NULL,
                                                                                 (__bridge CFStringRef)self,
                                                                                 NULL,
                                                                                 (CFStringRef)@"!*'\"();:@&=+$,/?%#[]% ",
                                                                                 CFStringConvertNSStringEncodingToEncoding(encoding));
}

-(NSString *)urlEncodeParam{
    NSArray *array=[self componentsSeparatedByString:@"&"];
    NSMutableString *param=[[NSMutableString alloc] init];
    for (int i=0; i<array.count; i++) {
        NSString *str=[array objectAtIndex:i];
        NSArray *subArray=[str componentsSeparatedByString:@"="];
        if (subArray.count==2) {
            NSString *key=[[subArray objectAtIndex:0] urlEncode];
            NSString *value=[[subArray objectAtIndex:1] urlEncode];
            NSString *subUrlParam=[NSString stringWithFormat:@"%@=%@",key,value];
            [param appendFormat:@"%@%@",i==0?@"":@"&",subUrlParam];
        }else{
            [param appendFormat:@"%@%@",i==0?@"":@"&",[str urlEncode]];

        }
        
    }
    if (array.count==0) {
        [param appendString:[self urlEncode]];
    }
    return param;
}

-(NSString *)encodeUrl{
    NSArray *array=[self componentsSeparatedByString:@"?"];
    NSMutableString *urlString=[[NSMutableString alloc] init];
    if (array.count>1) {
        NSArray *subArray=[array subarrayWithRange:NSMakeRange(0, array.count-1)];
        [urlString appendFormat:@"%@?%@",[subArray componentsJoinedByString:@"?"],[[array lastObject] urlEncodeParam]];
        return urlString;

    }else{
    
        array=[self componentsSeparatedByString:@"/"];
        if (array.count>1) {
            NSArray *subArray=[array subarrayWithRange:NSMakeRange(0, array.count-1)];
            [urlString appendFormat:@"%@/%@",[subArray componentsJoinedByString:@"/"],[[array lastObject] urlEncodeParam]];
            return urlString;
        }
        return self;
    }
}
@end
