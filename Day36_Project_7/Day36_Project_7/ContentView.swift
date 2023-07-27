//
//  ContentView.swift
//  Day36_Project_7
//
//  Created by Elias Breitenbach on 26.07.23.
//

import SwiftUI

struct SecondView: View {
    
    @Environment(\.dismiss) var dismiss
    
    let name: String
    
    var body: some View {
//        Text("Hello, \(name)")
        Button("Dismiss") {
            dismiss()
        }
    }
}

struct ContentView: View {
    
    @State private var showingSheet = false
    
    var body: some View {
        Button("Show Sheet") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView(name: "Elias")
        }
    }
}

//class User: ObservableObject {
//    @Published var firstName = "Elias"
//    @Published var lastName = "Breitenbach"
//}
//
//struct ContentView: View {
//    @StateObject var user = User()
//
//    var body: some View {
//        VStack {
//            Text("Your name is \(user.firstName) \(user.lastName).")
//
//            TextField("First name", text: $user.firstName)
//            TextField("Last name", text: $user.lastName)
//        }
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
