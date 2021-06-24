//
//  CalculateModel.swift
//  Kadai7
//
//  Created by daiki umehara on 2021/06/23.
//

import Foundation

final class CalculateModel: NSObject {
    enum Calclator: Int, CaseIterable {
        case addition ,subtraction

        var model: CalculateProtocol {
            switch self {
            case .addition:
                return AdditionModel()
            case .subtraction:
                return SubtractionModel()
            }
        }
    }
    private(set) var calculator: CalculateProtocol!
    func setModel(_ index: Int?) {
        let index = index ?? 0
        print(index)
        let calc = Calclator(rawValue: index) ?? Calclator(rawValue: 0)!
        self.calculator = calc.model
    }
}
