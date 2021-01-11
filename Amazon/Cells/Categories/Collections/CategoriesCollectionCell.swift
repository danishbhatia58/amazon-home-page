//
//  CategoriesCollectionCell.swift
//  Amazon
//
//  Created by Danish on 07/08/20.
//  Copyright © 2020 Danish. All rights reserved.
//

import UIKit

class CategoriesCollectionCell: UICollectionViewCell {

    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var img: UIImageView!
    
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        
        // Initialization code

        name.text = "Prime"
        
    }
    
    static func createCell() -> UICollectionViewCell {
        
        let cell = Bundle.main.loadNibNamed("CategoriesCollectionCell", owner: self, options: nil)?.last
        
        return cell as! CategoriesCollectionCell
    }
    
}
