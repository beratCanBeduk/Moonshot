//
//  bScrollView.swift
//  Moonshot
//
//  Created by berat can beduk on 5.12.2022.
//

import SwiftUI

struct bScrollView: View {
    var body: some View {
        ScrollView(){
            LazyVStack(spacing: 10) {
                    ForEach(0..<100) {
                        CustomText("Item \($0)",id: $0)
                    }
                }.frame(maxWidth: .infinity)
            
            
        }
    }
}

struct bScrollView_Previews: PreviewProvider {
    static var previews: some View {
        bScrollView()
    }
}
struct CustomText: View {
    let text: String
    let id : Int

    var body: some View {
        Text(text)
    }

    init(_ text: String , id : Int) {
        print("Creating a new CustomText \(id)")
        self.text = text
        self.id = id
    }
}
