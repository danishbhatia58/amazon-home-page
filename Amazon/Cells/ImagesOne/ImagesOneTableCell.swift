//
//  ImagesOneTableCell.swift
//  Amazon
//
//  Created by Danish on 10/08/20.
//  Copyright © 2020 Danish. All rights reserved.
//

import UIKit

class ImagesOneTableCell: UITableViewCell {

    @IBOutlet weak var myCollectionView: UICollectionView!
    
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        
        // Initialization code
    }
    
    
    static func createCell() -> UITableViewCell {
        
        let cell = Bundle.main.loadNibNamed(Storyboard.NibNames.ImagesOneTableCell, owner: self, options: nil)?.last
        
        return cell as! ImagesOneTableCell
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        
        super.setSelected(selected, animated: animated)
    }
    
    
    
    
    //MARK: Collection view datasource and Delegate
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 10
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: UICollectionViewCell = myCollectionView.dequeueReusableCell(withReuseIdentifier: Storyboard.Identifiers.imagesOneCollectionCellId, for: indexPath )
        
        
        return cell
    }
}
