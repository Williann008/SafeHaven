//
//  ContentView.swift
//  Women's safty app
//
//  Created by Anna Williams on 2/21/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            
            //sets up background image
            Image("soft.png")
                .resizable()
                .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 20.0) {
                

                
                HStack() {
                    //title
                    Text("Safe")
                    Image(systemName: "heart.fill")
                    Text("Haven")
                }
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding()
                

                //sets up tabs so you can see what the app offers
                TabView {
                    viewA()
                        .tabItem() {
                            Image(systemName: "phone.fill")
                            Text("Contacts")
                        }
                    viewB()
                        .tabItem() {
                            Image(systemName: "message.fill")
                            Text("Messages")
                        }
                    viewC()
                        .tabItem() {
                            Image(systemName: "book.pages.fill")
                            Text("Journal")
                        }
                    viewD()
                        .tabItem() {
                            Image(systemName: "ear.trianglebadge.exclamationmark")
                            Text("Panic")
                        }
                    
                }
                
                Spacer()

                
            }
        }
        
    }
    
    func deal() {
        print("deal")
    }
}

#Preview {
    ContentView()
}

