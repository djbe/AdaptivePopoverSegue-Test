//
//  ViewController.swift
//  Test
//
//  Created by David Jennes on 03/05/16.
//  Copyright © 2016. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {
	var wrapInNavigationController: Bool = true

	override func viewDidLoad() {
		NSLog("========================")
	}

	deinit {
		NSLog("Deinit main view controller")
	}

	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		if let popover = segue.destinationViewController.popoverPresentationController {
			popover.delegate = self
		}

		if let identifier = segue.identifier where identifier.hasPrefix("no wrap in navigation controller") {
			wrapInNavigationController = false
		} else {
			wrapInNavigationController = true
		}

		NSLog("--- Showing details ---")
	}

	func presentationController(controller: UIPresentationController, viewControllerForAdaptivePresentationStyle style: UIModalPresentationStyle) -> UIViewController? {
		if (wrapInNavigationController) {
			return NavigationController(rootViewController: controller.presentedViewController)
		} else {
			return controller.presentedViewController
		}
	}
}

class NavigationController: UINavigationController {
	override func viewDidLoad() {
		super.viewDidLoad()
		NSLog("Loaded navigation controller (%p)", self)
	}

	deinit {
		NSLog("Deinit navigation controller (%p)", self)
	}
}

class DetailsViewController: UIViewController {
	override func viewDidLoad() {
		super.viewDidLoad()
		NSLog("Loaded details view controller (%p)", self)
	}

	@IBAction func dismiss(button: UIButton) {
		dismissViewControllerAnimated(true, completion: nil)
	}

	deinit {
		NSLog("Deinit details view controller (%p)", self)
	}
}
