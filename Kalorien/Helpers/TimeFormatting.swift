//
//  TimeFormatting.swift
//  Kalorien
//
//  Created by Marvin Polscheit on 11.11.23.
//

import Foundation

func calcTimeSince(date: Date) -> String {
    let minutes = Int(-date.timeIntervalSinceNow)/60 //this will return mililseconds
    let hours = minutes/60
    let days = hours/24
    
    if minutes < 120 {
        return "\(minutes) Minuten her"
    } else if minutes >= 120 && hours < 48 {
        return "\(hours) Stunden her"
    } else {
        return "\(days) Tage her"
    }
}
