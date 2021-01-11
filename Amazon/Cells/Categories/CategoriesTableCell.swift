//
//  CategoriesTableCell.swift
//  Amazon
//
//  Created by Danish on 07/08/20.
//  Copyright © 2020 Danish. All rights reserved.
//

import UIKit


class CategoriesTableCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate  {
   
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    static func createCell() -> UITableViewCell {
        
        let cell = Bundle.main.loadNibNamed("CategoriesTableCell", owner: self, options: nil)?.last
        
        return cell as! CategoriesTableCell
    }
    
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        
       
        let nibName = UINib(nibName: "CategoriesCollectionCell", bundle:nil)
        
        myCollectionView.register(nibName, forCellWithReuseIdentifier: "categoriesCollectionCellId" )
        
        
        self.myCollectionView.dataSource = self
        
        self.myCollectionView.delegate = self
    }
    
    
    
    //MARK: Collection view datasource and Delegate
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 10
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: UICollectionViewCell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "categoriesCollectionCellId", for: indexPath )
        
        
        return cell
    }
    
    
}
