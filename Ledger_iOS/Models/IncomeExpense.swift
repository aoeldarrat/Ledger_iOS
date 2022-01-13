//
//  BalanceDirection.swift
//  Ledger_iOS
//
//  Created by Elisha Chirchir on 20/12/2021.
//

import Foundation

enum IncomeExpense: Int, Codable, Equatable  {
    case income = 1 // Net gain
    case expense = -1 //Net loss
    case neutral = 0//No gain or loss
}
