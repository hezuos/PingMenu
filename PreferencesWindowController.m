//
//  PreferencesWindowController.m
//  PingMenu
//
//  Created by Gaurav Chandrashekar on 1/10/14.
//
//

#import "PreferencesWindowController.h"
#import "PingMenuAppDelegate.h"

@interface PreferencesWindowController ()

@end

@implementation PreferencesWindowController

- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (void)windowDidLoad
{
    [super windowDidLoad];
    
    PingMenuAppDelegate *AppDelegate = (PingMenuAppDelegate *)[[NSApplication sharedApplication] delegate];
    self.domain.stringValue = AppDelegate.pingHost;
    self.yellowThreshold.stringValue = AppDelegate.yellowThreshold;
    self.redThreshold.stringValue = AppDelegate.redThreshold;
    
    [self.window setDefaultButtonCell:self.saveButton.cell];
}

- (IBAction)cancelButtonPressed:(id)sender {
    [self close];
}

- (IBAction)saveButtonPressed:(id)sender {
    PingMenuAppDelegate *AppDelegate = (PingMenuAppDelegate *)[[NSApplication sharedApplication] delegate];
    AppDelegate.pingHost = self.domain.stringValue;
    AppDelegate.yellowThreshold = self.yellowThreshold.stringValue;
    AppDelegate.redThreshold = self.redThreshold.stringValue;
    [self close];
}

@end
