//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Mark Lindamood on 10/6/17.
//  Copyright © 2017 udemy. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    

}
