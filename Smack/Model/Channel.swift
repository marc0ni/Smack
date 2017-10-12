//
//  Channel.swift
//  Smack
//
//  Created by Mark Lindamood on 10/12/17.
//  Copyright © 2017 udemy. All rights reserved.
//

import Foundation

struct  Channel: Decodable {
    public private(set) var _id: String!
    public private(set) var name: String!
    public private(set) var description: String!
    public private(set) var __v: Int?
}
