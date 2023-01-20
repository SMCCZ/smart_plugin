#import "SmartPlugin.h"
#if __has_include(<smart_plugin/smart_plugin-Swift.h>)
#import <smart_plugin/smart_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "smart_plugin-Swift.h"
#endif

@implementation SmartPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSmartPlugin registerWithRegistrar:registrar];
}
@end
