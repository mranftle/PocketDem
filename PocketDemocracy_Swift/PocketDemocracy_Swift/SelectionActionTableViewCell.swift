//
//  SelectionActionTableViewCell.swift
//  PocketDemocracy_Swift
//
//  Created by Glizela Taino on 11/17/17.
//  Copyright © 2017 Zach Polsky. All rights reserved.
//

import UIKit

class SelectionActionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var checkButton: CheckButton!
    var added = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func toggleButton(_ sender: UIButton) {
        if added == false{
            checkButton.setImage(UIImage(named: "check.png"), for: .normal)
            added = true
        }else{
            checkButton.setImage(UIImage(named: "uncheck.png"), for: .normal)
            added = true
        }
    }
    
    
}
