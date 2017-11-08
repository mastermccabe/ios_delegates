//
//  ViewController.swift
//  MadLibs
//
//  Created by McCabe Tonna on 11/8/17.
//  Copyright © 2017 Wambl, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, AddItemTableViewControlDelegate {

    @IBOutlet weak var textBox: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addItemsSegway"{
            let addItemTableViewController = segue.destination as! AddWordsTableViewController

             addItemTableViewController.delegate = self

        
        
        }
    }
    
    func itemSaved(by controller: AddWordsTableViewController, adj: String, v1: String, v2: String, noun: String){
        print(adj,v1,v2,noun)
        textBox.text = "we are having a \(adj) good time now. Later we will \(v1) and \(v2) in the \(noun)"
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

