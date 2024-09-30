//
//  Person.swift
//  HomeWorkTreeApp
//
//  Created by Ярослав Кочкин on 15.09.2024.
//

import Foundation


struct User {
	
	let login: String
	let password: String
	let person: Person
}

struct Person {
	
	let name: String
	let surName: String
	
	var fullName: String {
		"\(name) \(surName)"
	}
}
