//
//  Detail.swift
//  Grid
//
//  Created by Benjamin Hoppe on 2020-07-17.
//  Copyright © 2020 Benjamin Hoppe. All rights reserved.
//

import SwiftUI

struct Detail: View {
    var body: some View {
        ZStack {
            VStack (alignment: .center, spacing: 0) {
                HStack {
                    Image(systemName: "arrow.left")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(Color.white)
                    Spacer()
                    Image(systemName: "ellipsis")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(Color.white)
                }
                .padding(24)
                .background(Color.black)
                HStack {
                    Image("rose")
                    .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                Spacer()
                VStack (alignment: .leading, spacing: 4) {
                    HStack {
                        Text("196 BC")
                            .font(.system(size: 18))
                            .foregroundColor(Color(#colorLiteral(red: 0.7411764706, green: 0.7333333333, blue: 0.7333333333, alpha: 1)))
                        Spacer()
                    }
                    Text("Rosetta Stone".uppercased())
                        .font(.custom("MonumentExtended-Regular", size: 24))
                    Text("Granodiorite")
                        .font(.system(size: 24))
                }
            .padding(24)
                .offset(y: -32)
            Spacer()
            }
            FloatingActionButton()
                .offset(y: -4)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        Detail()
    }
}
