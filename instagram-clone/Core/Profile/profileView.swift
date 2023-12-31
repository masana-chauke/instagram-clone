//
//  profileView.swift
//  instagram-clone
//
//  Created by DA MAC M1 160 on 2023/07/10.
//

import SwiftUI

struct profileView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),

    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                //header
                VStack(spacing: 10){
                    //pic and stats
                    HStack{
                        Image("brent")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                        
                        Spacer()
                        
                        HStack(spacing: 8) {
                            stackedView(value: 3, title: "Posts")
                            stackedView(value: 800, title: "Followers")
                            stackedView(value: 500, title: "Following")
                        }
                    }
                    .padding(.horizontal)
                    
                    //name and bio
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Masana")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text("ART")
                            .font(.footnote)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                    //action button
                    Button{
                        
                    } label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 32)
                            .foregroundColor(.black)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6)
                                .stroke(Color.gray, lineWidth: 1)
                                )
                    }
                    
                    Divider()
                }
                
                //post grid view
                
                LazyVGrid(columns: gridItems, spacing: 2){
                    Image("damn")
                        .resizable()
                        .scaledToFill()
                    
                    Image("telefone")
                        .resizable()
                        .scaledToFill()
                    
                    Image("mamasgun")
                        .resizable()
                        .scaledToFill()
                    
                }
                
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement:.navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                 }
            }
        }
    }
}


struct profileView_Previews: PreviewProvider {
    static var previews: some View {
        profileView()
    }
}
