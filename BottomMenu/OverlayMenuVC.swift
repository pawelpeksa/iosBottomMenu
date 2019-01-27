//
//  OverlayMenuVC.swift
//  BottomMenu
//
//  Created by Paweł on 27/01/2019.
//  Copyright © 2019 Paweł. All rights reserved.
//

import UIKit

class OverlayMenuVC: UIViewController, UICollectionViewDataSource {
    
    var delegate:OverlayMenuDelegate?
    
    @IBOutlet weak var menus: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menus.dataSource = self
        menus.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "reuseID")
    }
    
    @IBAction func backButtonClicked(_ sender: Any) {
        delegate?.buttonWasClicked(buttonClicked: .back)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "reuseID", for: indexPath)
        var frame = cell.frame
        frame.size = CGSize(width: 30, height: 40)
        cell.frame = frame
        cell.backgroundColor = UIColor.cyan
        return cell
    }
    
}

protocol OverlayMenuDelegate: AnyObject {
    func buttonWasClicked(buttonClicked:overlayMenuButtonEnum)
}

enum overlayMenuButtonEnum:Int {
    case back = 0
}
