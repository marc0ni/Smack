//
//  AvatarCell.swift
//  Smack
//
//  Created by Mark Lindamood on 10/9/17.
//  Copyright © 2017 udemy. All rights reserved.
//

import UIKit

class AvatarCell: UICollectionViewCell {
    @IBOutlet weak var avatarImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpView()
    }
    
    func setUpView () {
        self.layer.backgroundColor = UIColor.lightGray.cgColor
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
    }
    
}
