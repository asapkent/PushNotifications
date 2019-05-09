//
//  ViewController.swift
//  Notifications
//
//  Created by Alex Jeffers on 10/17/18.
//  Copyright © 2018 Jeff. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
       let content = UNMutableNotificationContent()
        content.title = "Hello"
        content.body = "If you are viewing this my notifications are working!"
        content.sound = UNNotificationSound.default
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        let request = UNNotificationRequest(identifier: "testIdentfier", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        
    }


}

