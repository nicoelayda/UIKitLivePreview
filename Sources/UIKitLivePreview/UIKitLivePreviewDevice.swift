//
//  Copyright © 2021 Dominic Elayda.
//  Licensed under The MIT License.
//

import Foundation

/*
 Preview device names are from `xcrun simctl list devicetypes`
 Only simulator devices available starting from Xcode 12 are defined.
 */
public enum UIKitLivePreviewDevice: String {
    
    // iPhones
    case iPhone8 = "iPhone 8"
    case iPhone8Plus = "iPhone 8 Plus"
    case iPhone11 = "iPhone 11"
    case iPhone11Pro = "iPhone 11 Pro"
    case iPhone11ProMax = "iPhone 11 Pro Max"
    case iPhone12 = "iPhone 12"
    case iPhone12Pro = "iPhone 12 Pro"
    case iPhone12ProMax = "iPhone 12 Pro Max"
    case iPhone12Mini = "iPhone 12 mini"
    case iPhone13 = "iPhone 13"
    case iPhone13Pro = "iPhone 13 Pro"
    case iPhone13ProMax = "iPhone 13 Pro Max"
    case iPhone13Mini = "iPhone 13 mini"
    case iPhoneSE_2ndGen = "iPhone SE (2nd generation)"
    case iPodTouch_7thGen = "iPod touch (7th generation)"
    
    // iPads
    case iPad_8thGen = "iPad (8th generation)"
    case iPad_9thGen = "iPad (9th generation)"
    case iPadAir_4thGen = "iPad Air (4th generation)"
    case iPadPro9_7 = "iPad Pro (9.7-inch)"
    case iPadPro11_3rdGen = "iPad Pro (11-inch) (3rd generation)"
    case iPadPro12_9_5thGen = "iPad Pro (12.9-inch) (5th generation)"
    case iPadMini_6thGen = "iPad mini (6th generation)"
    
}
