//
//  ShadowButton.swift
//  HomeWorkTreeApp
//
//  Created by Ярослав Кочкин on 28.09.2024.
//

import Foundation
import UIKit



class ShadowButton: UIButton {
	
	init(textButton: String, color: UIColor, shadow: Bool = false) {
		super.init(frame: .zero)
		setupButton(text: textButton, color: color, shadow: shadow)
	}
	
	override init(frame: CGRect) {
		super.init(frame: frame)
	}
	
	@available(*, unavailable)
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override func layoutSubviews() {
		super.layoutSubviews()
		let shadowPath = UIBezierPath(rect: bounds)
		layer.shadowPath = shadowPath.cgPath
	}
	
	private func setupButton(text: String, color: UIColor, shadow: Bool) {
		setTitle(
			text,
			for: .normal
		)
		backgroundColor = color
		layer.cornerRadius = 20
		
		if shadow {
			layer.shadowColor = UIColor.black.cgColor
			layer.shadowRadius = 7.0
			layer.shadowOpacity = 0.7
		}
	}
}
