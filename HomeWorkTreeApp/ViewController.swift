//
//  ViewController.swift
//  HomeWorkTreeApp
//
//  Created by Ярослав Кочкин on 11.09.2024.
//

import UIKit

class ViewController: UIViewController {
	
	private let helper = Helper()
	
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
	
	private func getInfoPeoples() {
		helper.addUsers(helper.userReoisitory.getUsers())
		helper.getUsers().forEach{
			print($0.person.fullName)
		}
	}
	
	private func setupView() {
		view.backgroundColor = .cyan
		view.alpha = 0.9
		view.addSubview(stackView)
	}
	
	// Думал сделать кастомный лайбл чтобы избавиться о этого метода тут, разгрузить вью, но не стал забегать вперед может это и не нужно
	private func setupLable() {
		let nameText = helper.getUsers().randomElement()?.person.name
		nameLable.text = nameText
		nameLable.font = .systemFont(
			ofSize: 25,
			weight: .bold
		)
		nameLable.textColor = .blue
		nameLable.textAlignment = .center
		nameLable.layer.shadowColor = UIColor.black.cgColor
		nameLable.layer.shadowRadius = 7.0
		nameLable.layer.shadowOpacity = 0.7
	}
	
	
	private func setupStackView() {
		stackView.axis = .vertical
		stackView.distribution = .fillEqually
		stackView.alignment = .fill
		stackView.spacing = 10
		
		[nameLable, showNewUserButton, hideUserButton]
			.forEach{stackView.addArrangedSubview($0)}
	}
	
	private func setupLayout() {
		stackView.translatesAutoresizingMaskIntoConstraints.toggle()
		
		NSLayoutConstraint.activate([
			stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
			stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			stackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7),
			stackView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5)
		])
	}
}

