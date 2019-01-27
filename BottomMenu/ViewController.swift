//
//  ViewController.swift
//  BottomMenu
//
//  Created by Paweł on 27/01/2019.
//  Copyright © 2019 Paweł. All rights reserved.
//

import UIKit

class ViewController: UIViewController, MainMenuDelegate, OverlayMenuDelegate {
    
    @IBOutlet weak var menuView: UIView!
    
    var mainMenuVC = MainMenuVC.init(nibName: "MainMenuVC", bundle: Bundle.main)
    var overlayMenuVC = OverlayMenuVC.init(nibName: "OverlayMenuVC", bundle: Bundle.main)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addChildrenVCs()
        self.showMainMenu()
        self.setMenusDelegates()
    }
    
    func setMenusDelegates() {
        self.mainMenuVC.delegate = self
        self.overlayMenuVC.delegate = self
    }
    
    func addChildrenVCs() {
        
        self.addChild(overlayMenuVC)
        self.overlayMenuVC.didMove(toParent: self)
        
        self.addChild(mainMenuVC)
        mainMenuVC.didMove(toParent: self)
    }
    
    func buttonWasClicked(buttonClicked: mainMenuButtonEnum) {
        switch buttonClicked {
        case .menu1:
            print("menu1")
        case .menu2:
            print("menu2")
            self.showOverlayMenu()
        case .menu3:
            print("menu3")
        
        }
    }
    
    func buttonWasClicked(buttonClicked: overlayMenuButtonEnum) {
        switch buttonClicked {
        case .back:
            self.showMainMenu()
        }
    }
    
    func showMainMenu() {
        self.removeMenuViews()
        self.menuView.addSubview(self.mainMenuVC.view)
    }
    
    func showOverlayMenu() {
        self.removeMenuViews()
        self.menuView.addSubview(self.overlayMenuVC.view)
    }
    
    func removeMenuViews() {
        let subviews = self.menuView.subviews
        
        for subview in subviews {
            subview.removeFromSuperview()
        }
    }
    

}

