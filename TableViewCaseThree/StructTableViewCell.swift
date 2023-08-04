//
//  StructTableViewCell.swift
//  TableViewCaseThree
//
//  Created by 정경우 on 2023/08/03.
//

import UIKit

class StructTableViewCell: UITableViewCell {
    
    
    @IBOutlet var buttonCheck: UIButton!
    @IBOutlet var buttonStar: UIButton!
    @IBOutlet var nameLabel: UILabel!
    
    
    
    func buttonchanged(a:Shopping) {
        
        nameLabel.text = a.name
        
        
        a.one == false ? buttonCheck.setImage(UIImage(systemName: "checkmark.square"), for: .normal)  : buttonCheck.setImage(UIImage(systemName: "checkmark.square.fill"), for: .normal)
        
        a.two == false ? buttonStar.setImage(UIImage(systemName: "star"), for: .normal)  : buttonStar.setImage(UIImage(systemName: "star.fill"), for: .normal)
        
        
    }
    
    
    
}
