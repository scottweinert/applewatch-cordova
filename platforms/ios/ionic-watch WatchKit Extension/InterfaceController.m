//
//  InterfaceController.m
//  ionic-watch WatchKit Extension
//
//  Created by Scott Weinert on 4/23/15.
//
//

#import "InterfaceController.h"


@interface InterfaceController()
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *testLabel;

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    self.wormhole = [[MMWormhole alloc] initWithApplicationGroupIdentifier:@"group.unbill.watchkit"optionalDirectory:@""];
    
    [super willActivate];
//    id messageObject = [self.wormhole messageWithIdentifier:@"messageIdentifier"];
    
    id ionicMessage = [self.wormhole messageWithIdentifier:@"ionicMessage"];
    NSLog(@"GOT THE MESSAGE %@", ionicMessage);
    
    [self.testLabel setText:ionicMessage];
    
    [self.wormhole listenForMessageWithIdentifier:@"messageIdentifier"
                                         listener:^(id messageObject) {
                                             NSLog(@"WatchKit Extension: message received %@", messageObject);
                                         }];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



