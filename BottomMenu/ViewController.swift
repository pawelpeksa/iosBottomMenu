//
//  ViewController.swift
//  BottomMenu
//
//  Created by Paweł on 27/01/2019.
//  Copyright © 2019 Paweł. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var mainMenuVC:MainMenuVC!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupMenus()
    }
    
    func setupMenus() {
        loadMainMenu()
    }
    
    func loadMainMenu() {
        if let menuVC = Bundle.main.loadNibNamed("MainMenuVC", owner: nil, options: nil)?.first as? MainMenuVC {
           
            print("lala")
        }
    }


}

