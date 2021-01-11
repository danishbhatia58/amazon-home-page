//
//  LocationTableCell.swift
//  Amazon
//
//  Created by Danish on 07/08/20.
//  Copyright © 2020 Danish. All rights reserved.
//

import UIKit

class LocationTableCell: UITableViewCell {

    override func awakeFromNib() {
        
        super.awakeFromNib()
        
        // Initialization code
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    static func createCell()-> UITableViewCell {
        
        let nib = UINib(nibName: "LocationTableCell", bundle: nil)
        
        let cell = nib.instantiate(withOwner: self, options: nil).last as! LocationTableCell
        
        return cell
    }
}
