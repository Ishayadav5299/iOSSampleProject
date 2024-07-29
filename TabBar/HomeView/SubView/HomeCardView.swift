//
//  HomeCardView.swift
//  imdb
//
//  Created by student on 26/07/24.
//

import SwiftUI

struct HomeCardView: View {
    var item : DataList
    
    var body: some View {
        VStack {
            Divider()
                .background(Color.black)
            HStack {
                Text(item.show.name ?? "Not Available")
                    .font(.largeTitle)
                    .foregroundStyle(Color.black)
                Spacer()
            }
            
            if let url = URL(string:item.show.image.original ?? "") {
                AsyncImage(url: url) { phase in
                    if let image = phase.image {
                        image.resizable()
                    } else {
                        Image(systemName: "photo")
                            .font(.title)
                            .foregroundStyle(Color.black)
                    }
                }
                .frame(minWidth: 0,maxWidth: .infinity,minHeight: 0,maxHeight: 350)
            }
            Divider()
                .background(Color.black)
        }
        .padding()
        .background(Color("ThemeGrey"))
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
    
//    #Preview {
//        HomeCardView()
//    }
