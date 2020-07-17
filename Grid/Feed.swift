//
//  Feed.swift
//  Grid
//
//  Created by Benjamin Hoppe on 2020-07-17.
//  Copyright © 2020 Benjamin Hoppe. All rights reserved.
//

import SwiftUI

struct Feed: View {
    var body: some View {
        ZStack {
//            Image Feed
            ScrollView {
                VStack (alignment: .center, spacing: 0) {
                    Image("pyra")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    Image("geo")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    Image("rose")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
            }
//           Navigation
            VStack {
                HStack {
                    Image(systemName: "moon")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(Color.white)
                    Spacer()
                    Text("Home".uppercased())
                        .font(.custom("MonumentExtended-Regular", size: 14))
                        .foregroundColor(Color.white)
                    Spacer()
                    Image(systemName: "sun.min")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(Color.white)
                }
                .padding(24)
                .frame(height: 100)
                .background(LinearGradient(gradient: .init(colors: [Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0))]), startPoint: .top, endPoint: .bottom))
                Spacer()
            }
//            Plus Button
            FloatingActionButton()
            
        }
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
    
    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
    }
}

struct FloatingActionButton: View {
    var body: some View {
        VStack {
            Image(systemName: "plus")
                .font(.system(size: 24))
                .foregroundColor(Color.black)
            
        }
        .frame(width: 64, height: 64)
        .background(Color("Brand"))
        .cornerRadius(64)
        .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height - 48)
    }
}
