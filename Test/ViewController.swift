//
//  ViewController.swift
//  Test
//
//  Created by David Jennes on 03/05/16.
//  Copyright © 2016. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {
	override func viewDidLoad() {
		NSLog("========================")
	}

	deinit {
		NSLog("Deinit main view controller")
	}

	override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
		NSLog("--- Showing details ---")
		return true
	}

	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if let popover = segue.destination.popoverPresentationController {
			popover.delegate = self
		}
	}
}
