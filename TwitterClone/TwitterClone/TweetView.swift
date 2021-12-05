//
//  TweetView.swift
//  TwitterClone
//
//  Created by Augustin Diabira on 04/12/2021.
//

import SwiftUI

struct TweetView: View {
    @State var tweet:String = "This is the space content, it shouldn't exceed 240 characters.It looks great for now"
    @State var tweets = ["Vous connaissez des entreprises qui recrutent  des alternants en développement iOS ¿ Faut que je commence à chercher pour Septembre 2022", "This is the space content, it shouldn't exceed 240 characters.It looks great for now", "Caitlyn c’est incroyable à jouer, dommage que le rôle d'ADC me convienne pas. Je vais continue à jouer support et train encore un peu avnt de jouer top.", "Même dans Inazuma Eleven 0% de possession ça n’existe pas mdrr, c'est impossible que ce soit vraiment arrivé. Je refuse d'y croire."]
    
    var randomNumber = Int.random(in: 0..<4)
    var body: some View {
        HStack(alignment: .top, spacing: 0){
            //Circle().frame(width: 45, height: 45)
                //.foregroundColor(.secondary)
            Image("william").resizable()
                .frame(width: 45, height: 45)
                .clipShape(Circle())
               
            Spacer()
            VStack(alignment: .leading){
                HStack{
                    //Top content
                    Text("Die.").font(.headline)
                    Text("@_BoohBooh * 7h")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                // Tweet Content
                
                Text(tweets[randomNumber])
                    
                
                // Button
                HStack (spacing: 27){
                    Button {
                        tweet.append("")
                    } label: {
                        Image(systemName: "message")
                    }
                    Button {
                    } label: {
                        Image(systemName: "repeat")
                    }
                   
                    Button {
                    } label: {
                        Image(systemName: "heart")
                    }
                    
                    Button {
                    } label: {
                        Image(systemName: "square.and.arrow.up")
                    }

                }.foregroundColor(.gray)
                
            } // .frame(maxWidth: .infinity)
                
        }.frame(maxWidth: .infinity, alignment: .topLeading)
            .padding()
    }
}

struct TweetView_Previews: PreviewProvider {
    static var previews: some View {
        TweetView()
    }
}
