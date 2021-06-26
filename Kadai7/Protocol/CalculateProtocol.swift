//
//  CalculateProtocol.swift
//  Kadai7
//
//  Created by daiki umehara on 2021/06/23.
//

import UIKit

protocol CalculateProtocol: AnyObject {
    var backgroundColor: UIColor { get }
    func calculate(first: Int, second: Int) -> Int
}
