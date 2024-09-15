//
//  Person.swift
//  HomeWorkTreeApp
//
//  Created by Ярослав Кочкин on 15.09.2024.
//

import Foundation


class Person {
	
	private let name: String
	private let surName: String
	
	var fullName: String {
		"\(name) \(surName)"
	}
	
	init(name: String, surName: String) {
		self.name = name
		self.surName = surName
	}
}
