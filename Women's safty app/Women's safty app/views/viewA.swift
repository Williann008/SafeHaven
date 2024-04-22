//
//  viewA.swift
//  Women's safty app
//
//  Created by Anna Williams on 4/10/24.
//

//this page is for a list of united states emergency contacts
//meant to be an easily accessable list incase of emergency or if someone forgets these contacts 
//if i had more time i would add different countries

import SwiftUI

struct viewA: View {
    var body: some View {
        
        ZStack {
            
            //background
            Image("soft.png")
                .resizable()
                .ignoresSafeArea()
            
            //list of emergency contacts 
            VStack {
                Text("United States Emergency Contacts: ")
                    .padding()
                    .fontWeight(.bold)
                Text("Medical Emergency: 911")
                Text("Suicide and Crisis: 988")
                Text("Disaster Distress: 1-800-985-5990")
                Text("Maternal Mental Health: 1-833-852-6262")
                Text("Poison Help: 1-800-222-1222")
                Text("Substance Abuse: 1-800-622-4357")
            }
            .padding()
            .foregroundColor(.white)
            .font(.title3)
    
        }
    }
}

#Preview {
    viewA()
}
