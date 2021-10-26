//
//  DetailSplitExpensesViewController.swift
//  SplitTheAdventure
//
//  Created by Jesus Jaime Cano Terrazas on 31/08/21.
//

import UIKit

class DetailSplitExpensesViewController: UITabBarController {
    
    var splitModelReceived: SplitModel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("Data From Another component")
        
        if let name = self.splitModelReceived?.name {
            print(name)
        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
