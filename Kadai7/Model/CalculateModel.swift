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
    static func getCalculateModel(_ index: Int?) -> CalculateProtocol {
        let index = index ?? 0
        let calc = Calclator(rawValue: index) ?? Calclator(rawValue: 0)!
        return calc.model
    }
}
