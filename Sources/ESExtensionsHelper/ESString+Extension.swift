//
//  ESString+Extension.swift
//  ESExtensionsHelper
//
//  Created by Emil Karimov on 12/06/2020.
//  Copyright © 2020 Emil Karimov.
//

import Foundation
#if os(OSX)
    import Cocoa
#else
    import UIKit
#endif

public extension String {

    /// Used for localize your strings
    ///
    /// - Parameters:
    ///   - bundle: bundle for use
    ///   - tableName: table of your locolized strings
    /// - Returns: localized string
    func localized(bundle: Bundle = .main, tableName: String = "Localizable") -> String {
        return NSLocalizedString(self, tableName: tableName, value: "**\(self)**", comment: "")
    }

    static func randomEmoji() -> String {
        let range = [UInt32](0x1F601...0x1F64F)
        let ascii = range[Int(drand48() * (Double(range.count)))]
        let emoji = UnicodeScalar(ascii)?.description
        return emoji ?? ""
    }

    #if os(OSX)
        func widthOfString(usingFont font: NSFont = NSFont.systemFont(ofSize: 17)) -> CGFloat {
            let fontAttributes = [NSAttributedString.Key.font: font]
            let size = self.size(withAttributes: fontAttributes)
            return size.width
        }

        func heightOfString(usingFont font: NSFont = NSFont.systemFont(ofSize: 17)) -> CGFloat {
            let fontAttributes = [NSAttributedString.Key.font: font]
            let size = self.size(withAttributes: fontAttributes)
            return size.height
        }

        func sizeOfString(usingFont font: NSFont = NSFont.systemFont(ofSize: 17)) -> CGSize {
            let fontAttributes = [NSAttributedString.Key.font: font]
            return self.size(withAttributes: fontAttributes)
        }
    #else
        func widthOfString(usingFont font: UIFont = UIFont.systemFont(ofSize: 17)) -> CGFloat {
            let fontAttributes = [NSAttributedString.Key.font: font]
            let size = self.size(withAttributes: fontAttributes)
            return size.width
        }

        func heightOfString(usingFont font: UIFont = UIFont.systemFont(ofSize: 17)) -> CGFloat {
            let fontAttributes = [NSAttributedString.Key.font: font]
            let size = self.size(withAttributes: fontAttributes)
            return size.height
        }

        func sizeOfString(usingFont font: UIFont = UIFont.systemFont(ofSize: 17)) -> CGSize {
            let fontAttributes = [NSAttributedString.Key.font: font]
            return self.size(withAttributes: fontAttributes)
        }
    #endif
}

