//
//  ProfileView.swift
//  TwitterClone
//
//  Created by Augustin Diabira on 05/12/2021.
//

import SwiftUI

struct ProfileView: View {
    let scrollbar = ["Tweet", "Tweet & Replies", "Media", "Likes"]
    
    var body: some View {
        NavigationView {
            VStack {
                        Divider()
                        ScrollView(.horizontal) {
                            HStack(spacing: 10) {
                                ForEach(0..<4) { index in
                                    Button {
                                        
                                    } label: {
                                        Text(scrollbar[index])
                                    }
                                   


                                    
                                }
                            }.padding()
                        }.frame(height: 100)
                        Divider()
                        Spacer()
                
                GeometryReader {geo in
                        List{
                            ForEach(0..<50) {_ in
                                TweetView()
                                    .frame(width: geo.size.width, alignment: .leading)
                                    .listRowInsets(.init())
                            }
                        }.listStyle(.plain)
                    
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .preferredColorScheme(.dark)
    }
}
