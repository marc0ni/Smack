//
//  MessageService.swift
//  Smack
//
//  Created by Mark Lindamood on 10/12/17.
//  Copyright © 2017 udemy. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class MessageService {
 
    
    static let instance = MessageService()

    
//Variables
    var channels = [Channel]()
    var messages = [Message]()
    var selectedChannel: Channel?

//Channel Methods
    func findAllChannel(completion: @escaping CompletionHandler) {
        Alamofire.request(URL_GET_CHANNELS, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: BEARER_HEADER).responseJSON { (response) in
            
            if response.result.error == nil {
                guard let data = response.data else { return }
                
                do {
                    self.channels = try JSONDecoder().decode([Channel].self, from: data)
                } catch let error {
                    debugPrint(error as Any)
                }
                NotificationCenter.default.post(name: NOTIF_CHANNELS_LOADED, object:nil)
                completion(true)

                //Commented-out section is important to know; replaced by SwiftyJSON block above
                /*if let json = JSON(data: data).array {
                    for item in json {
                        let name = item["name"].stringValue
                        let channelDescription = item["description"].stringValue
                        let id = item["_id"].stringValue
                        let channel = Channel(channelTitle: name, channelDescription: channelDescription, id: id)
                        self.channels.append(channel)
                    }
                    completion(true)
                }*/
            } else {
                completion(false)
                debugPrint(response.result.error as Any)
            }
        }
    }
    
    func clearChannels() {
        channels.removeAll()
    }
    
    
//Message Methods
    func findAllMessagesForChannel(channelId: String, completion: @escaping CompletionHandler){
        Alamofire.request("\(URL_GET_MESSAGES)\(channelId))", method: .get, parameters: nil, encoding: JSONEncoding.default, headers: BEARER_HEADER).responseJSON { (response) in
            
            if response.result.error == nil {
                self.clearMessages()
                guard let data = response.data else { return }
                
                do {
                    self.messages = try JSONDecoder().decode([Message].self, from: data)
                } catch let error {
                    debugPrint(error as Any)
                }
                debugPrint(self.messages)
                completion(true)
                
                
                /*if let json = JSON(data: data).array {
                    for item in json {
                        let messageBody = item["messageBody"].stringValue
                        let channelId = item["channelId"].stringValue
                        let id = item["_id"].stringValue
                        let userName = item["userName"].stringValue
                        let userAvatar = item["userAvatar"].stringValue
                        let userAvatarColor = item["userAvatarColor"].stringValue
                        let timeStamp = item["timeStamp"].stringValue
                        let __v = item["__v"].intValue
                            
                        let message = Message(message: messageBody, userName: userName, channelID: channelId, userAvatar: userAvatar, userAvatarColor: userAvatarColor, id: id, __v: __v, timeStamp: timeStamp)
                        self.messages.append(message)
                    }
                    debugPrint(self.messages)
                    completion(true)
                } else {
                    debugPrint(response.result.error as Any)
                    completion(false)
                }*/
            }
        }
    }
    
    func clearMessages() {
        messages.removeAll()
    }
    
}
