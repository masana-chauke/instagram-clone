//
//  stackedView.swift
//  instagram-clone
//
//  Created by DA MAC M1 160 on 2023/07/10.
//

import SwiftUI

struct stackedView: View {
    let value: Int
    let title: String
    
    var body: some View {
        VStack{
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            
            Text(title)
                .font(.footnote)
        }
        .frame(width: 76)
    }
}

struct stackedView_Previews: PreviewProvider {
    static var previews: some View {
        stackedView(value: 12, title: "Posts")
    }
}
