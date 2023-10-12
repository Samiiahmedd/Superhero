//
//  ContentView.swift
//  Superhero
//
//  Created by Sami Ahmed on 30/09/2023.
//

import SwiftUI

struct ContentView: View {
    var superheros : [Superhero] = superherosData
    var body: some View {
        
        ScrollView(.horizontal) {
            HStack{
                ForEach(superheros) { item in
                   SuperheroView(superH: item)
                    
                }
                
            } // :HStack
            .padding(20)
            
        } //:ScrollView
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
