#import <Foundation/Foundation.h>
#import <DiscRecording/DiscRecording.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *devices = [DRDevice devices];
        DRDevice* device = devices[0];
        if ([device trayIsOpen]) {
            [device closeTray];
        } else {
            [device openTray];
        }
    }
    return 0;
}
