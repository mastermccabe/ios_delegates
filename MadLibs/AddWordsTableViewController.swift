//
//  AddWordsTableViewController.swift
//  MadLibs
//
//  Created by McCabe Tonna on 11/8/17.
//  Copyright © 2017 Wambl, LLC. All rights reserved.
//

import UIKit

class AddWordsTableViewController: UIViewController {

    weak var delegate: AddItemTableViewControlDelegate?
    
    @IBOutlet weak var adjective: UITextField!
    @IBOutlet weak var verb1: UITextField!
    @IBOutlet weak var verb2: UITextField!
    @IBOutlet weak var noun: UITextField!
    
    var adj: String! = ""
    var v1: String! = ""
    var v2: String! = ""
    var n: String! = ""
    
    @IBAction func submitButtonPressed(_ sender: UIButton) {
        adj = adjective.text
        v1 = verb1.text
        v2 = verb2.text
        n = noun.text
      
        delegate?.itemSaved(by: self, adj: adj,  v1: v1, v2: v2, noun: n)
        print("controller to delegator")
          self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   

}
