//
//  FourChildViewController.swift
//  UITabBarController Lesson
//
//  Created by Dmitry Dorodniy on 24.05.2022.
//

import UIKit

class FourChildViewController: UIViewController {

    // MARK: - Views
    private lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(tapButtonAction), for: .touchUpInside)
        button.setTitle("Dismiss", for: .normal)
        button.tintColor = .red

        return button
    }()


    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemYellow
        title = "Four child"
    }

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
//        let navigationController = UINavigationController(rootViewController: FourChildViewController())
        dismiss(animated: true, completion: nil)

    }
}
