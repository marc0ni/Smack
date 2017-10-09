//
//  ChatVC.swift
//  Smack
//
//  Created by Mark Lindamood on 10/5/17.
//  Copyright © 2017 udemy. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
    
    //Outlets    
    @IBOutlet weak var menuBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
    }

}
