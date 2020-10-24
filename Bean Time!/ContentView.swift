//
//  ContentView.swift
//  Bean Time!
//
//  Created by Donovon Spencer on 10/23/20.
//

import SwiftUI
import CoreData
import AudioToolbox

extension Color {
  static let newBackgroundColor = Color("newBackground")
  static let newTextColor = Color("newText")
}

struct ContentView: View {
  @Environment(\.managedObjectContext)
    private var viewContext

  @FetchRequest(
    sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>

  @State var color = Color.newBackgroundColor
  @State var message = "(Don't Push)"
  var displayItems = ["Kidney", "Black", "Pinto", "Garbanzo", "Lima", "Red", "Butter", "White", "Giant", "Fake", "Dino", "Kidney", "Black", "Pinto", "Garbanzo", "Lima", "Red", "Butter", "White", "Giant", "Fake", "Dino"]
    
  var body: some View {
    ZStack {
      color.ignoresSafeArea()
      VStack {
        Button(action: {
          color = .red
          message = "INTRUDER ALERT!"
        }) {
          Label("Beans! \(message)", systemImage: "42.circle")
            .padding(.vertical, 20)
            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
            .foregroundColor(.newTextColor)
        }

        ScrollView {
          ForEach(displayItems, id: \.self) { item in
            Button(action: {
              AudioServicesPlaySystemSound (1104)
            }) {
              Text("\(item)")
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding()
                .foregroundColor(.newTextColor)
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

private let itemFormatter: DateFormatter = {
  let formatter = DateFormatter()
  formatter.dateStyle = .short
  formatter.timeStyle = .medium
  return formatter
}()

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
  }
}
