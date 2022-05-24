//
//  SecondChildViewController.swift
//  UITabBarController Lesson
//
//  Created by Dmitry Dorodniy on 24.05.2022.
//

import UIKit

class SecondChildViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        
    }

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemTeal
//        navigationController?.navigationBar.prefersLargeTitles = true
//        navigationItem.largeTitleDisplayMode = .always
// tittle не будет выведен
        title = "Second child"

    }

}
