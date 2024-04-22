//
//  BotResponce.swift
//  Women's safty app
//
//  Created by Anna Williams on 4/21/24.
//

//bot messages

import Foundation

//has generic bot responces 
func getBotResponse(message: String) -> String {
    let tempMessage = message.lowercased()
    
    if tempMessage.contains("hello") {
        return "Hey there!"
    } else if tempMessage.contains("goodbye") {
        return "Talk to you later!"
    } else if tempMessage.contains("how are you") {
        return "I'm fine, how about you?"
    } else {
        return "That's cool."
    }
}
