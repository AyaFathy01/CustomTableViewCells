//
//  MyTableViewCell.swift
//  CustomTableViewCells
//
//  Created by Wael Moharram on 6/15/20.
//  Copyright © 2020 aya fathy. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    static func nib() -> UINib {
        return UINib(nibName: "MyTableViewCell", bundle: nil)
    }
    public func configure(title: String, image: String){
        label.text = title
        cellImage.image = UIImage(systemName: image)
        
    }
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
