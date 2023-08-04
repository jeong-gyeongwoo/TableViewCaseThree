//
//  StructTableViewController.swift
//  TableViewCaseThree
//
//  Created by 정경우 on 2023/08/03.
//

import UIKit

struct Shopping {
    var name: String
    var one: Bool
    var two: Bool
}

class StructTableViewController: UITableViewController {
    
    
    var shoppingList = [
        Shopping(name: "1번", one: false, two: false),
        Shopping(name: "2번", one: false, two: false),
        Shopping(name: "3번", one: false, two: false),
        Shopping(name: "4번", one: false, two: false),
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoppingList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "StructTableViewCell") as! StructTableViewCell
        //print(indexPath.row)
        let row = shoppingList[indexPath.row]
        
        cell.buttonCheck.tag = indexPath.row
        cell.buttonStar.tag = indexPath.row
        
        cell.buttonchanged(a: row)
        cell.buttonCheck.addTarget(self, action: #selector(checkButtonClicked), for: .touchUpInside)
        cell.buttonStar.addTarget(self, action: #selector(starButtonClicked), for: .touchUpInside)
        
        return cell
    }
    
    @objc
    func checkButtonClicked(_ sender: UIButton) {
        //print(sender.tag)
        shoppingList[sender.tag].one.toggle()
        tableView.reloadData()
    }
    
    @objc
    func starButtonClicked(_ sender: UIButton) {
        //print(sender.tag)
        shoppingList[sender.tag].two.toggle()
        tableView.reloadData()
    }
    
    
}
