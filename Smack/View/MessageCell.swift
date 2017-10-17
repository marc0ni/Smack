//
//  MessageCell.swift
//  Smack
//
//  Created by Mark Lindamood on 10/15/17.
//  Copyright © 2017 udemy. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {
    @IBOutlet weak var userImg: CircleImage!
    @IBOutlet weak var userNameLbl: UILabel!
    @IBOutlet weak var timeStampLbl: UILabel!
    @IBOutlet weak var messageBodyLbl: UILabel!
    
    //Outlets

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    func configureCell(message: Message) {
        messageBodyLbl.text = message.message
        userNameLbl.text = message.userName
        userImg.image = UIImage(named: message.userAvatar)
        userImg.backgroundColor = UserDataService.instance.returnUIColor(components: message.userAvatarColor)
        self.sizeToFit()
        self.layoutIfNeeded()
        
        guard var isoDate = message.timeStamp else { return }
        let start = isoDate.index(isoDate.startIndex, offsetBy: 0)
        let end = isoDate.index(isoDate.endIndex, offsetBy: -5)
        isoDate = String(isoDate[start..<end])
        //isoDate = isoDate.substring(to: end)
        
        let isoFormatter = ISO8601DateFormatter()
        let chatDate = isoFormatter.date(from: isoDate.appending("Z"))
        let newFormatter = DateFormatter()
        newFormatter.dateFormat = "MMM d, h:mm a"
        
        if let finalDate = chatDate {
            let finalDate = newFormatter.string(from: finalDate)
            timeStampLbl.text = finalDate
        }
        
    }
    
    /*func isoDateConvert(_ from: Int) -> String {
        
        
        let start = index(startIndex, offsetBy: from)
        return String(self[start ..< endIndex])
    }*/
    
    
}
