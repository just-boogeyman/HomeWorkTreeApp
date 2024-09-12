//
//  ViewController.swift
//  HomeWorkTreeApp
//
//  Created by Ярослав Кочкин on 11.09.2024.
//

import UIKit

class ViewController: UIViewController {
	
	private let name = "Ярослав"
	private let surName = "Кочкин"
	var fullName: String {
		"\(name) \(surName)"
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		print("Меня зовут \(name), я создал свое первое приложение")
		print(fullName)
	}
}

