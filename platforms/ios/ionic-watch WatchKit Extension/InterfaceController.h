//
//  InterfaceController.h
//  ionic-watch WatchKit Extension
//
//  Created by Scott Weinert on 4/23/15.
//
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>
#import "MMWormhole.h"
@interface InterfaceController : WKInterfaceController
@property (nonatomic, strong) MMWormhole* wormhole;
@end
