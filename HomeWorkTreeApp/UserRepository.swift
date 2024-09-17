//
//  UserRepository.swift
//  HomeWorkTreeApp
//
//  Created by Ярослав Кочкин on 17.09.2024.
//

import Foundation


class UserRepository {
	
	func getUsers() -> [User] {
		var users: [User] = []
		users.append(
			User(
				login: "kochkin",
				password: "123",
				person: Person(
					name: "Ярослав",
					surName: "Кочкин")))
		users.append(
			User(
				login: "ivanov",
				password: "321",
				person: Person(
					name: "Иван",
					surName: "Иванов")))
		return users
	}
}
