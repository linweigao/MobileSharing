//
//  MobileSharingEx.m
//  MobileSharingEx
//
//  Created by Gao, Linwei on 3/31/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ReactNativeShareExtension.h"
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>
#import <React/RCTLog.h>

@interface MobileSharingEx : ReactNativeShareExtension
@end

@implementation MobileSharingEx

RCT_EXPORT_MODULE();

- (UIView*) shareView {
  NSURL *jsCodeLocation;
  
  jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index" fallbackResource:nil];
  
  RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                      moduleName:@"MobileSharingEx"
                                               initialProperties:nil
                                                   launchOptions:nil];
  rootView.backgroundColor = nil;
  
  // Uncomment for console output in Xcode console for release mode on device:
  // RCTSetLogThreshold(RCTLogLevelInfo - 1);
  
  return rootView;
}

@end

