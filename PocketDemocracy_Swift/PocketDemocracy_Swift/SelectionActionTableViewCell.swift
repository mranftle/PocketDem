//
//  SelectionActionTableViewCell.swift
//  PocketDemocracy_Swift
//
//  Created by Glizela Taino on 11/17/17.
//  Copyright © 2017 Zach Polsky. All rights reserved.
//

import UIKit

class SelectionActionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var actionTitle: UILabel!
    @IBOutlet weak var checkButton: CheckButton!
    var added = false
    var action: Action!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func toggleButton(_ sender: UIButton) {
        
        let result = GlobalVars.currentUser?.actions.contains(action)
        if result! {
            let index = GlobalVars.currentUser?.actions.index(of: self.action)
            GlobalVars.currentUser?.actions.remove(at: index!)
        } else {
            GlobalVars.currentUser?.actions.append(action)
        }
        print("actions = \(String(describing: GlobalVars.currentUser?.actions))")
        
        if added == false{
            checkButton.setImage(UIImage(named: "check.png"), for: .normal)
            added = true
            
        }else{
            checkButton.setImage(UIImage(named: "uncheck.png"), for: .normal)
            added = false
        
    }
    
    
}
}
