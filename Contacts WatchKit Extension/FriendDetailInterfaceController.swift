//
//  FriendDetailInterfaceController.swift
//  Contacts WatchKit Extension
//
//  Created by Thanh Nguyen on 12/11/17.
//  Copyright © 2017 Thanh Nguyen. All rights reserved.
//

import WatchKit
import Foundation

class FriendDetailInterfaceController: WKInterfaceController {

    @IBOutlet private var avatarImage: WKInterfaceImage!
    @IBOutlet private var fullNameLabel: WKInterfaceLabel!
    @IBOutlet private var phoneNumber: WKInterfaceLabel!
    @IBOutlet private var descriptionLabel: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        guard let friend = context as? Friend else {
            return
        }
        avatarImage.setImageNamed(friend.avatar)
        fullNameLabel.setText(friend.fullName)
        phoneNumber.setText(friend.phoneNumber)
        descriptionLabel.setText(friend.description)
    }

}
