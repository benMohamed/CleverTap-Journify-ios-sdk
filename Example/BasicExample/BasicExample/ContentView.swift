//
//  ContentView.swift
//  BasicExample
//
//  Created by Brandon Sneed on 2/23/22.
//

import SwiftUI
import Journify

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    Journify.main.track(name: "Track")
                }, label: {
                    Text("Track")
                }).padding(6)
                Button(action: {
                    Journify.main.screen(title: "Screen appeared")
                }, label: {
                    Text("Screen")
                }).padding(6)
            }.padding(8)
            HStack {
                Button(action: {
                    Journify.main.identify(userId: "X-1234567890")
                }, label: {
                    Text("Identify")
                }).padding(6)
            }.padding(8)
        }.onAppear {
            Journify.main.track(name: "onAppear")
            print("Executed Analytics onAppear()")
        }.onDisappear {
            Journify.main.track(name: "onDisappear")
            print("Executed Analytics onDisappear()")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
