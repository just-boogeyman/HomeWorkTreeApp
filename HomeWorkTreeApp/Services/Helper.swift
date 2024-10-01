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
	
	func addUsers(_ users: [User]) {
		self.users.append(contentsOf: users)
	}
	
	func getUsers() -> [User] {
		users
	}
	
	func randomUser() -> User { // думаю лучше у хелпера спрашивать рандомгого юзера чем прописывать во вью контроллере
		users.randomElement()
		?? User(
			login: "312",
			password: "321",
			person: Person(
				name: "Секретик",
				surName: "Секретный")
		)
	}
}

