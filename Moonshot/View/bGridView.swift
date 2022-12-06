//
//  bGridView.swift
//  Moonshot
//
//  Created by berat can beduk on 5.12.2022.
//

import SwiftUI

struct bGridView: View {
    let layout = [
        GridItem(.adaptive(minimum: 80))
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout) {
                ForEach(0..<1000) {
                    Text("Item \($0)")
                }
            }
        }
    }
}

struct bGridView_Previews: PreviewProvider {
    static var previews: some View {
        bGridView()
    }
}
