//
//  TabViewController.swift
//  Kadai7
//
//  Created by daiki umehara on 2021/06/23.
//

import UIKit

final class TabViewController: UITabBarController {

    private var tabIndex = -1

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let firstVC = makeInitialVC(storyBoardName: "Calculate") as? ViewController else {
            fatalError("ダウンキャストに失敗しました")
        }
        firstVC.configure(index: tabIndex)
        guard let secondVC = makeInitialVC(storyBoardName: "Calculate") as? ViewController else {
            fatalError("ダウンキャストに失敗しました")
        }
        secondVC.configure(index: tabIndex)

        self.viewControllers = [firstVC, secondVC]
    }

    private func makeInitialVC(storyBoardName name: String) -> UIViewController {
        guard let vc = UIStoryboard(name: name, bundle: nil).instantiateInitialViewController() else {
            fatalError("ViewControllerが見つかりません")
        }
        self.tabIndex += 1
        return vc
    }
}
