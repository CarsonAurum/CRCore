//
//  Created by Carson Rau on 9/29/23.
//

import Foundation

// MARK: - Instance Funcs
extension Timer {
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    public func start(loop: RunLoop = .current, modes: RunLoop.Mode...) {
        let modes = modes.isEmpty ? [.default] : modes
        modes.forEach { loop.add(self, forMode: $0) }
    }
}

// MARK: - Static Funcs
extension Timer {
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @discardableResult
    @inlinable
    public static func after(_ interval: TimeInterval, _ block: @escaping () -> Void) -> Timer {
        let timer = Self.new(after: interval, block)
        timer.start()
        return timer
    }
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @discardableResult
    @inlinable
    public static func every(_ interval: TimeInterval, _ block: @escaping () -> Void) -> Timer {
        let timer = Self.new(every: interval, block)
        timer.start()
        return timer
    }
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @discardableResult
    @inlinable
    @nonobjc
    public static func every(_ interval: TimeInterval, _ block: @escaping (Timer) -> Void) -> Timer {
        let timer = Self.new(every: interval, block)
        timer.start()
        return timer
    }
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @inlinable
    public static func new(after interval: TimeInterval, _ block: @escaping () -> Void) -> Timer {
        CFRunLoopTimerCreateWithHandler(
            kCFAllocatorDefault,
            CFAbsoluteTimeGetCurrent() + interval,
            0,
            0,
            0
        ) { _ in block() }
    }
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @inlinable
    public static func new(every interval: TimeInterval, _ block: @escaping () -> Void) -> Timer {
        CFRunLoopTimerCreateWithHandler(
            kCFAllocatorDefault,
            CFAbsoluteTimeGetCurrent() + interval,
            interval,
            0,
            0
        ) { _ in block() }
    }
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @inlinable
    @nonobjc
    public static func new(every interval: TimeInterval, _ block: @escaping (Timer) -> Void) -> Timer {
        var timer: Timer!
        timer = CFRunLoopTimerCreateWithHandler(
            kCFAllocatorDefault,
            CFAbsoluteTimeGetCurrent() + interval,
            interval,
            0,
            0
        ) { _ in block(timer) }
        return timer
    }
}
