//
//  ContentView.swift
//  Moonshot
//
//  Created by berat can beduk on 5.12.2022.
//

import SwiftUI
import Kingfisher

struct ContentView: View {
    
    
    var body: some View {
        NavigationView {
            
            GeometryReader { geo in
                Image("example")
                    .resizable()
                    .scaledToFit()
                    .frame(width: geo.size.width * 0.8)
           

            }
            
        }
        
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
        }
    }
}
