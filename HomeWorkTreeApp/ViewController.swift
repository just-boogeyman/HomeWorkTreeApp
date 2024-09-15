//
//  ViewController.swift
//  HomeWorkTreeApp
//
//  Created by Ярослав Кочкин on 11.09.2024.
//

import UIKit

class ViewController: UIViewController {
	
	let person = Person()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		print(person.fullName)
	}
}

