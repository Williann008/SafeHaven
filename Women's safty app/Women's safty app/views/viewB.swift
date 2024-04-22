//
//  viewB.swift
//  Women's safty app
//
//  Created by Anna Williams on 4/10/24.
//

//chat bot AI
//made to immitate a text conversation
//made to make it appear as if the person using te app is actually texting someone

import SwiftUI

struct viewB: View {
    @State private var messageText = ""
    @State var messages: [String] = ["Hello! Welcome to the chat!"]
        
    var body: some View {
        
        ZStack {
            
            //background
            Image("soft.png")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                        HStack {
                            Text("Messages")
                                .font(.largeTitle)
                                .bold()
                            
                            Image(systemName: "message.fill")
                                .font(.system(size: 26))
                                .foregroundColor(Color.blue)
                        }
                        
                        //messages
                        ScrollView {
                            ForEach(messages, id: \.self) { message in
                                // If the message contains [USER], that means it's us
                                if message.contains("[USER]") {
                                    let newMessage = message.replacingOccurrences(of: "[USER]", with: "")
                                    
                                    // User message styles
                                    HStack {
                                        Spacer()
                                        Text(newMessage)
                                            .padding()
                                            .foregroundColor(Color.white)
                                            .background(Color.blue.opacity(0.8))
                                            .cornerRadius(10)
                                            .padding(.horizontal, 16)
                                            .padding(.bottom, 10)
                                    }
                                } else {
                                    
                                    // Bot message styles
                                    HStack {
                                        Text(message)
                                            .padding()
                                            .background(Color.gray.opacity(0.15))
                                            .cornerRadius(10)
                                            .padding(.horizontal, 16)
                                            .padding(.bottom, 10)
                                        Spacer()
                                    }
                                }
                                
                            }.rotationEffect(.degrees(180))
                        }
                        .rotationEffect(.degrees(180))
                        .background(Color.gray.opacity(0.1))
                        
                        
                        // Contains the Message bar
                        HStack {
                            TextField("Type something", text: $messageText)
                                .padding()
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(10)
                                .onSubmit {
                                    sendMessage(message: messageText)
                                }
                            
                            Button {
                                sendMessage(message: messageText)
                            } label: {
                                Image(systemName: "paperplane.fill")
                            }
                            .font(.system(size: 26))
                            .padding(.horizontal, 10)
                        }
                        .padding()
                    }
            
        }
    }
    
    func sendMessage(message: String) {
            withAnimation {
                messages.append("[USER]" + message)
                self.messageText = ""
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    withAnimation {
                        messages.append(getBotResponse(message: message))
                    }
                }
            }
        }
    
    
}


#Preview {
    viewB()
}

