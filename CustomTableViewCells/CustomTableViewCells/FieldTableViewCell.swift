//
//  FieldTableViewCell.swift
//  CustomTableViewCells
//
//  Created by Wael Moharram on 6/15/20.
//  Copyright © 2020 aya fathy. All rights reserved.
//

import UIKit

class FieldTableViewCell: UITableViewCell, UITextFieldDelegate{

    static func nib() -> UINib {
    return UINib(nibName: "FieldTableViewCell", bundle: nil)
    }
    
    @IBOutlet weak var field: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        field.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        print("\(textField.text ?? "")")
        return true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
