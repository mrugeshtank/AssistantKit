//
//  Battery.swift
//  AssistantKit
//
//  Created by Ezio on 21/07/16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

public enum State: String {
    case Full
    case Unplugged
    case Charging
    case Unknown
}

extension Device {
    static public var isBatteryCharging: Bool {
//        if isBatteryMonitoringEnabled
//        {
            return ( UIDevice.currentDevice().batteryState == .Charging)
//        }
//        else
//        {
//            setBatteryMonitoringEnabled(true)
//            let result = self.isBatteryCharging
//            setBatteryMonitoringEnabled(false)
//            return result
//        }
    }
    
    static public var isBatteryFull: Bool {
        return ( UIDevice.currentDevice().batteryState == .Full)
    }
    
    static public var isBatteryChargingUnplugged: Bool {
        return ( UIDevice.currentDevice().batteryState == .Unplugged)
    }
    
    static public var isBatteryStateUnknown: Bool {
        return ( UIDevice.currentDevice().batteryState == .Unknown)
    }
    
    static public var getBatteryPercentage: Float {
        return NSString(format: "%.1f", UIDevice.currentDevice().batteryLevel).floatValue
    }
    
    static public var isBatteryMonitoringEnabled: Bool {
        return UIDevice.currentDevice().batteryMonitoringEnabled
    }
    
    static public func setBatteryMonitoringEnabled(willEnable: Bool) -> Void {
        UIDevice.currentDevice().batteryMonitoringEnabled = willEnable
    }
}
