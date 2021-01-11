//
//  HomeViewController.swift
//  Amazon
//
//  Created by Danish on 06/08/20.
//  Copyright © 2020 Danish. All rights reserved.
//

import UIKit

import  SideMenu

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    let tableCells = ["SearchBarTableCell", "LocationTableCell", "CategoriesTableCell", Storyboard.NibNames.ImagesOneTableCell]
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        let buttonLeft1 = UIBarButtonItem(image: UIImage(named: "side_menu"), style: .plain, target: self, action: #selector(openSideMenu))
        
        
        let buttonRight1 = UIBarButtonItem(image: UIImage(named: "cart"), style: .plain, target: self, action: #selector(openSideMenu))
        
        let buttonRight2 = UIBarButtonItem(image: UIImage(named: "microphone"), style: .plain, target: self, action: #selector(openSideMenu))
        
        
        buttonLeft1.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        buttonRight1.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        buttonRight2.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        
        self.navigationItem.leftBarButtonItems  = [ buttonLeft1 ]
        
        self.navigationItem.rightBarButtonItems = [ buttonRight1, buttonRight2 ]
        
        self.navigationItem.titleView = getAmazonLogo()
        
    }
    
    
    @objc func openSideMenu(){
    
        let menuLeftNavigationController = UISideMenuNavigationController(rootViewController: SideMenuViewController())
    
        SideMenuManager.default.menuAnimationBackgroundColor = #colorLiteral(red: 0.4589041096, green: 0.8424657534, blue: 0.8493150685, alpha: 1)
        
        
        SideMenuManager.default.menuLeftNavigationController = menuLeftNavigationController
        
        SideMenuManager.default.menuAddPanGestureToPresent(toView: self.navigationController!.navigationBar)
        
        
        SideMenuManager.default.menuAddScreenEdgePanGesturesToPresent(toView: self.navigationController!.view)
   
        
        
        // (Optional) Prevent status bar area from turning black when menu appears:
       
        SideMenuManager.default.menuFadeStatusBar = false
        
        present(SideMenuManager.default.menuLeftNavigationController!, animated: true, completion: nil)
    }
    
    
    func getAmazonLogo() -> UIView {
        
        let titleImageView = UIImageView(image: UIImage(named: "amazon_logo"))
        
        
        return titleImageView
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if tableCells.count > 0{
            
            return tableCells.count
        }
        else{
            return 0
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        var tableCell: UITableViewCell!
        
        switch tableCells[indexPath.row] {
        
            case "SearchBarTableCell":
            
                var cell = tableView.dequeueReusableCell(withIdentifier: "searchBarTableCellId" )
            
                if cell == nil {
                
                    cell = SearchBarTableCell.createCell()
                }
            
                 tableCell = cell
            
            
            case "LocationTableCell":
            
                var cell = tableView.dequeueReusableCell(withIdentifier: "locationTableCellId" )
        
                if cell == nil {
            
                    cell = LocationTableCell.createCell()
                }
        
                tableCell = cell
            
            
            case "CategoriesTableCell":
            
                var cell = tableView.dequeueReusableCell(withIdentifier: "categoriesTableCellId" )
            
                if cell == nil {
                
                    cell = CategoriesTableCell.createCell()
                }
            
                tableCell = cell
            
            
            case Storyboard.NibNames.ImagesOneTableCell:
            
                var cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.Identifiers.imagesOneTableCellId)
            
                if cell == nil{
                    
                    cell = ImagesOneTableCell.createCell()
                }
            
                tableCell = cell
            
            
            default:
            
                print("")
            }
        
        return tableCell
        
    }
    
}
