//
//  bNavigation.swift
//  Moonshot
//
//  Created by berat can beduk on 5.12.2022.
//

import SwiftUI

struct bNavigation: View {
    var body: some View {
        NavigationView{
            
                List(0..<100){ i in
                    NavigationLink {
                            Text("Detail View \(i)")
                        } label: {
                            Text("Hello, world!\(i)")
                                .padding()
                        }
                }.listStyle(.plain)

            
            .navigationTitle("Hello There")
        }
    }
}

struct bNavigation_Previews: PreviewProvider {
    static var previews: some View {
        bNavigation()
    }
}
