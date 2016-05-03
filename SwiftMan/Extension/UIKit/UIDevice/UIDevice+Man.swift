//
//  UIDevice+Man.swift
//  SwiftMan
//
//  Created by neu on 16/5/2.
//  Copyright © 2016年 cactus. All rights reserved.
//

import UIKit

extension UIDevice {
    /// Returns true if the device is iPhone
    public static var  m_isPhone: Bool {
        return UIDevice.currentDevice().userInterfaceIdiom == UIUserInterfaceIdiom.Phone
    }
    
    /// Returns true if the device is iPad
    public static var  m_isPad: Bool {
        return UIDevice.currentDevice().userInterfaceIdiom == UIUserInterfaceIdiom.Pad
    }
    
    ///  Operating system name  e.g. iPhone OS
    public static var m_systemName: String {
        return UIDevice.currentDevice().systemName
    }
    
    //   Operating system version e.g. 9.3
    public static var m_systemVersion: String {
        return UIDevice.currentDevice().systemVersion
    }
    
    //   Operating system version e.g. 9.3
    public static var m_systemFloatVersion: Float {
        return (UIDevice.m_systemVersion as NSString).floatValue
    }
    
    //    e.g. iPhone Simulator
    public static var m_deviceName: String {
        return UIDevice.currentDevice().name
    }
    
    //    e.g. en
    public static var m_deviceLanguage: String {
        return NSBundle.mainBundle().preferredLocalizations[0]
    }
    
    
    public enum Version: Float {
        case Five = 5.0
        case Six = 6.0
        case Seven = 7.0
        case Eight = 8.0
        case Nine = 9.0
    }
    
    public class func isVersion(version: Version) -> Bool {
        return UIDevice.m_systemFloatVersion >= version.rawValue && UIDevice.m_systemFloatVersion < (version.rawValue + 1.0)
    }

    public class func isVersionOrLater(version: Version) -> Bool {
        return UIDevice.m_systemFloatVersion >= version.rawValue
    }

    public class func isVersionOrEarlier(version: Version) -> Bool {
        return UIDevice.m_systemFloatVersion < (version.rawValue + 1.0)
    }

}