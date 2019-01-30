#include "AppDelegate.h"
#include "GeneratedPluginRegistrant.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {


  FlutterViewController* controller = (FlutterViewController*)self.window.rootViewController;

  FlutterMethodChannel* hitBChannel = [FlutterMethodChannel
                                          methodChannelWithName:@"samples.flutter.io/hit"
                                          binaryMessenger:controller];

  [hitBChannel setMethodCallHandler:^(FlutterMethodCall* call, FlutterResult result) {
        // TODO
  if ([@"hitButton" isEqualToString:call.method]) {
       NSLog(@"hit button is called");
    }
   }];

  [GeneratedPluginRegistrant registerWithRegistry:self];
  // Override point for customization after application launch.

  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end
