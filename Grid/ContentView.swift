//
//  ContentView.swift
//  Grid
//
//  Created by Benjamin Hoppe on 2020-07-17.
//  Copyright © 2020 Benjamin Hoppe. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Text("Grid".uppercased())
                    .font(.custom("MonumentExtended-Regular", size: 64))
                Spacer()
            }.padding()
            Spacer()
            VStack {
                HStack {
                    Text("Sign In".uppercased())
                        .font(.custom("MonumentExtended-Regular", size: 14))
                    Spacer()
                }
                TextField("Email Address", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .padding()
                    .keyboardType(.emailAddress)
                    .background(Color("Secondary"))
                    .cornerRadius(4)
                SecureField("Password", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .padding()
                    .background(Color("Secondary"))
                    .cornerRadius(4)
                HStack {
                    Text("Forgot your password?")
                    Spacer()
                }
            }
            .padding()
            Spacer()
            VStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Next")
                    .bold()
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background( Color("Brand"))
                .foregroundColor(Color.black)
                .cornerRadius(64)
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
