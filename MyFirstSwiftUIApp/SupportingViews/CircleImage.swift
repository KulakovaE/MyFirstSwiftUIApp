//
//  CircleImage.swift
//  MyFirstSwiftUIApp
//
//  Created by Elena Kulakova on 2020-03-10.
//  Copyright © 2020 Elena Kulakova. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
        .clipShape(Circle())
        .overlay(
            Circle().stroke(Color.gray, lineWidth: 4))
        .shadow(radius: 10)
    }
}

struct CircleImage_Preview: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
