//
//  Wormhole.h
//  ionic-watch
//
//  Created by Scott Weinert on 4/23/15.
//
//

#import <Foundation/Foundation.h>
#import "MMWormhole.h"

@interface Wormhole : NSObject
-(void)setupWormhole;
@property (nonatomic, strong) MMWormhole* wormhole;
@end
