//
//  ContentView.swift
//  MarvelAppIOS
//
//  Created by user225687 on 12/11/22.
//

import SwiftUI

struct ImageLogo: View {
    var body: some View {
        Image("marvel")
            .resizable()
            .scaledToFit()
            
            .imageScale(.large)
            .foregroundColor(.accentColor)
            .frame(width: UIScreen.main.bounds.width*0.5
                  , alignment: .center)
    }
}

struct MainText: View {
    var body: some View {
        Text("Choose your hero")
            .font(.title.bold())
            .foregroundColor(Color.white)
            .multilineTextAlignment(.center)
            
    }
}


struct ContentView: View {
    
    @State var CurrentIndex : Int = 0
    
    var body: some View {
        Triangle()
            
            .ignoresSafeArea(edges:.bottom)
            
            
            .foregroundColor(heroes[CurrentIndex].color)
            .background(backgroundColor)
            .overlay(
                VStack (){
                    ImageLogo()
                    MainText()
                    VStack() {
                        
                        TabView(selection: $CurrentIndex) {
                            ForEach(0...heroes.count-1,id: \.self) {index in
                                 
                                GeometryReader{size -> AnyView in
                                     
                                    let minX = size.frame(in: .global).minX
                                    let width = UIScreen.main.bounds.width
                                    let progress = -minX / (width * 2)
                                    var scale = progress > 0 ? 1 - progress : 1 + progress
                                    scale = scale < 0.7 ? 0.7 : scale
                                     
                                    return AnyView(
                                        
                                        ZStack(alignment: .bottomLeading){
                                        
                                            Image(heroes[index].image)
                                                .resizable()
                                                .scaledToFill()
                                        
                                                .frame(width: UIScreen.main.bounds.width,
                                                       height: .infinity, alignment: .center)
                                                
                                    
                                                .cornerRadius(20)
                                            Text(heroes[index].name)
                                                    .font(.title)
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.white)
                                                    .shadow(color: Color.black, radius: 5)
                                                    .padding(.horizontal,20)
                                                    .padding(.vertical,20)
                                             
                                        }
                                            .scaleEffect(0.90)
                                            .scaleEffect(scale)
                                        
                                    )
                                }
                                .tag(index)
                            
                            }
                        }
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                        .frame(idealWidth: UIScreen.main.nativeScale)
                    

                    }.frame(
                        height:  .infinity, alignment: .center)
                    
            
                }
            )
    }
}
struct details_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
