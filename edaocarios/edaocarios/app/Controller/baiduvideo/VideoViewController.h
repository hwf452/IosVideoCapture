//
//  VideoViewController.h
//  edaocarios
//
//  Created by harry on 2017/6/1.
//  Copyright © 2017年 edao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <CoreMedia/CoreMedia.h>
#import <MediaPlayer/MediaPlayer.h>
#import <AssetsLibrary/AssetsLibrary.h>



@interface VideoViewController : UIViewController<UIImagePickerControllerDelegate, UINavigationControllerDelegate>
{
    UIImagePickerControllerQualityType                  _qualityType;
    NSString*                                           _mp4Quality;
    
    NSURL*                                              _videoURL;
    NSString*                                           _mp4Path;
    
//    UILabel*                                            _fileSize;
//    UILabel*                                            _videoLen;
    UIAlertView*                                        _alert;
    NSDate*                                             _startDate;
    
//    UILabel*                                            _convertTime;
//    UILabel*                                            _mp4Size;
    
    BOOL                                                _hasVideo;
    BOOL                                                _networkOpt;
    BOOL                                                _hasMp4;
}

@property (nonatomic, strong)UILabel*    lbVideoQuality;

@property (nonatomic, strong)UISegmentedControl*    segmentedControlTop;

@property (nonatomic, strong)UIButton *btnPickVideo;

@property (nonatomic, strong)     UILabel*    fileSizeLeft;

@property (nonatomic, strong)     UILabel*    fileSize;

@property (nonatomic, strong)     UILabel*    videoLenLeft;

@property (nonatomic, strong)     UILabel*    videoLen;

@property (nonatomic, strong)     UILabel*    lbMp4Quality;

@property (nonatomic, strong)UISegmentedControl*    segmentedControlBottom;

@property (nonatomic, strong)     UILabel*    lbShouldOptimizeForNetworkUse;

@property (nonatomic, strong)     UISwitch*    btnSwitch;

@property (nonatomic, strong)UIButton *btnEncode;

@property (nonatomic, strong)     UILabel*    convertTimeLeft;

@property (nonatomic, strong)     UILabel*    convertTime;

@property (nonatomic, strong)     UILabel*    mp4SizeLeft;

@property (nonatomic, strong)     UILabel*    mp4Size;

@property (nonatomic, strong)UIButton *btnPlay;

//- (IBAction)videoQualitySgtClick:(id)sender;
//- (IBAction)pickVideoBtnClick:(id)sender;
//
//- (IBAction)mp4QualitySgtClick:(id)sender;
//- (IBAction)switchChanged:(id)sender;
//
//- (IBAction)encodeBtnClick:(id)sender;
//- (IBAction)playBtnClick:(id)sender;
@end
