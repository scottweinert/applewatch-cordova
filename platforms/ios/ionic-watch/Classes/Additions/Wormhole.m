//
//  Wormhole.m
//  ionic-watch
//
//  Created by Scott Weinert on 4/23/15.
//
//

#import "Wormhole.h"

@implementation Wormhole

- (id) init {
    self = [super init];
    if (self != nil) {
        // initializations go here.
    }
    return self;
}

-(void)setupWormhole {
    NSLog(@"init wormhole");
    self.wormhole = [[MMWormhole alloc] initWithApplicationGroupIdentifier:@"group.unbill.watchkit"
                                                         optionalDirectory:@"wormhole"];
    [self.wormhole passMessageObject:@{@"titleString" : @"it totally worked"}
                          identifier:@"messageIdentifier"];
}

@end
