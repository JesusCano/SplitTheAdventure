//
//  SplitListViewController.swift
//  SplitTheAdventure
//
//  Created by Jesus Jaime Cano Terrazas on 31/08/21.
//

import UIKit

class SplitListViewController: UIViewController {
    
    private var splitListArray: [SplitModel] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.fillDommieArray()
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "DetailSplitExpensesViewController" {
            let tabCtrl = segue.destination as! UITabBarController
            let destination = tabCtrl.viewControllers?[0] as! DetailSplitExpensesViewController
            let destination2 = tabCtrl.viewControllers?[1] as! DetailSplitExpensesViewController
            if let splitModel = sender as? SplitModel {
                splitModel.name = "SecondController"
                destination2.splitModelReceived = splitModel
            }
            
            if let splitModel = sender as? SplitModel {
                splitModel.name = "FirstController"
                destination.splitModelReceived = splitModel
            }
        }
    }
    
    // MARK: - Private Methods
    
    private func fillDommieArray() {
        self.splitListArray.append(SplitModel(name: "Test 1", description: "Description Test 1"))
        self.splitListArray.append(SplitModel(name: "Test 2", description: "Description Test 2"))
        self.splitListArray.append(SplitModel(name: "Test 3", description: "Description Test 3"))
        self.splitListArray.append(SplitModel(name: "Test 4", description: "Description Test 4"))
    }

}

// MARK: - UITableViewDelegate, UITableViewDataSource

extension SplitListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.splitListArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SplitListViewController")!
        let item = self.splitListArray[indexPath.row]
        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = item.description
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(self.splitListArray[indexPath.row].name)
        let splitSelected = self.splitListArray[indexPath.row]
        performSegue(withIdentifier: "DetailSplitExpensesViewController", sender: splitSelected)
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            print("You're trying to delete a cell")
        }
    }
    
    func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        return "Delete this one 🗑"
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "List of split list"
    }
    
}
