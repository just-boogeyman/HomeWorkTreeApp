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
//		print(person.fullName)
		getInfoPeoples()
	}
	
	private func getInfoPeoples() {
		helper.addPerson(Person(name: "Ярослав", surName: "Кочкин"))
		helper.addPerson(Person(name: "Иван", surName: "Иванов"))
		for person in helper.getPersons() {
			print("\(person.fullName)")
		}
	}
}

