//
//  FriendRowController.swift
//  Contacts WatchKit Extension
//
//  Created by Thanh Nguyen on 12/11/17.
//  Copyright © 2017 Thanh Nguyen. All rights reserved.
//

import WatchKit

class FriendRowController: NSObject {

    @IBOutlet private var fullNameLabel: WKInterfaceLabel!
    @IBOutlet private var avatarImage: WKInterfaceImage!

    func updateUI(data: Friend) {
        fullNameLabel.setText(data.fullName)
        avatarImage.setImageNamed(data.avatar)
    }
    
}
