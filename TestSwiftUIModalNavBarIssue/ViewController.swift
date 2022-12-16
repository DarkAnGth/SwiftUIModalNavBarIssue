//
//  ViewController.swift
//  TestSwiftUIModalNavBarIssue
//
//  Created by Liosha Pavlysh on 16.12.2022.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()

		addSwiftUIView()
		navigationController?.navigationBar.backgroundColor = .blue
	}

	private func addSwiftUIView() {
		let hostingVC = UIHostingController(rootView: SwiftUIView(showOtherController: showSwiftUIVC))
		addChild(hostingVC)
		view.addSubview(hostingVC.view)

		hostingVC.view.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			hostingVC.view.topAnchor.constraint(equalTo: view.topAnchor),
			hostingVC.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
			hostingVC.view.leftAnchor.constraint(equalTo: view.leftAnchor),
			hostingVC.view.rightAnchor.constraint(equalTo: view.rightAnchor)
		])

		hostingVC.didMove(toParent: self)
	}

	private func showSwiftUIVC() {
		let otherVc = OtherViewController()
		otherVc.modalPresentationStyle = .pageSheet
		present(otherVc, animated: true)
	}
}

