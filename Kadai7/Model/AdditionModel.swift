//
//  AdditionModel.swift
//  Kadai7
//
//  Created by daiki umehara on 2021/06/23.
//

import UIKit

final class AdditionModel: CalculateProtocol {
    var backgroundColor: UIColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
    var calculate: (Int, Int) -> Int = { first, second in
        return first + second
    }
}
