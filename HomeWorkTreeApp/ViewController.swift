//
//  ViewController.swift
//  HomeWorkTreeApp
//
//  Created by Ярослав Кочкин on 11.09.2024.
//

import UIKit

class ViewController: UIViewController {
	
	private let helper = Helper()
	private let userRepository = UserRepository()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .cyan
		view.alpha = 0.9
		getInfoPeoples()
	}
	
	private func getInfoPeoples() {
		userRepository.getUsers().forEach({print($0.person.fullName)})
	}
}

