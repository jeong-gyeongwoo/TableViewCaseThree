//
//  ThirdTableViewController.swift
//  TableViewCaseThree
//
//  Created by 정경우 on 2023/08/02.
//

import UIKit




class ThirdTableViewController: UITableViewController {
    
    

    @IBOutlet var addTextField: UITextField!
    
    @IBOutlet var addButton: UIButton!
    
    struct Todo {
        var name: String
        var star: Bool
    }
    var todos: [Todo] = [Todo(name: "그립톡 구매", star: false),Todo(name: "사이다 구매", star: false)]
    
   // var list = ["그립톡 구매", "사이다 구매", "수건", "양말"]
    // var stars: [Bool] = Array(repeating: false, count: 4)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 80
        addTextField.text = "무엇을 구매하실 것인가요?"
        addTextField.textColor = .white
        addTextField.backgroundColor = .lightGray
        // addTextField.addTarget(self, action: #selector(addlist), for: .editingDidEnd)
    }
    
//    @objc
//    func addlist() {
//        list.append(addTextField.text!)
//        addTextField.text = ""
//    }
  
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomSettingCell") as! ThirdTableViewCell
//        let item = todos[indexPath.row]
        cell.middleTextLabel.text = todos[indexPath.row].name
        
        cell.starButton.addTarget(self, action: #selector(starButtonClicked), for: .touchUpInside)
        
        // cell.buttonChange(a: star)
        cell.starButton.tag = indexPath.row
        //print("starts", stars)
        if todos[indexPath.row].star == true {
            cell.starButton.setImage(UIImage(systemName: "star.fill"), for: .normal)
        } else {
            cell.starButton.setImage(UIImage(systemName: "star"), for: .normal)
        }
                
        
        
        
//        if stars[indexPath.row] == true {
//            cell.starButton.setImage(UIImage(systemName: "star.fill"), for: .normal)
//        } else {
//            cell.starButton.setImage(UIImage(systemName: "star"), for: .normal)
//        }
        
        return cell
    }
    
    @objc
    func starButtonClicked (_ sender: UIButton) {
        //print(sender.tag)
        todos[sender.tag].star.toggle()
        tableView.reloadData()
        
    }
    
    
    
    
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            todos.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    
    
    @IBAction func keyEdit(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
        
    }
    
    @IBAction func addTextButton(_ sender: UIButton) {
        todos.append(Todo(name: "\(addTextField.text!)", star: false))
        addTextField.text = ""
        //print(list)
        tableView.reloadData()
    }
    
}
