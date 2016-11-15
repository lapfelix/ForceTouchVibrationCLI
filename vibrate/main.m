//
//  main.m
//  vibrate
//
//  Created by Felix Lapalme on 2016-11-14.
//  Copyright © 2016 Felix Lapalme. All rights reserved.
//

#import <Cocoa/Cocoa.h>

void vibrateForever();
void vibrateFor(double time);
void printHelp();

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        if (argc == 1) {
            vibrateForever();
        }

        if (argc == 2 && (strcmp(argv[1], "-h") || strcmp(argv[1], "--help"))) {
            printHelp();
        }

        if (argc == 3 && (strcmp(argv[1], "-t") || strcmp(argv[1], "--time"))) {
            char *stringEnd;
            double time = strtod(argv[2], &stringEnd);
            if (!strcmp(stringEnd, argv[2])) {
                printf("Invalid time specified!\n");
            } else {
                vibrateFor(time);
            }
        }
    }
    return 0;
}

void printHelp() {
    printf("\nUsage:\n\nVibrate for 0.5 seconds: \tvibrate -t 0.5\nVibrate for 30 seconds: \tvibrate --time 30\nVibrate forever:    \t\tvibrate\n");
}

void vibrateForever() {
    vibrateFor(HUGE);
}

void vibrateFor(double time) {
    NSDate *startDate = [NSDate date];

    while ([[NSDate new] timeIntervalSinceDate:startDate] < time) {
        [[NSHapticFeedbackManager defaultPerformer] performFeedbackPattern:NSHapticFeedbackPatternGeneric performanceTime:NSHapticFeedbackPerformanceTimeNow];
        usleep(5000);
    }

    NSLog(@"Finished in %f", [[NSDate new] timeIntervalSinceDate:startDate]);
}
