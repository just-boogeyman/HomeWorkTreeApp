//
//  Helper.swift
//  HomeWorkTreeApp
//
//  Created by Ярослав Кочкин on 15.09.2024.
//

import Foundation

class Helper {
	private var users: [User] = []
	var userReoisitory = UserRepository()
	
	func addUser(_ user: User) {
		users.append(user)
	}
	
	func addUsers(_ users: [User]) {
		self.users.append(contentsOf: users)
	}
	
	func getUsers() -> [User] {
		users
	}
}

