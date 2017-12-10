//
//  FriendsInterfaceController.swift
//  Contacts WatchKit Extension
//
//  Created by Thanh Nguyen on 12/10/17.
//  Copyright © 2017 Thanh Nguyen. All rights reserved.
//

import WatchKit
import Foundation


class FriendsInterfaceController: WKInterfaceController {

    @IBOutlet var friendsTable: WKInterfaceTable!
    var friends = [Friend]()
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        setDataForTable()
    }

    private func setDataForTable() {
        friends = fakeFriends()
        friendsTable.setNumberOfRows(friends.count, withRowType: "FriendRow")
        for index in 0..<friendsTable.numberOfRows {
            guard let controller = friendsTable.rowController(at: index) as? FriendRowController else {
                continue
            }
            controller.updateUI(data: friends[index])
        }
    }
    
    private func fakeFriends() -> [Friend] {
        return [
            Friend(fullName: "Gal Gadot", avatar: "1", phoneNumber: "0923874343", description: "Wonder Woman"),
            Friend(fullName: "Michael Santana", avatar: "2", phoneNumber: "0923874343", description: "Hi, I play video games. Business inquiries."),
            Friend(fullName: "鈴華ゆう子Yuko Suzuhana", avatar: "3", phoneNumber: "01248292849",
                   description: "鈴華ゆう子 Yuko Suzuhana 歌手、詩吟師範、剣詩舞、ピアノ ◆和楽器バンド(ボーカル) wagakkiband.jp ◆華風月(ピアノ&ボーカル)"),
        ]
    }
 
    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        presentController(withName: "FriendDetail", context: friends[rowIndex])
    }
    
}
