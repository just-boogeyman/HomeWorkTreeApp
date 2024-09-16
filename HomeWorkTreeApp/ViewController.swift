//
//  ViewController.swift
//  HomeWorkTreeApp
//
//  Created by Ярослав Кочкин on 11.09.2024.
//

import UIKit

class ViewController: UIViewController {
	
	private let helper = Helper()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		getInfoPeoples()
	}
	
	private func getInfoPeoples() {
		helper.addUser(
			User(
				login: "kochkin",
				password: "123",
				person: Person(
					name: "Ярослав",
					surName: "Кочкин")))
		helper.addUser(
			User(
				login: "ivanov",
				password: "321",
				person: Person(
					name: "Иван",
					surName: "Иванов")))
		for user in helper.getUsers() {
			print("\(user.person.fullName)")
		}
	}
}

