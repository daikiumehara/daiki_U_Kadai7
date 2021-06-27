//
//  AdditionModel.swift
//  Kadai7
//
//  Created by daiki umehara on 2021/06/23.
//

import UIKit

final class AdditionModel: CalculateProtocol {
    let backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
    func calculate(first: Int, second: Int) -> Int {
        first + second
    }
}
