/*
 * AppController.j
 * InfoDictionaryCappuccino
 *
 * Created by You on September 27, 2011.
 * Copyright 2011, Your Company All rights reserved.
 */

@import <Foundation/CPObject.j>


@implementation AppController : CPObject
{
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
    var theWindow = [[CPWindow alloc] initWithContentRect:CGRectMakeZero() styleMask:CPBorderlessBridgeWindowMask],
        contentView = [theWindow contentView];

    var label = [[CPTextField alloc] initWithFrame:CGRectMakeZero()];

	//Read out the Bool Value
	var boolValue = [[CPBundle mainBundle] objectForInfoDictionaryKey:@"BoolValue"];

	//Read out the String Value
	var stringValue = [[CPBundle mainBundle] objectForInfoDictionaryKey:@"StringValue"];
	
	//Read out the Integer Value
	var integerValue = [[CPBundle mainBundle] objectForInfoDictionaryKey:@"IntegerValue"];
	
	//Read out the Float Value
	var floatValue = [[CPBundle mainBundle] objectForInfoDictionaryKey:@"FloatValue"];
	
	//Read out the Array Value
	var arrayValue = [[CPBundle mainBundle] objectForInfoDictionaryKey:@"ArrayValue"];
	
	//Read out the Dictionary Value
	var dictionaryValue = [[CPBundle mainBundle] objectForInfoDictionaryKey:@"DictionaryValue"];

    [label setStringValue:[CPString stringWithFormat:@"Bool: %@ | Integer: %d | Float: %f | String: %@ | Array: %@ | Dictionary: %@", boolValue, integerValue, floatValue, stringValue, arrayValue, dictionaryValue]];
    [label setFont:[CPFont boldSystemFontOfSize:24.0]];

    [label sizeToFit];

    [label setAutoresizingMask:CPViewMinXMargin | CPViewMaxXMargin | CPViewMinYMargin | CPViewMaxYMargin];
    [label setCenter:[contentView center]];

    [contentView addSubview:label];

    [theWindow orderFront:self];

    // Uncomment the following line to turn on the standard menu bar.
    //[CPMenu setMenuBarVisible:YES];
}

@end
