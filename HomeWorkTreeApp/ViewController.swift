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
	private let fullNameButton = UIButton()
	private let stackView = UIStackView()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		getInfoPeoples()
		setupLable()
		setupButton()
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
	
	private func setupButton() {
		fullNameButton.setTitle(
			"Show FullName",
			for: .normal
		)
		fullNameButton.backgroundColor = .green
		fullNameButton.layer.shadowColor = UIColor.black.cgColor
		fullNameButton.layer.shadowRadius = 7.0
		fullNameButton.layer.shadowOpacity = 0.7
		
		let shadowPats = UIBezierPath(
			roundedRect: fullNameButton.bounds,
			cornerRadius: 20
		) // Не получается :((
		fullNameButton.layer.shadowPath = shadowPats.cgPath
	}
	
	private func setupStackView() {
		stackView.axis = .vertical
		stackView.distribution = .fill
		stackView.alignment = .center
		stackView.spacing = 10
		
		[nameLable, fullNameButton]
			.forEach{stackView.addArrangedSubview($0)}
	}
	
	private func setupLayout() {
		stackView.translatesAutoresizingMaskIntoConstraints.toggle()
		
		NSLayoutConstraint.activate([
			stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
			stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			stackView.widthAnchor.constraint(equalToConstant: 300),
			stackView.heightAnchor.constraint(equalToConstant: 200)
		])
	}
}

