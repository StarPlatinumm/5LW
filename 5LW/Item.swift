//
//  Item.swift
//  5LW
//
//  Created by Артем Кривдин on 25.03.2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
