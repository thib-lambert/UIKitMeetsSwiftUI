//
//  SUIHelloWorld.swift
//  UIKitMetsSwiftUI
//
//  Created by Thibaud Lambert on 11/06/2021.
//

import SwiftUI

struct SUIHelloWorld: View {
    var body: some View {
        Text("Hello, World!")
            .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 0, idealHeight: 10, maxHeight: 30, alignment: .center)
            .foregroundColor(.white)
            .background(Color.green)
    }
}

struct SUIHelloWorld_Previews: PreviewProvider {
    static var previews: some View {
        SUIHelloWorld()
    }
}
