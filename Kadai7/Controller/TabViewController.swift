//
//  TabViewController.swift
//  Kadai7
//
//  Created by daiki umehara on 2021/06/23.
//

import UIKit

final class TabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let firstVC = ViewController.instantiate(model: AdditionModel())
        let secondVC = ViewController.instantiate(model: SubtractionModel())

        self.viewControllers = [firstVC, secondVC]
    }
}
