//
//  NavigationController.swift
//  Test
//
//  Created by David Jennes on 13/09/16.
//  Copyright © 2016. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {
	override func viewDidLoad() {
		super.viewDidLoad()
		NSLog("Loaded navigation controller (%p)", self)
	}

	deinit {
		NSLog("Deinit navigation controller (%p)", self)
	}
}
