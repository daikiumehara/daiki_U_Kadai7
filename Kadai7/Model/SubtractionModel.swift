//
//  SubtractionModel.swift
//  Kadai7
//
//  Created by daiki umehara on 2021/06/23.
//

import UIKit

final class SubtractionModel: CalculateProtocol {
    let backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
    func calculate(first: Int, second: Int) -> Int {
        first - second
    }
}
