//
//  FirstChildViewController.swift
//  UITabBarController Lesson
//
//  Created by Dmitry Dorodniy on 23.05.2022.
//

import UIKit

class FirstChildViewController: UIViewController {



    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemMint
        navigationController?.navigationBar.prefersLargeTitles = true
//        navigationItem.largeTitleDisplayMode = .automatic
        title = "First child"
    }

    override func viewWillAppear(_ animated: Bool) {
        //перед появлением вью, таббар скрывается
        navigationController?.tabBarController?.tabBar.isHidden = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        //перед исчезновением вью, таббар появляется
        navigationController?.tabBarController?.tabBar.isHidden = false
    }

   
}
