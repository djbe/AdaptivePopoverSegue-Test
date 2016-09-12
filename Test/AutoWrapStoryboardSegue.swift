//
//  Test.swift
//  Test
//
//  Created by David Jennes on 13/09/16.
//  Copyright © 2016. All rights reserved.
//

import UIKit

protocol AutoWrapController {
	var shouldWrap: Bool { get }
}

class AutoWrapStoryboardSegue: UIStoryboardSegue {
	override init(identifier: String?, source: UIViewController, destination: UIViewController) {
		// auto wrapping behaviour
		var result = destination
		if let controller = destination as? AutoWrapController, controller.shouldWrap == true {
			result = NavigationController(rootViewController: destination)
		}

		super.init(identifier: identifier, source: source, destination: result)
	}
}
