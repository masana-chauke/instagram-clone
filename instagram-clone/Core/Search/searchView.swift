//
//  searchView.swift
//  instagram-clone
//
//  Created by DA MAC M1 160 on 2023/07/11.
//

import SwiftUI

struct searchView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 12) {
                    ForEach(0 ... 15, id: \.self) {user in
                        
                        HStack {
                            Image("brent")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 48, height: 40)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading) {
                                Text("Masana")
                                    .fontWeight(.semibold)
                                Text("sunny")
                            }
                            .font(.footnote)
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                }
                .searchable(text: $searchText, prompt: "Search...")
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    struct searchView_Previews: PreviewProvider {
        static var previews: some View {
            searchView()
        }
    }
    
}
