//
//  BalanceDirection.swift
//  Ledger_iOS
//
//  Created by Elisha Chirchir on 20/12/2021.
//

import Foundation

enum BalanceDirection: Int, Codable, Equatable  {
    case positive = 1 // Net gain
    case negative = -1 //Net loss
    case neutral = 0//No gain or loss
}
