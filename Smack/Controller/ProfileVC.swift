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

        
    }
    
    @IBAction func closeModalPressed(_ sender: Any) {
    }
    @IBAction func logoutPressed(_ sender: Any) {
    }
    
}
