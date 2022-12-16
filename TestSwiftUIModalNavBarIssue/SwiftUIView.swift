//
//  SwiftUIView.swift
//  TestSwiftUIModalNavBarIssue
//
//  Created by Liosha Pavlysh on 16.12.2022.
//

import SwiftUI

struct SwiftUIView: View {
	let showOtherController: () -> Void

    var body: some View {
		VStack(spacing: 30) {
			Rectangle()
				.fill(Color(UIColor.blue))
				.frame(height: 50)
			Button("Show View", action: showOtherController)
			Spacer()
		}
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
		SwiftUIView() {} 
    }
}
