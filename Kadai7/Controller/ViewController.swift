//
//  ViewController.swift
//  Kadai7
//
//  Created by daiki umehara on 2021/06/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var textFields: [UITextField]!
    @IBOutlet var answerLabel: UILabel!
    var model = CalculateModel()

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.model.setModel(self.tabBarController?.selectedIndex)
        self.view.backgroundColor = model.calculator.backgroundColor
    }

    @IBAction func didTapButton(_ sender: Any) {
        textFields.forEach { $0.endEditing(true) }
        let firstValue = Int(textFields[0].text!) ?? 0
        let secondValue = Int(textFields[1].text!) ?? 0
        let answer = model.calculator.calculate(firstValue, secondValue)
        answerLabel.text = String(answer)
    }

}

