//
//  ViewController.swift
//  HomeWorkTreeApp
//
//  Created by Ярослав Кочкин on 11.09.2024.
//

import UIKit

class ViewController: UIViewController {
	
	private let helper = Helper()
	private let userRepository = UserRepository()
	
	private let nameLable = UILabel()
	private let fullNameButton: UIButton = {
		let button = UIButton()
		button.setTitle("Show FullName", for: .normal)
		button.backgroundColor = .green
		button.frame = CGRect(x: 100, y: 150, width: 150, height: 50)
		return button
	}()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		getInfoPeoples()
		setupLable(nameLable)
		setupView()
	}
	
	private func getInfoPeoples() {
		userRepository.getUsers().forEach({print($0.person.fullName)})
	}
	
	private func setupView() {
		view.backgroundColor = .cyan
		view.alpha = 0.9
		view.addSubview(nameLable)
		view.addSubview(fullNameButton)
	}
	
	private func setupLable(_ lable: UILabel) {
		lable.text = userRepository.getUsers().randomElement()?.person.name
		lable.font = .systemFont(ofSize: 25, weight: .bold)
		lable.textColor = .blue
		lable.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
	}
}

