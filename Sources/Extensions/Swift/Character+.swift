//
// Created by Carson Rau on 1/31/22.
//

import Foundation

// MARK: - Properties

extension Character {
    
    // MARK: Static
    
    /// Static access to a new-line character.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    public static var newLine: Self { "\n" }
    
    /// Statically generate a random alphanumeric character.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    public static func random() -> Self {
        "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".randomElement()!
    }
    
    // MARK: Instance
    
    /// Convert this character to its integer ASCII value.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    public var asciiValue: UInt32 {
        get {
            let s = String(self).unicodeScalars
            return s[s.startIndex].value
        }
    }
    
    /// Integer from character (if applicable).
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    public var int: Int? {
        Int(String(self))
    }
    
    /// Check if a character is an emoji.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    public var isEmoji: Bool {
        switch String(self).unicodeScalars.first!.value {
        case 0x1F600...0x1F64F,         // Emoticons
             0x1F300...0x1F5FF,         // Misc Symbols and Pictographs
             0x1F680...0x1F6FF,         // Transport and Map
             0x1F1E6...0x1F1FF,         // Regional country flags
             0x2600...0x26FF,           // Misc symbols
             0x2700...0x27BF,           // Dingbats
             0xE0020...0xE007F,         // Tags
             0xFE00...0xFE0F,           // Variation Selectors
             0x1F900...0x1F9FF,         // Supplemental Symbols and Pictographs
             127_000...127_600,         // Various asian characters
             65024...65039,             // Variation selector
             9100...9300,               // Misc items
             8400...8447:               // Combining Diacritical Marks for Symbols
            return true
        default:
            return false
        }
    }
    
    /// Access the lowercased version of this character.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    public var lowercased: Self {
        String(self).lowercased().first!
    }
    
    /// String from character.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    public var string: String {
        .init(self)
    }
    
    /// Access the uppercased version of this character.
    @available(iOS 12.0.0, macOS 10.13.0, watchOS 4.0, tvOS 12.0, xrOS 1.0, *)
    public var uppercased: Self {
        String(self).uppercased().first!
    }
}

