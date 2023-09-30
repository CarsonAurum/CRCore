# Code Style

Follow all guidelines when contributing to this codebase.

## Overview

Code style is essential to any large or mission-critical library. As this 
library is intended for use across a wide range of scopes and platforms, the 
programming style maintained in this code is essential for readability and 
effective use of the code provided in this library. 

Where not specified, Swift standard library practices should be followed.

### Attributes
  * All attributes provided for a declaration should be presented in alphabetical order.
  * An `@available` attribute should be provided for all public declarations.
  * Lightweight functions that provide simple access for other operations should be 
    marked `@inlinable`.

### Documentation
  * All documentation is done via Docc. Any public symbols should be properly documented
    and organized within the existing documentation hierarchy.
  * Any major design themes that persist across many extensions or types ought to be 
    documented in more detail with an associated article file. 
  * Where possible, include meaningful usage examples for declarations that are not immediately
    comprehensible.

### Line Spacing
  * Any function declaration (or call) that cannot fit reasonably on one line must be split.
    When this is needed, all parameters should be placed on their own line with the trailing
    parenthesis on its own line.
    ```swift
    func tooManyParams(
        first: Int,
        second: Int,
        third: Int
    ) -> Int {
        // ...
    }

    int result = tooManyParams(
        first: 1,
        second: 2,
        third: 3
    )
    ```

### Swift Language Features
  * Where possible, implicit returns should be used.
    ```swift
    func add(_ a: Int, _ b: Int) -> Int { return a + b }    // no
    func add(_ a: Int, _ b: Int) -> Int { a + b }           // yes
    ```
  * Where possible, magic parameters for closures should be used.
    ```swift
    var arr = [1, 2, 3]
    int sum = 0

    arr.forEach { x in sum += x }       // no
    arr.forEach { sum += $0 }           // yes
    ```
