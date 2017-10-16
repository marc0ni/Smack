//
//  Message.swift
//  Smack
//
//  Created by Mark Lindamood on 10/14/17.
//  Copyright © 2017 udemy. All rights reserved.
//

import Foundation

struct Message: Decodable {
    public private(set) var message: String!
    public private(set) var userName: String!
    public private(set) var channelID: String!
    public private(set) var userAvatar: String!
    public private(set) var userAvatarColor: String!
    public private(set) var id: String!
    public private(set) var timeStamp: String!
}
