//
//  main.m
//  StringsMethods
//
//  Created by Edwin Cardenas on 2/01/25.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *lament = @"Why me!?";
        NSLog(@"%@", lament);
        
        NSString *slogan = @"I \u2661 New York!";
        NSLog(@"%@", slogan); // I ♡ New York!
        
        NSString *dateString = [NSString stringWithFormat: @"The date is %@", [NSDate date]];
        NSLog(@"%@", dateString);
        
        NSUInteger charCount = [dateString length];
        NSLog(@"The dateString variable contains a string %lu characters long", (unsigned long)charCount);
        
        if ([slogan isEqualToString:lament]) {
            NSLog(@"\"%@\" and \"%@\" are equal", slogan, lament);
        } else {
            NSLog(@"\"%@\" and \"%@\" are not equal", slogan, lament);
        }
        
        NSString *angryText = @"That makes me so mad!";
        NSString *reallyAngryText = [angryText uppercaseString];
        NSLog(@"%@", reallyAngryText);
        
        NSString *longListOfNames = @"Edwin,Keyla,Milagros,Irene,Franquil,Coco";
        NSString *name = @"milagros";
        NSRange match = [longListOfNames rangeOfString:name];
        NSRange caseInsensitiveMatch = [longListOfNames localizedStandardRangeOfString:name];
        
        if (match.location == NSNotFound) {
            NSLog(@"No match found for \"%@\"!", name);
        } else {
            NSLog(@"Match found for \"%@\"!", name);
        }
        
        if (caseInsensitiveMatch.location == NSNotFound) {
            NSLog(@"No match found for \"%@\"!", name);
        } else {
            NSLog(@"Match found for \"%@\"!", name);
        }
        
        if ([longListOfNames containsString:name]) {
            NSLog(@"\"%@\" can be found in \"%@\"", name, longListOfNames);
        } else {
            NSLog(@"\"%@\" cannot be found in \"%@\"", name, longListOfNames);
        }
        
        if ([longListOfNames localizedCaseInsensitiveContainsString:name]) {
            NSLog(@"\"%@\" can be found in \"%@\"", name, longListOfNames);
        } else {
            NSLog(@"\"%@\" cannot be found in \"%@\"", name, longListOfNames);
        }
        
        NSLog(@"The substring found is \"%@\"", [longListOfNames substringWithRange:caseInsensitiveMatch]);
    }
    return 0;
}
