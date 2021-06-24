//
//  ViewController.swift
//  Kadai7
//
//  Created by daiki umehara on 2021/06/23.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet private var textFields: [UITextField]!
    @IBOutlet private var answerLabel: UILabel!
    private var model = CalculateModel()

    @IBAction private func didTapButton(_ sender: Any) {
        textFields.forEach { $0.endEditing(true) }
        let firstValue = Int(textFields[0].text!) ?? 0
        let secondValue = Int(textFields[1].text!) ?? 0
        let answer = model.calculator.calculate(firstValue, secondValue)
        answerLabel.text = String(answer)
    }

    func configure(index: Int) {
        self.model.setModel(index)
        self.view.backgroundColor = model.calculator.backgroundColor
    }
}

