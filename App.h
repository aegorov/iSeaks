#import <Cocoa/Cocoa.h>

@interface App : NSObject 
{
    IBOutlet NSTextField *text;
}

- (IBAction)save:(id)sender;
- (IBAction)load:(id)sender;
@end