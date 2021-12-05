//
//  HeadView.swift
//  TwitterClone
//
//  Created by Augustin Diabira on 05/12/2021.
//

import SwiftUI

struct HeadView: View {
    
    @State var bio:String = "IT - iOS Development"
    @State var followers:Int = 286
    @State var followings = 340
    
    var body: some View {
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
                
                HStack{
                    Text("\(followings) Following")
                    Text("\(followers) Followers")
                }
                .padding(.trailing, 154)
                    
            }
            
    }.edgesIgnoringSafeArea(.all)
    }
}

struct HeadView_Previews: PreviewProvider {
    static var previews: some View {
        HeadView()
            .preferredColorScheme(.dark)
    }
}
