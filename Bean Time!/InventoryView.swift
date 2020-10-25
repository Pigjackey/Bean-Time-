//
//  InventoryView.swift
//  Bean Time!
//
//  Created by Donovon Spencer on 10/23/20.
//

import SwiftUI
import CoreData
import AudioToolbox

struct InventoryView: View {
  @State var color = Color.customBackground
  var displayItems = ["Kidney", "Black", "Pinto", "Garbanzo", "Lima", "Red", "Butter", "White", "Giant", "Fake", "Dino", "Kidney", "Black", "Pinto", "Garbanzo", "Lima", "Red", "Butter", "White", "Giant", "Fake", "Dino"]
    
  var body: some View {
    ZStack {
      color.ignoresSafeArea()
      
      VStack {
        Label("Beans!", systemImage: "42.circle")
          .padding(.vertical, 20)
          .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
          .foregroundColor(.customText)

        ScrollView {
          ForEach(displayItems, id: \.self) { item in
            Button(action: {
              AudioServicesPlaySystemSound (1104)
            }) {
              Text("\(item)")
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding()
                .foregroundColor(.customText)
                .overlay(RoundedRectangle(cornerRadius: 10)
                          .stroke(Color.gray, lineWidth: 1))
                          .padding(.horizontal, 15)
            }
          }
        }
      }
    }
  }
}

struct InventoryView_Previews: PreviewProvider {
  static var previews: some View {
    InventoryView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
  }
}
