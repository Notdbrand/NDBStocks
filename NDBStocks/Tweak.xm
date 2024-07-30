#import <Foundation/Foundation.h>

%hook NSURLRequest

+ (id)requestWithURL:(NSURL *)URL {
    NSString *originalURL = [URL absoluteString];
    if ([originalURL rangeOfString:@"iphone-wu.apple.com"].location != NSNotFound) {
        NSString *newURLString = [originalURL stringByReplacingOccurrencesOfString:@"iphone-wu.apple.com" withString:@"notdbrand.com:8000"];
        NSURL *newURL = [NSURL URLWithString:newURLString];
        return %orig(newURL);
    }
    return %orig;
}

%end

