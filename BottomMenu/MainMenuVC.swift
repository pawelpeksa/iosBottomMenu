//
//  MainMenuVC.swift
//  BottomMenu
//
//  Created by Paweł on 27/01/2019.
//  Copyright © 2019 Paweł. All rights reserved.
//

import UIKit

class MainMenuVC: UIViewController {

    weak var delegate:MainMenuDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func menu1Clicked(_ sender: Any) {
        delegate?.buttonWasClicked(buttonClicked: .menu1)
    }
    
    @IBAction func menu2Clicked(_ sender: Any) {
        delegate?.buttonWasClicked(buttonClicked: .menu2)
    }
    
    @IBAction func menu3Clicked(_ sender: Any) {
        delegate?.buttonWasClicked(buttonClicked: .menu3)
    }
    
}

protocol MainMenuDelegate: AnyObject {
    func buttonWasClicked(buttonClicked:mainMenuButtonEnum)
}

enum mainMenuButtonEnum:Int {
    case menu1 = 0
    case menu2
    case menu3
}


