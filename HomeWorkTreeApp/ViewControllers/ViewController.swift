//
//  ViewController.swift
//  HomeWorkTreeApp
//
//  Created by Ярослав Кочкин on 11.09.2024.
//

import UIKit

class ViewController: UIViewController {
	
	private let helper = Helper()
	private let userRepisitory = UserRepository()
	
	private let nameLable = UILabel()
	private let showNewUserButton = ShadowButton(
		textButton: "Show New User",
		color: .red
	)
	private let hideUserButton = ShadowButton(
		textButton: "Hide User",
		color: .green,
		shadow: true
	)
	private let stackView = UIStackView()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		getInfoPeoples()
		setupLable()
		setupView()
		setupStackView()
		setupLayout()
	}
	
	private func getInfoPeoples() {  // такие функции мы же в расширения не помещаем?
		helper.addUsers(userRepisitory.getUsers())
		helper.getUsers().forEach{
			print($0.person.fullName)
		}
	}
}

// MARK: - Setup View
private extension ViewController {
	func setupView() {
		view.backgroundColor = .cyan
		view.alpha = 0.9
		view.addSubview(stackView) // пока что оставим так
	}
	
	func setupLable() {
		let nameText = helper.getUsers().randomElement()?.person.name
		nameLable.text = nameText
		nameLable.font = .systemFont(
			ofSize: 25,
			weight: .bold
		)
		nameLable.textColor = .blue
		nameLable.textAlignment = .center
	}
	
	func setupStackView() {
		stackView.axis = .vertical
		stackView.distribution = .fillEqually
		stackView.alignment = .fill
		stackView.spacing = 10
		
		stackView.addArrangedSubviews(nameLable, showNewUserButton, hideUserButton)
	}
}

// MARK: - Setup Layout
extension ViewController {
	private func setupLayout() {
		stackView.translatesAutoresizingMaskIntoConstraints = false
		
		NSLayoutConstraint.activate([
			stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
			stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			stackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7),
			stackView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5)
		])
	}
}
