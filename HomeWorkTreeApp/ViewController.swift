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
	private let fullNameButton: UIButton = {
		let button = UIButton()
		button.setTitle("Show FullName", for: .normal)
		button.backgroundColor = .green
		button.frame = CGRect(x: 100, y: 150, width: 150, height: 50)
		button.layer.cornerRadius = 20
		button.layer.shadowColor = UIColor.black.cgColor
		button.layer.shadowRadius = 7.0
		button.layer.shadowOpacity = 0.7
		return button
	}()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		getInfoPeoples()
		setupLable()
		setupView()
	}
	
	private func getInfoPeoples() {
		helper.addUsers(helper.userReoisitory.getUsers()) // надеюсь правильно что этот клас не знает про репозиторий)) просто не знаю как еще лучше сделать внутри хелпера добавлять если только
		helper.getUsers().forEach({print($0.person.fullName)})
	}
	
	private func setupView() {
		view.backgroundColor = .cyan
		view.alpha = 0.9
		view.addSubview(nameLable)
		view.addSubview(fullNameButton)
	}
	
	private func setupLable() {
		let nameText = helper.getUsers().randomElement()?.person.name
		nameLable.text = nameText
		nameLable.font = .systemFont(ofSize: 25, weight: .bold)
		nameLable.textColor = .blue
		nameLable.frame = CGRect(x: 100, y: 100, width: 150, height: 50)
		nameLable.layer.shadowColor = UIColor.black.cgColor
		nameLable.layer.shadowRadius = 7.0
		nameLable.layer.shadowOpacity = 0.7	}
}

