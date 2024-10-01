//
//  ShadowButton.swift
//  HomeWorkTreeApp
//
//  Created by Ярослав Кочкин on 28.09.2024.
//

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
}

// MARK: - SetupButton
extension ShadowButton {
	private func setupButton(text: String, color: UIColor, shadow: Bool) {
		setTitle(
			text,
			for: .normal
		)
		backgroundColor = color
		layer.cornerRadius = Constant.cornerRadius
		heightAnchor.constraint(equalToConstant: 50).isActive = true
		
		if shadow {
			layer.shadowColor = Constant.shadowColor
			layer.shadowRadius = Constant.shadowRadius
			layer.shadowOpacity = Constant.shadowOpacity
		}
	}
}

private extension ShadowButton {
	enum Constant {
		static let cornerRadius: CGFloat = 20
		static let shadowColor: CGColor = UIColor.black.cgColor
		static let shadowRadius: CGFloat = 7
		static let shadowOpacity: Float = 0.7
	}
}
