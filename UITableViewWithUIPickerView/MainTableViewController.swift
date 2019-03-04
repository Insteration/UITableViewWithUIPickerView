//
//  MainTableViewController.swift
//  UITableViewWithUIPickerView
//
//  Created by Artem Karmaz on 3/4/19.
//  Copyright © 2019 Johansson Group. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let array = ["1", "2", "3", "4", "5"]



    override func viewDidLoad() {
        super.viewDidLoad()

 
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return array.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let picker = UIPickerView()
        picker.frame = CGRect(x: 0, y: 0, width: 320, height: 180)

        picker.delegate = self
        picker.dataSource = self

        cell.frame = CGRect(x: 0, y: 0, width: 320, height: 180)
        cell.addSubview(picker)
        print("Check")
        return cell
    }
 
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return array.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return array[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("Selected!")
    }

}
