//
//  FiveViewController.swift
//  UITabBarController Lesson
//
//  Created by Dmitry Dorodniy on 24.05.2022.
//

import UIKit

class FiveViewController: UIViewController {

    // MARK: - Views
    private lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(tapButtonAction), for: .touchUpInside)
        button.setTitle("Press here", for: .normal)
        button.tintColor = .darkGray

        return button
    }()

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .lightGray
    }

//    override func viewWillAppear(_ animated: Bool) {
//        //перед появлением вью, таббар появляется
//        navigationController?.tabBarController?.tabBar.isHidden = false
//    }

    // MARK: - Initial
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)

        setupHierarhy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    // MARK: - Setting
    private func setupHierarhy() {
        view.addSubview(button)
    }

    private func setupLayout() {
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

    @objc private func tapButtonAction() {
        navigationController?.pushViewController(FiveChildViewController(), animated: true)
       // navigationController?.tabBarController?.tabBar.isHidden = true
    }
    
    }

