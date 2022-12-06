//
//  AstronautView.swift
//  Moonshot
//
//  Created by berat can beduk on 5.12.2022.
//

import SwiftUI

struct AstronautView: View {
    let astronaut : Astronaut
    init(astronaut: Astronaut) {
        self.astronaut = astronaut
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.red]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    Image(astronaut.id)
                        .resizable()
                        .frame(width: .infinity,height: 200)
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .padding(.horizontal)
                    Spacer().frame(height:50)
                    Text(astronaut.description)
                        .padding(.horizontal)
                }
                
                .navigationTitle(astronaut.name)
                
                .navigationBarTitleDisplayMode(.inline)
                
            }.background(.darkBackground)
        }.ignoresSafeArea()
        
    }
}

struct AstronautView_Previews: PreviewProvider {
    static let astronauts : [String:Astronaut] = Bundle.main.decode("astronauts.json")
    static var previews: some View {

        AstronautView(astronaut: astronauts["aldrin"]!)
            .preferredColorScheme(.dark)
    }
}
