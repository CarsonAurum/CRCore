//
//  Created by Carson Rau on 9/30/23.
//

import Foundation

extension Double {
    /// A quick conversion interpreting this value as a day value.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @inlinable
    public var day: TimeInterval          { return self * 3600 * 24 }
    /// A quick conversion interpreting this value as a day value.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @inlinable
    public var days: TimeInterval         { return self * 3600 * 24 }
    /// A quick conversion interpreting this value as an hour value.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @inlinable
    public var hour: TimeInterval         { return self * 3600 }
    /// A quick conversion interpreting this value as an hour value.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @inlinable
    public var hours: TimeInterval        { return self * 3600 }
    /// A quick conversion interpreting this value as a millisecond value.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @inlinable
    public var millisecond: TimeInterval { self / 1000 }
    /// A quick conversion interpreting this value as a millisecond value.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @inlinable
    public var milliseconds: TimeInterval { self / 1000 }
    /// A quick conversion interpreting this value as a minute value.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @inlinable
    public var minute: TimeInterval       { return self * 60 }
    /// A quick conversion interpreting this value as a minute value.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @inlinable
    public var minutes: TimeInterval      { return self * 60 }
    /// A quick conversion interpreting this value as a millisecond value.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @inlinable
    public var ms: TimeInterval { self / 1000 }
    /// A quick conversion interpreting this value as a second value.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @inlinable
    public var second: TimeInterval { self }
    /// A quick conversion interpreting this value as a second value.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    @inlinable
    public var seconds: TimeInterval { self }
}
