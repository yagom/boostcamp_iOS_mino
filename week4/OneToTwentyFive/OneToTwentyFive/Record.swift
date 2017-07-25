//
//  Record.swift
//  OneToTwentyFive
//
//  Created by 오민호 on 2017. 7. 25..
//  Copyright © 2017년 BoostCamp. All rights reserved.
//

import UIKit

class Record {
    let name : String
    let dateRecorded : String
    let elapsedTime : Int
    
    private let dateFormatter : DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        return formatter
    }()
    
    init(who name : String, when dateRecorded : Date, record elapsedTime : Int) {
        self.name = name
        self.dateRecorded = dateFormatter.string(from: dateRecorded)
        self.elapsedTime = elapsedTime
    }
    
    open func elapsedTimeFormatted() -> String {
        let secondbySixty = elapsedTime % 60
        let seconds = (elapsedTime / 60) % 60
        let minites = elapsedTime  / 3600
        return String(format: "%02d:%02d:%02d", minites, seconds, secondbySixty)
    }
    
    
}

extension Record {
    static func < (left : Record, right : Record) -> Bool {
        return left.elapsedTime < right.elapsedTime
    }
    
}
