//
//  TestTabBarViewController.swift
//  SplitTheAdventure
//
//  Created by Jesus Jaime Cano Terrazas on 01/09/21.
//

import UIKit

class TestTabBarViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.createTabBarController()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func createTabBarController() {
           let tabBarCnt = UITabBarController()
           tabBarCnt.tabBar.tintColor = UIColor.red
            tabBarCnt.tabBar.backgroundColor = .red
           
        let firstVc = UIViewController()
        firstVc.title = "First"
        let secondVc = UIViewController()
        secondVc.title = "Second"
        tabBarCnt.viewControllers = [firstVc, secondVc]
        
        self.view.addSubview(tabBarCnt.view)
       }

}
