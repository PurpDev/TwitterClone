//
//  ContentView.swift
//  TwitterClone
//
//  Created by Augustin Diabira on 04/12/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var bio:String = "IT - iOS Development"
    @State var followers:Int = 286
    @State var followings = 340
    let scrollbar = ["Tweet", "Tweet & Replies", "Media", "Likes"]

    var body: some View {
        
        
        VStack {
            // Profile View
            ScrollView{
                VStack{
                    Image("banner").resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame( height: 180)
                    
                    HStack(spacing: 200) {
                        
                        Image("william").resizable()
                            .frame(width: 85, height: 85)
                        .clipShape(Circle())
                        
                        Button {
                        } label: {
                            Text("Edit Profile")
                                .padding()
                                .foregroundColor(.white)
                                .cornerRadius(5)
                                .background(
                                    Capsule()
                                        .stroke()
                                        .foregroundColor(.gray)
                                        
                                )
                        }

                    }
                    Text("Die.").bold()
                        .font(.headline).padding(.trailing, 353.0)
                    Text("@_BoohBooh").foregroundColor(.gray)
                        .font(.headline).padding(.trailing, 280.0)
                    Divider()
                    Text(bio)
                        .padding(.trailing, 210)
                    
                    HStack(){
                        Spacer()
                        Image(systemName: "drop")
                        Text("Swift UI")
                        Divider()
                        Image(systemName: "pyramid")
                        Text("Born 31 December 2002")
                        Spacer()
                    }.padding(.trailing, 70)
                        .foregroundColor(.gray)
                        
                        HStack {
                            Image(systemName: "calendar")
                            Text("Joined October 2018")
                        }.padding(.trailing, 190)
                            .foregroundColor(.gray)
                    Divider()
                        HStack{
                            HStack {
                                Text("\(followings)")
                                Text("Following").foregroundColor(.gray)
                            }
                            HStack {
                                Text("\(followers)")
                                Text("Followers").foregroundColor(.gray)
                            }
                        }
                        .padding(.trailing, 154)
                    
                    
                    
                        
                }
            }.edgesIgnoringSafeArea(.all)
                
            
            //TweetView
            VStack {
                        Divider()
                        ScrollView(.horizontal) {
                            HStack(spacing: 10) {
                                ForEach(0..<4) { index in
                                    Button {
                                        
                                    } label: {
                                        Text(scrollbar[index]).foregroundColor(.gray)
                                            .padding(.trailing)
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
    
//    func placeHolderAction() -> Void{}
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            
    }
}
