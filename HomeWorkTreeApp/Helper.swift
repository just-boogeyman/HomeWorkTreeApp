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
	
	func addUsers(_ persons: [User]) {
		users += persons // не знаю так правильно
//		persons.forEach({users.append($0)}) или через append вернее и так и так правильно думаю
	}
	
	func getUsers() -> [User] {
		users
	}
}

