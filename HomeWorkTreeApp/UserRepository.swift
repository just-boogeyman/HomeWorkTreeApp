//
//  UserRepository.swift
//  HomeWorkTreeApp
//
//  Created by Ярослав Кочкин on 17.09.2024.
//

import Foundation


class UserRepository {
	
	func getUsers() -> [User] {
			[User(
				login: "kochkin",
				password: "123",
				person: Person(
					name: "Ярослав",
					surName: "Кочкин")
			),
			User(
				login: "ivanov",
				password: "321",
				person: Person(
					name: "Иван",
					surName: "Иванов"))]
	}
}
