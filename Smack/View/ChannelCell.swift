//
//  ChannelCell.swift
//  Smack
//
//  Created by Mark Lindamood on 10/13/17.
//  Copyright © 2017 udemy. All rights reserved.
//

import UIKit

class ChannelCell: UITableViewCell {
    
    //Outlets
    @IBOutlet weak var name: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected {
            self.layer.backgroundColor = UIColor(white: 1, alpha: 0.2).cgColor
        } else {
            self.layer.backgroundColor = UIColor.clear.cgColor
        }
    }
    
    func configureCell(channel: Channel) {
        let title = channel.channelTitle ?? ""
        channelName.text = "#\(title)"
        channelName.font = UIFont(name: "HelveticaNeue-Regular", size: 17)
        
        for id in MessageService.instance.unreadChannels {
            if id == channel._id {
                channelName.font = UIFont(name: "HelveticaNeue-Bold", size: 22)
            }
        }
        
        
    }

}
