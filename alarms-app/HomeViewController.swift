//
//  HomeViewController.swift
//  alarms-app
//
//  Created by Sumu Pitchayan on 11/13/19.
//  Copyright © 2019 Sumu Pitchayan. All rights reserved.
//

import Foundation
import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var listTableView: UITableView!
    
    let defaults = UserDefaults.standard
    var alarms = [TimeInterval]()
    
    override func viewDidLoad() {
        listTableView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        loadData()
        listTableView.reloadData()
    }
    
    @IBAction func addButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "homeToAdd", sender: self)
    }
    
    //MARK: - TableView Datasource Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alarms.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "alarmCell", for: indexPath) as! AlarmTableViewCell
        cell.timeLabel.text = "8:02"
        return cell
    }
    
    //MARK: - Loading Alarms Data
    
    func loadData() {
        if let savedAlarms = defaults.array(forKey: "alarms") as? [TimeInterval] {
            alarms = savedAlarms
        }
    }
    
}
