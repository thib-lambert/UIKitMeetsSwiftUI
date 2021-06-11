//
//  SUIList.swift
//  UIKitMetsSwiftUI
//
//  Created by Thibaud Lambert on 11/06/2021.
//

import SwiftUI

struct SUIList: View {
    
    var data: [String] = []
    
    var body: some View {
        VStack(spacing: 10) {
            Text("View created with SwiftUI")
                .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 0, idealHeight: 10, maxHeight: 30, alignment: .center)
                .foregroundColor(.white)
                .background(Color.purple)
            
            VStack(spacing: 0) {
                if self.data.isEmpty {
                    Spacer()
                    Text("No data")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.red)
                    Spacer()
                } else {
                    List(self.data, id: \.self) { item in
                        Text(item)
                    }
                }
            }
        }
    }
}

struct SUIList_Previews: PreviewProvider {
    static var previews: some View {
        SUIList()
    }
}
