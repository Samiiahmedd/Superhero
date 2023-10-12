//
//  SuperheroView.swift
//  Superhero
//
//  Created by Sami Ahmed on 30/09/2023.
//

import SwiftUI

struct SuperheroView: View {
    var superH : Superhero
    @State var isScaling : Bool  = false
    @State var isSliding : Bool = false
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    
    
    
    // var gradient : [Color] = [Color("ColorHulk01"),Color("ColorHulk02")]
    @State var isAlertPresented : Bool  = false
    var body: some View {
        ZStack{
            Image(superH.image)
                .resizable()
                .scaledToFill()
                .scaleEffect(isScaling ? 1 : 0.8) //animation
                .animation(.easeOut(duration: 1), value: isScaling)

            
            
            
            VStack{
                Text(superH.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                
                
                Button {
                    isAlertPresented.toggle()
                    hapticImpact.impactOccurred()
                    playsound(sound:"chimeup", type: "mp3")
                
                    
                } label: {
                    HStack{
                        Text("Start")
                        Image(systemName: "arrow.right.circle")
                    } //: HStack 
                    .padding()
                    .font(.title2)
                    .foregroundColor(.white)
                    .background(LinearGradient(colors:superH.gradientColors, startPoint: .bottomTrailing, endPoint: .topLeading))
                    .clipShape(Capsule())
                    
                    .shadow(radius:10 )
                    .alert(isPresented:$isAlertPresented) {
                        Alert(title:Text("More about \(superH.title)"),
                              message: Text(superH.message), dismissButton: .default(Text("ok")))
                    }
                    
                    
                    
                } // Label
                

            } //:VStavk
            .offset( y : isSliding ?  150 : 300)
            .animation(.easeOut(duration: 1.5), value: isSliding)
            
        } //:ZStack
        .frame(width: 350,height: 550, alignment: .center)
        .background(LinearGradient(colors: superH.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(16)
        .shadow(color: .black, radius: 2, x: 2, y: 2)
        .onAppear {
            isScaling = true
            isSliding = true
        }
    }
}

struct SuperheroView_Previews: PreviewProvider {
    static var previews: some View {
        SuperheroView(superH: superherosData[3])
    }
}
