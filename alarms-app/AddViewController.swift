//
//  AddViewController.swift
//  alarms-app
//
//  Created by Sumu Pitchayan on 11/13/19.
//  Copyright © 2019 Sumu Pitchayan. All rights reserved.
//

import Foundation
import UIKit

class AddViewController: UIViewController {
    
    @IBOutlet weak var timePicker: UIDatePicker!
    
    let defaults = UserDefaults.standard
    var alarms = [TimeInterval]()
    
    override func viewDidLoad() {
        if let savedAlarms = defaults.array(forKey: "alarms") as? [TimeInterval] {
            alarms = savedAlarms
        }
    }
    
    @IBAction func addButtonPressed(_ sender: Any) {
        print(timePicker.date.description)
//        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
