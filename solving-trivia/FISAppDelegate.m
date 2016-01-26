//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)solveTrivia {
    NSString *capital;
    for (NSString *state in [[self statesCapitals] allKeys]) {
        capital = [[[self statesCapitals] objectForKey:state] lowercaseString];
        if ([capital isEqualToString:[[capital componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:[state lowercaseString]]] componentsJoinedByString:@""]]) {
            return state;
        }
    }
    
    return nil;
}

+ (NSString *)stringFromCharacterSet:(NSCharacterSet *)characterSet
{
    unichar unicharBuffer[20];
    int index = 0;
    
    for (unichar uc = 0; uc < (0xFFFF); uc ++)
    {
        if ([characterSet characterIsMember:uc])
        {
            unicharBuffer[index] = uc;
            
            index ++;
            
            if (index == 20)
            {
                NSString * characters = [NSString stringWithCharacters:unicharBuffer length:index];
                NSLog(@"%@", characters);
                
                index = 0;
            }
        }
    }
    
    if (index != 0)
    {
        NSString * characters = [NSString stringWithCharacters:unicharBuffer length:index];
        return characters;
    }
    
    return @"";
}

- (NSDictionary *)statesCapitals {

    return @{
           @"Alabama":@"Montgomery",
           @"Alaska":@"Juneau",
           @"Arizona":@"Phoenix",
           @"Arkansas":@"Little Rock",
           @"California":@"Sacramento",
           @"Colorado":@"Denver",
           @"Connecticut":@"Hartford",
           @"Delaware":@"Dover",
           @"Florida":@"Tallahassee",
           @"Georgia":@"Atlanta",
           @"Hawaii":@"Honolulu",
           @"Idaho":@"Boise",
           @"Illinois":@"Springfield",
           @"Indiana":@"Indianapolis",
           @"Iowa":@"Des Moines",
           @"Kansas":@"Topeka",
           @"Kentucky":@"Frankfort",
           @"Lousiana":@"Baton Rouge",
           @"Maine":@"Augusta",
           @"Maryland":@"Annapolis",
           @"Massassachusetts":@"Boston",
           @"Michigan":@"Lansing",
           @"Minnesota":@"Saint Paul",
           @"Mississippi":@"Jackson",
           @"Missouri":@"Jefferson City",
           @"Montana":@"Helena",
           @"Nebraska":@"Lincoln",
           @"Nevada":@"Carson City",
           @"New Hampshire":@"Concord",
           @"New Jersey":@"Trenton",
           @"New Mexico":@"Santa Fe",
           @"New York":@"Albany",
           @"North Carolina":@"Raleigh",
           @"North Dakota":@"Bismarck",
           @"Ohio":@"Columbus",
           @"Oklahoma":@"Oklahoma City",
           @"Oregon":@"Salem",
           @"Pennsylvania":@"Harrisburg",
           @"Rhode Island":@"Providence",
           @"South Carolina":@"Columbia",
           @"South Dakota":@"Pierre",
           @"Tennessee":@"Nashville",
           @"Texas":@"Austin",
           @"Utah":@"Salt Lake City",
           @"Vermont":@"Montpelier",
           @"Virgina":@"Richmond",
           @"Washington":@"Olympia",
           @"West Virginia":@"Charleston",
           @"Wisconsin":@"Madison",
           @"Wyoming":@"Cheyenne"
           };
}

@end
