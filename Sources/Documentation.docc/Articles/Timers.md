# Timers

This is an overview of all extensions added to the `Timer` class from `Foundation`.

## Design Motivation

The Foundation Timer API requires lots of additional overhead because the original design
of the API was intended for use via Objective-C. Although many changes have been made 
to improve ease-of-use for the original Foundation API from Swift 5, this package aims to 
provide a few simpler paths to access core timer utilities available in Foundation.

## Usage

### Basic Usage
There are two primary functions that can be used to quickly create new timers: `Timer.every()` and `Timer.after()`.
Please note:
  - All timers created from these functions are returned, and can be stored, but this is not necessary.
  - All timers created from these functions will immediately begin execution.

```swift
// A timer, already started, that will call its closure every half-second.
Timer.every(0.5.seconds) {
    light.blink()
}

// A timer, already started, that will call its closure once after a minute.
Timer.after(1.minute) {
    print("Are you done yet?")
}
```

As with all closure-based functions, external function names can also be used:

```swift
func runThis() {
    print("This ran!")
}

Timer.after(5.seconds, runThis)
Timer.every(10.seconds, runThis)
```

### Manual Scheduling

As previously noted, both of the above functions will automatically begin the
timer's execution. If this is not the desired behavior, there is another
set of utility functions that can be used to manually create timer objects.

While ideally these should be initializers, there is a Foundation 
[bug](http://www.openradar.me/18720947) that prevents this from working.

```swift
let singleTimer = Timer.new(after: 1.minute) {
    print("A minute has passed.")
}

let repeatTimer = Timer.new(every: 1.second) {
    print("A second has passed.")
}
```
These timer instances can then be dispatched directly with optional
RunLoop and RunLoop Mode parameters.

```swift
singleTimer.start()
repeatTimer.start(modes: .defaultRunLoopMode, .eventTrackingRunLoopMode)
```

### Timer Invalidation

Sometimes, a callback needs to invalidate a repeating timer. Both methods
of creating repeating timers (`Timer.new(every:_:)` and `Timer.every(_:_:)`) 
also support a callback that receives the timer instance as a parameter. 
This allows invalidation of the timer to take place within the callback:

```swift
Timer.every(5.seconds) { timer in
    // do something
    if finished {
        timer.invalidate()
    }
}

let cancellableTimer = Timer.new(every: 5.seconds) { timer in 
    // do something
    if finished { 
        timer.invalidate() 
    }
}
```

## Time Helpers

To assist with readability, the `Double` type has been extended with a number
of helper properties to enable quick conversion to the appropriate `TimeInterval`
for use in these timer functions. The following is a list of the provided
time measurements:

```swift
// Milliseconds
1.millisecond
100.milliseconds
100.ms

// Seconds
1.second
2.5.seconds

// Minutes
1.minute
10.minutes

// Hours
1.hour
3.hours

// Days
1.day
2.days
```
