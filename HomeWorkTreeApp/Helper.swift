//
//  Helper.swift
//  HomeWorkTreeApp
//
//  Created by Ярослав Кочкин on 15.09.2024.
//

import Foundation

class Helper {
	private var persons: [Person] = []
	
	func addPerson(_ person: Person) {
		persons.append(person)
	}
	
	func getPersons() -> [Person] {
		persons
	}
}

