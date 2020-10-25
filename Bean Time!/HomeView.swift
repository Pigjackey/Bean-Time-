//
//  HomeView.swift
//  Bean Time!
//
//  Created by Donovon Spencer on 10/24/20.
//

import SwiftUI

struct HomeView: View {
  init(){
    UITableView.appearance().backgroundColor = .clear
  }
  
  @State var text = ""
  
  var body: some View {
    NavigationView {
      ZStack {
        Color.customBackground.ignoresSafeArea()
        
        VStack {
          Text("Bean Time!").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
          Form {
            Section(header: Text("Inventory")) {
              NavigationLink(destination: InventoryView()) {
                Text("Current Inventory")
              }
              TextField("Hello, World!", text: $text)
            }
            Section {
              Text("\(text)")
              Text("Hello, World!")
            }
            Section {
              Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
              Text("Hello, World!")
            }
            Section {
              Text("Hello, World!")
              Text("Hello, World!")
            }
            Section {
              Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
              Text("Hello, World!")
            }
          }
        }
      }
    }
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
