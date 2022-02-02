//
//  UnitType.swift
//  Ledger_iOS
//
//  Created by Abdulrahman Eldarrat on 1/12/22.
//

import RealmSwift

enum Weight {
    case lbs
    case kg
    case oz
}

enum Length {
    case mile
    case foot
    case inch
    case kilometer
    case meter
    case centimeter
    case millimeter
}

enum UnitType: Int {
    case weight = 1
    case length = 2
    case none = 0
}


