//
//  ChannelVC.swift
//  Smack
//
//  Created by Mark Lindamood on 10/5/17.
//  Copyright © 2017 udemy. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

}
