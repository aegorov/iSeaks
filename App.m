#import "App.h"

@implementation App

- (IBAction)save:(id)sender 
{
	
	NSLog(@"нажато save");
	NSString *str = [[NSString alloc] init];
	str = [text stringValue];
	NSLog(@"str = %@", str);
	if([str writeToFile: @"/Users/Artur/Documents/.mysticks.txt" atomically: YES encoding: NSUTF8StringEncoding error: NULL] == YES)
		{
			NSLog(@"отправлено в файл");
		}
	else
		{
			NSLog(@"не записано");
		}
	[text setStringValue: @""];
}


- (IBAction)load:(id)sender
{
	NSLog(@"нажато load");
	NSString *str = [NSString stringWithContentsOfFile: @"/Users/Artur/Documents/.mysticks.txt" encoding: NSUTF8StringEncoding error: NULL];
	[text setStringValue: str];
	[text setEditable: YES];
	NSLog(@"загружена строка str = %@", str);
}

- (void)awakeFromNib
{
	[text setEditable: YES];
    [text setStringValue:@"Сюда писать текст"];
}

@end