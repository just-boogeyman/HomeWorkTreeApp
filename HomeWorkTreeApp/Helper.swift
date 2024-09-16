//
//  Helper.swift
//  HomeWorkTreeApp
//
//  Created by Ярослав Кочкин on 15.09.2024.
//

import Foundation

class Helper {
	private var users: [User] = []
	
	func addUser(_ user: User) {
		users.append(user)
	}
	
	func getUsers() -> [User] {
		users
	}
}

