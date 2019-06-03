//
//  MyTableViewControlerTableViewController.swift
//  UITableViewControllerSBStaticTableUserDefaults
//
//  Created by Denis Andreev on 5/31/19.
//  Copyright © 2019 353. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var polSegment: UISegmentedControl!
    @IBOutlet weak var isPushSwitch: UISwitch!
    @IBOutlet weak var lastNameTextField: UITextField!
    
    let userDefault = UserDefaults.standard
    
    
    override func viewDidLoad() {
        
        //        if let name = userDefault.object(forKey: "name"){
        //            nameTextField.text = name as? String
        //        }
        //        if let lastName = userDefault.object(forKey: "lastName"){
        //            lastNameTextField.text = lastName as? String
        //        }
        //        if let isSwitch = userDefault.object(forKey: "switch"){
        //             isPushSwitch.isOn = isSwitch as! Bool
        //        }
        //        if let segment = userDefault.object(forKey: "sex"){
        //            polSegment.selectedSegmentIndex = segment as! Int
        //        }
        
        guard let name = userDefault.object(forKey: "name"),
            let lastName = userDefault.object(forKey: "lastName"),
            let isSwitch = userDefault.object(forKey: "switch"),
            let segment = userDefault.object(forKey: "sex")
            else {return}
        nameTextField.text = name as? String
        lastNameTextField.text = lastName as? String
        isPushSwitch.isOn = isSwitch as! Bool
        polSegment.selectedSegmentIndex = segment as! Int
    }
    
    
    
    @IBAction func safeButton(_ sender: UIButton) {
        userDefault.setValue(nameTextField.text, forKey: "name")
        userDefault.setValue(lastNameTextField.text, forKey: "lastName")
        userDefault.set(isPushSwitch.isOn, forKey: "switch")
        userDefault.set(polSegment.selectedSegmentIndex, forKey: "sex")
        print("Save")
    }
    
    
    
}
