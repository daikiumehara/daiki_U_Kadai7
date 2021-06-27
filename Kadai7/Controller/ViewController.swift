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
    private var model: CalculateProtocol!

    @IBAction private func didTapButton(_ sender: Any) {
        textFields.forEach { $0.endEditing(true) }
        let firstValue = Int(textFields[0].text!) ?? 0
        let secondValue = Int(textFields[1].text!) ?? 0
        let answer = model.calculate(first: firstValue, second: secondValue)
        answerLabel.text = String(answer)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = model.backgroundColor
    }

    static func instantiate(model: CalculateProtocol) -> ViewController {
        guard let vc = UIStoryboard(name: "Calculate", bundle: nil).instantiateInitialViewController() as? ViewController else {
            fatalError("ViewControllerが見つかりません")
        }
        vc.model = model
        return vc
    }
}
