//
//  CalculateProtocol.swift
//  Kadai7
//
//  Created by daiki umehara on 2021/06/23.
//

import UIKit

protocol CalculateProtocol: AnyObject {
    var backgroundColor: UIColor { get }
    var calculate: (Int, Int) -> Int { get }
}
