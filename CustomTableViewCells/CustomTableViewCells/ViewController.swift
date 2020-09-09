//
//  ViewController.swift
//  CustomTableViewCells
//
//  Created by Wael Moharram on 6/15/20.
//  Copyright © 2020 aya fathy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.register(FieldTableViewCell.nib(), forCellReuseIdentifier: "FieldTableViewCell")
        table.register(MyTableViewCell.nib(), forCellReuseIdentifier: "MyTableViewCell")
        table.delegate = self
        table.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row > 5 {
            let fieldCell = table.dequeueReusableCell(withIdentifier: "FieldTableViewCell", for: indexPath) as! FieldTableViewCell
            
            return fieldCell
        }
        
        if indexPath.row > 2 {
            let customCell = table.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as! MyTableViewCell
            customCell.configure(title: "hello Aya", image: "image_1")
            return customCell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = "hello"
        
        let mySwitch = UISwitch()
        mySwitch.addTarget(self, action: #selector(didChangeSwitch(_:)), for: .valueChanged)
        mySwitch.isOn = true
        cell.accessoryView = mySwitch
        
        return cell
    }
    
    @objc func didChangeSwitch(_ sender: UISwitch){
        
        if sender .isOn {
            print("turned on")
        }else {
            print("turned off")
            
        }
    }
}

