//
//  UIStackView+View.swift
//  HomeWorkTreeApp
//
//  Created by Ярослав Кочкин on 30.09.2024.
//

import Foundation
import UIKit



extension UIStackView {
	
	func addArrangedSubviews(_ views: UIView...) {
		views.forEach{addArrangedSubview($0)}
	}
}
