//
//  PracticeTableViewController.swift
//  TableViewCaseThree
//
//  Created by 정경우 on 2023/08/02.
//

import UIKit

class PracticeTableViewController: UITableViewController {
    
    let list1 = ["공지사항","실험실","버전 정보"]
    let list2 = ["개인/보안", "알림", "채팅", "멀티프로필"]
    let list3 = ["고객센터/도움말"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // view.backgroundColor = .black
        self.navigationController?.navigationBar.tintColor = .white
        title = "설정"
        
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "전체설정"
        } else if section == 1 {
            return "개인설정"
        } else  {
            return "기타"
        }
        
    }
   
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 3
        } else if section == 1 {
            return 4
        } else  {
            return 1
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell")!
    
        if indexPath.section == 0 {
            cell.textLabel?.text = list1[indexPath.row]
        } else if indexPath.section == 1 {
            cell.textLabel?.text = list2[indexPath.row]
        } else  {
            cell.textLabel?.text = list3[indexPath.row]
        }
        
        
        
        return cell
    }
    
    
}
