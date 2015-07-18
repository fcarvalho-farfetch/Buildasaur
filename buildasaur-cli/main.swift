//
//  main.swift
//  buildasaur-cli
//
//  Created by Honza Dvorsky on 18/07/2015.
//  Copyright © 2015 Honza Dvorsky. All rights reserved.
//

import Foundation
import BuildaKit

//setup logging
Logging.setup(alsoIntoFile: false)

//get storage manager
let storageManager = StorageManager.sharedInstance

//start all syncers
storageManager.startSyncers()

//PROFIT!
