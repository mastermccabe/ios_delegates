//
//  AddItemTableviewControlDelegate.swift
//  MadLibs
//
//  Created by McCabe Tonna on 11/8/17.
//  Copyright © 2017 Wambl, LLC. All rights reserved.
//

import Foundation
protocol AddItemTableViewControlDelegate: class {
    
    func itemSaved(by controller: AddWordsTableViewController,  adj: String,  v1: String,  v2: String,  noun: String)
        
    
}
