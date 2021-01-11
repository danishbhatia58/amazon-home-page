//
//  SearchBarTableCell.swift
//  Amazon
//
//  Created by Danish on 06/08/20.
//  Copyright © 2020 Danish. All rights reserved.
//

import Foundation

import UIKit

class SearchBarTableCell: UITableViewCell {
    
    @IBOutlet weak var searchTextFeild: UITextField!
    
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        
        searchTextFeild.setLeftPaddingPoints(40)
        
    }
    
    
    static func createCell()-> UITableViewCell {
    
        let nib = UINib(nibName: "SearchBarTableCell", bundle: nil)
        
        let cell = nib.instantiate(withOwner: self, options: nil).last as! SearchBarTableCell
       
        return cell 
    }
}
