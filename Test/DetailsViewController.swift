//
//  DetailsViewController.swift
//  Test
//
//  Created by David Jennes on 13/09/16.
//  Copyright © 2016. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController, AutoWrapController {
	@IBInspectable var shouldWrap: Bool = false

	override func viewDidLoad() {
		super.viewDidLoad()
		NSLog("Loaded details view controller (%p)", self)
	}

	@IBAction func dismiss(_ button: UIButton) {
		self.dismiss(animated: true, completion: nil)
	}

	deinit {
		NSLog("Deinit details view controller (%p)", self)
	}
}
