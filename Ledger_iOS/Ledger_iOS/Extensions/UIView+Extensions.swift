//
//  UIView+Extensions.swift
//  Ledger_iOS
//
//  Created by Abdulrahman Eldarrat on 6/1/21.
//

import Foundation
import UIKit


extension UIView {
    
    func addSubViews(_ views: [UIView], translatesAutoresizingMaskIntoConstraints: Bool) {
        views.forEach { view in
            self.addSubview(view)
            view.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        }
    }
}
