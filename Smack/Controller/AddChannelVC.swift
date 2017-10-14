//
//  AddChannelVC.swift
//  Smack
//
//  Created by Mark Lindamood on 10/12/17.
//  Copyright © 2017 udemy. All rights reserved.
//

import UIKit

class AddChannelVC: UIViewController {
    
//Outlets
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var chanDesc: UITextField!
    @IBOutlet weak var bgView: UIView!
    
    
//View Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    

//IBAction Methods
    @IBAction func closeModalPressed(_ sender: Any) {
         dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createChannelPressed(_ sender: Any) {
        guard let channelName = nameTxt.text, nameTxt.text != "" else { return }
        guard let chanDesc = chanDesc.text else { return }
        SocketService.instance.addChannel(name: channelName, description: chanDesc) { (success) in
            if success {
                self.dismiss(animated: true, completion: nil)
            }
        }
    }
    
    func setUpView() {
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(AddChannelVC.closeTap(_:)))
        bgView.addGestureRecognizer(closeTouch)
        
        nameTxt.attributedPlaceholder = NSAttributedString(string: "name", attributes: [NSAttributedStringKey.foregroundColor: smackPurplePlaceholder])
        chanDesc.attributedPlaceholder = NSAttributedString(string: "description", attributes: [NSAttributedStringKey.foregroundColor: smackPurplePlaceholder])
    }
    
    @objc func closeTap(_ recognizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }
}
