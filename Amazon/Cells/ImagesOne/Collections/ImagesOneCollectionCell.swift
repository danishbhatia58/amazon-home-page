//
//  ImagesOneCollectionCell.swift
//  Amazon
//
//  Created by Danish on 10/08/20.
//  Copyright © 2020 Danish. All rights reserved.
//

import UIKit

class ImagesOneCollectionCell: UICollectionViewCell {

    override func awakeFromNib() {
        
        super.awakeFromNib()
        
        // Initialization code
    }
    
    
    static func createCell() -> UICollectionViewCell {
        
        let cell = Bundle.main.loadNibNamed(Storyboard.NibNames.ImagesOneCollecionCell, owner: self, options: nil)?.last
        
        return cell as! ImagesOneCollectionCell
    }
}
