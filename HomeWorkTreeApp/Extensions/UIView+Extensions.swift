//
//  UIView+Extensions.swift
//  HomeWorkTreeApp
//
//  Created by Ярослав Кочкин on 30.09.2024.
//

import UIKit


extension UIView {
	
	func addSubviews(_ views: UIView...) {
		views.forEach{addSubview($0)}
	}
}
