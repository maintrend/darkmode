//
//  MainTabBarContoller.swift
//  DarkMode
//
//  Created by talgat on 6/28/21.
//

import UIKit

class MainTabBarController: UITabBarController {
//      MainTabBarController: UITabBarController
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateInitialViewController() as? StartViewController
        
        
        viewControllers = [
            generateNavigationController(with: viewController!, title: "Photos", image: #imageLiteral(resourceName: "Regular-M")),
            generateNavigationController(with: FavouriteViewController(), title: "Favourite", image: #imageLiteral(resourceName: "heart"))
        ]
    }
    
        func generateNavigationController(with rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
            let navController = UINavigationController(rootViewController: rootViewController)
//            navController.navigationBar.shadowImage = UIImage()
            navController.tabBarItem.title = title
            navController.tabBarItem.image = image
            return navController
        }
    

}
