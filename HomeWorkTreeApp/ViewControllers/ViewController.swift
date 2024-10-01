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
		addAction()
		setupLayout()
	}
	
	private func getInfoPeoples() {
		helper.addUsers(userRepisitory.getUsers())
		helper.getUsers().forEach{
			print($0.person.fullName)
		}
	}
	
	@objc
	private func showNewUserButtonTupped() {
		nameLable.text = helper.randomUser().person.name
	}
}

// MARK: - Setup View
private extension ViewController {
	func addAction() {
		showNewUserButton.addTarget(
			self,
			action: #selector(showNewUserButtonTupped),
			for: .touchUpInside)
		
		let action = UIAction { _ in
			self.nameLable.text = ""
		}
		hideUserButton.addAction(action, for: .touchUpInside)
	}
	
	func setupView() {
		view.backgroundColor = .cyan
		view.alpha = 0.9
		view.addSubview(stackView)
	}
	
	func setupLable() {
		let nameText = helper.randomUser().person.name
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
		stackView.distribution = .equalSpacing
		stackView.alignment = .fill
		stackView.spacing = 10
		
		stackView.addArrangedSubviews(
			nameLable, showNewUserButton, hideUserButton
		)
	}
}

// MARK: - Setup Layout
extension ViewController {
	private func setupLayout() {
		stackView.translatesAutoresizingMaskIntoConstraints = false
		
		NSLayoutConstraint.activate([
			stackView.topAnchor.constraint(
				equalTo: view.topAnchor,
				constant: 100
			),
			stackView.centerXAnchor.constraint(
				equalTo: view.centerXAnchor
			),
			stackView.widthAnchor.constraint(
				equalTo: view.widthAnchor,
				multiplier: 0.7
			)
		])
	}
}
