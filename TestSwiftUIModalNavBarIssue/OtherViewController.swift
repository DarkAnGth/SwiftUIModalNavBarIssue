//
//  OtherViewController.swift
//  TestSwiftUIModalNavBarIssue
//
//  Created by Liosha Pavlysh on 16.12.2022.
//

import UIKit

class OtherViewController: UIViewController {
	let textField = UITextField()

	override func viewDidLoad() {
		super.viewDidLoad()

		view.backgroundColor = .white
		addTextField()
	}

	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		textField.becomeFirstResponder()
	}

	private func addTextField() {
		textField.translatesAutoresizingMaskIntoConstraints = false
		view.addSubview(textField)

		NSLayoutConstraint.activate([
			textField.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
			textField.leftAnchor.constraint(equalTo: view.leftAnchor),
			textField.rightAnchor.constraint(equalTo: view.rightAnchor)
		])
		textField.layer.borderWidth = 1
		textField.layer.borderColor = UIColor.black.cgColor
	}
}
