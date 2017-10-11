//
//  ProfileVC.swift
//  Smack
//
//  Created by Mark Lindamood on 10/10/17.
//  Copyright © 2017 udemy. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {
    
    //Outlets
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var bgView: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Show user's avatar (profileImg = avatar)
        // Show user's name (userName text to label)
        // Show user's email (user email text to label)
    }
    
    @IBAction func closeModalPressed(_ sender: Any) {
        //Dismiss modal to ChannelVC
        //Resume Lesson 80 @ 14:49
    }
    

    @IBAction func logoutPressed(_ sender: Any) {
    
    }
    
}
