//
//  main.swift
//  L3_Lysakov
//
//  Created by Slava V. Lysakov on 19.03.2020.
//  Copyright © 2020 Slava V. Lysakov. All rights reserved.
//

import Foundation

@propertyWrapper
struct PropertyInterval<Value: Comparable> {
    var value: Value
    let range: ClosedRange<Value>
    
    init(_ range: ClosedRange<Value>) {
        value = range.lowerBound
        self.range = range
    }

    var wrappedValue: Value {
        get {value}
        set {value = min(max(range.lowerBound, newValue), range.upperBound)}
    }
}

enum AutoModel :String {
    case audi
    case bmw
    case mercedes
}

enum DriveAction {
    case startEngine
    case stopEngine
    case openWindow
    case closeWindow
}

enum WindowState {
    case open
    case close
}
enum LaunchState {
    case running
    case stoped
}

struct Car {
    let model :AutoModel
    @PropertyInterval(1900...2020) var years :Int
    @PropertyInterval(0...10000)   var volumeBody :Int
    var useVolumeBody :Int = 0
    
    var windowOpen = WindowState.close
    var deviceLaunched = LaunchState.stoped
    
    init (model: AutoModel, year: Int, volumeBody: Int) {
        self.model = model
        self.volumeBody = volumeBody
        self.years = year
    }
     
    mutating func runDriveAction (action: DriveAction) {
        
    }
}

let audi = Car(model: .audi, year: 2013, volumeBody: 200)

