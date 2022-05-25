//
//  AppDelegate.swift
//  UITabBarController Lesson
//
//  Created by Dmitry Dorodniy on 23.05.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

// После удаления storyboard прописываем
        // (1)
        window = UIWindow(frame: UIScreen.main.bounds)
        // (2)
        let viewController = ViewController()
        window?.rootViewController = viewController
        // (3)
        window?.makeKeyAndVisible()

//                if #available(iOS 15, *) {
//                    let navigationBarAppearance = UINavigationBarAppearance()
//                    navigationBarAppearance.configureWithDefaultBackground()
//                    UINavigationBar.appearance().standardAppearance = navigationBarAppearance
//                    UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
////                    navigationBarAppearance.backgroundColor = .orange
//
//                    let tabBarAppearance = UITabBarAppearance()
//                    tabBarAppearance.configureWithDefaultBackground()
//                    UITabBar.appearance().standardAppearance = tabBarAppearance
//                    UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
////                    tabBarAppearance.backgroundColor = .clear
//                }

        let tabBarController = UITabBarController()

        // MARK: - Set tab colors
//        делает фон прозрачным, а кнопки видимимы и
        tabBarController.tabBar.barStyle = .black
//       tabBarController.tabBar.barTintColor = .clear
//        tabBarController.tabBar.tintColor = .orange

        let firstViewController = FirstViewController()
        let firstNavigationController = UINavigationController(rootViewController: firstViewController)
        firstNavigationController.view.tintColor = .lightGray
        firstViewController.tabBarItem = UITabBarItem(title: "first", image: .actions, tag: 0)


        let secondViewController = SecondViewController()
        //        let secondNavigationController = UINavigationController(rootViewController: secondViewController)
        //        secondViewController.view.backgroundColor = .blue
        secondViewController.tabBarItem = UITabBarItem(title: "second", image: .remove, tag: 1)

        let thirdViewController = ThirdViewController()
        //        thirdViewController.view.backgroundColor = .red
        thirdViewController.tabBarItem = UITabBarItem(title: "third", image: .checkmark, tag: 2)

        let fourViewController = FourViewController()
        //        fourViewController.view.backgroundColor = .green
        fourViewController.tabBarItem = UITabBarItem(title: "four", image: .strokedCheckmark, tag: 3)

        let fiveViewController = FiveViewController()
        let fiveNavigationController = UINavigationController(rootViewController: fiveViewController)
        fiveNavigationController.view.tintColor = .lightGray
        //        fiveViewController.view.backgroundColor = .systemIndigo
        fiveViewController.tabBarItem = UITabBarItem(title: "five", image: .actions, tag: 4)

        //        let sixViewController = UIViewController()
        //        sixViewController.view.backgroundColor = .systemIndigo
        //        sixViewController.tabBarItem = UITabBarItem(title: "third", image: .add, tag: 5)



        tabBarController.setViewControllers([
            firstNavigationController,
            
            secondViewController,
            thirdViewController,
            fourViewController,
//    в 5 табе вызываем навигэйшн контролер
            fiveNavigationController], animated: true)

        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()


        return true

    }

}

