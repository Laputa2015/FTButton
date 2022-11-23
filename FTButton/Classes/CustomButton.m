//
//  CustomButton.m
//  FTButton
//
//  Created by Laputa2015 on 2022/11/23.
//

#import "CustomButton.h"

#define kbuttonIconImageW   self.bounds.size.width/4
#define kbuttonIconImageH   self.bounds.size.height/4
#define kbuttonLabelW       self.bounds.size.width/2
#define kbuttonLabelH       self.bounds.size.height/8

@interface CustomButton()
- (CGRect)imageRectForContentRect:(CGRect)contentRect;
- (CGRect)titleRectForContentRect:(CGRect)contentRect;
@end
@implementation CustomButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    UIEdgeInsets insets = self.imageEdgeInsets;
    CGRect rc = CGRectMake(self.bounds.size.width/8+(insets.left-insets.right)/2, self.bounds.size.height/2-kbuttonIconImageH/2+(insets.top-insets.bottom)/2, kbuttonIconImageW, kbuttonIconImageH);
    return rc;
}

-(CGRect)titleRectForContentRect:(CGRect)contentRect
{
    UIEdgeInsets insets = self.titleEdgeInsets;
    CGRect rc = CGRectMake(self.bounds.size.width/8+kbuttonIconImageW+(insets.left-insets.right)/2, self.bounds.size.height/2-kbuttonLabelH/2+(insets.top-insets.bottom)/2, kbuttonLabelW, kbuttonLabelH);
    return rc;
}

@end
