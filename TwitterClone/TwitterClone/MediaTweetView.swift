//
//  MediaTweetView.swift
//  TwitterClone
//
//  Created by Augustin Diabira on 05/12/2021.
//

import SwiftUI

struct MediaTweetView: View {
    
    @State var tweet = ""
    @State var image:[String] = ["img1", "halfmoon", "deluxe", "hawaiian"]
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
                    Image("img1").resizable()
                    .scaledToFit()
                    .frame(width: 324, height: 334)
                        
                    
                
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

struct MediaTweetView_Previews: PreviewProvider {
    static var previews: some View {
        MediaTweetView()
    }
}
