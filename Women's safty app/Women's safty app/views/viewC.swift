//
//  viewC.swift
//  Women's safty app
//
//  Created by Anna Williams on 4/10/24.
//

//this page is meant to be a journal for the user
//meant to keep track of importnat information

import SwiftUI
import SwiftData

struct viewC: View {
    
    @State var name : String = ""
    var body: some View {

            ZStack {
                
                //background
                Image("soft.png")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack(alignment: .center, spacing: 20.0) {
                    
                    //title
                    Text("Journal")
                        .padding()
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .font(.title)
                    
                    //enter text for journal
                    TextField("Add text...", text: $name).textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    //saves text
                    Button("Save"){
                        print(name)
                    }
                    .font(.title2)
                    .foregroundColor(.blue)
                    .padding()
                    
                    //prints text on screen
                    Text("\(name)")
                }
                
            }
            
        }
        
    }


#Preview {
    viewC()
}
