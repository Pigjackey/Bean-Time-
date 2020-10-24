//
//  ContentView.swift
//  Bean Time!
//
//  Created by Donovon Spencer on 10/23/20.
//

import SwiftUI
import CoreData
import AudioToolbox

struct ContentView: View {
  @Environment(\.managedObjectContext)
    private var viewContext

  @FetchRequest(
    sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>

  @State var color = Color.white
  @State var progress = 0.0
    
  var body: some View {
    ZStack {
      color.ignoresSafeArea()
      ScrollView {
        VStack {
          Button(action: {
            color = Color.red
            AudioServicesPlaySystemSound (1104)
            progress += 0.01
          }) {
            Text("Red")
              .frame(minWidth: 0, maxWidth: .infinity)
              .padding()
              .foregroundColor(.white)
              .background(LinearGradient(gradient: Gradient(colors: [.red, .red, .red, .orange]), startPoint: .top, endPoint: .bottom))
              .cornerRadius(10)
              .padding(.horizontal, 10)
          }
          Button(action: {
            color = Color.orange
            AudioServicesPlaySystemSound (1104)
            progress += 0.01
          }) {
            Text("Orange")
              .frame(minWidth: 0, maxWidth: .infinity)
              .padding()
              .foregroundColor(.white)
              .background(LinearGradient(gradient: Gradient(colors: [.orange, .orange, .orange, .yellow]), startPoint: .top, endPoint: .bottom))
              .cornerRadius(10)
              .padding(.horizontal, 10)
          }
          Button(action: {
            color = Color.yellow
            AudioServicesPlaySystemSound (1104)
            progress += 0.01
          }) {
            Text("Yellow")
              .frame(minWidth: 0, maxWidth: .infinity)
              .padding()
              .foregroundColor(.black)
              .background(LinearGradient(gradient: Gradient(colors: [.yellow, .yellow, .yellow, .green]), startPoint: .top, endPoint: .bottom))
              .cornerRadius(10)
              .padding(.horizontal, 10)
          }
          Button(action: {
            color = Color.green
            AudioServicesPlaySystemSound (1104)
            progress += 0.01
          }) {
            Text("Green")
              .frame(minWidth: 0, maxWidth: .infinity)
              .padding()
              .foregroundColor(.white)
              .background(LinearGradient(gradient: Gradient(colors: [.green, .green, .green, .blue]), startPoint: .top, endPoint: .bottom))
              .cornerRadius(10)
              .padding(.horizontal, 10)
          }
          Button(action: {
            color = Color.blue
            AudioServicesPlaySystemSound (1104)
            progress += 0.01
          }) {
            Text("Blue")
              .frame(minWidth: 0, maxWidth: .infinity)
              .padding()
              .foregroundColor(.white)
              .background(LinearGradient(gradient: Gradient(colors: [.blue, .blue, .blue, .purple]), startPoint: .top, endPoint: .bottom))
              .cornerRadius(10)
              .padding(.horizontal, 10)
          }
          Button(action: {
            color = Color.purple
            AudioServicesPlaySystemSound (1104)
            progress += 0.01
          }) {
            Text("Purple")
              .frame(minWidth: 0, maxWidth: .infinity)
              .padding()
              .foregroundColor(.white)
              .background(LinearGradient(gradient: Gradient(colors: [.purple, .purple, .purple, .red]), startPoint: .top, endPoint: .bottom))
              .cornerRadius(10)
              .padding(.horizontal, 10)
          }
          Button(action: {
            color = Color.white
            AudioServicesPlaySystemSound (1104)
            progress += 0.01
          }) {
            Text("White")
              .frame(minWidth: 0, maxWidth: .infinity)
              .padding()
              .foregroundColor(.black)
              .background(LinearGradient(gradient: Gradient(colors: [.white, .white, .white, .gray]), startPoint: .top, endPoint: .bottom))
              .cornerRadius(10)
              .padding(.horizontal, 10)
          }
          Button(action: {
            color = Color.black
            AudioServicesPlaySystemSound (1104)
            progress += 0.01
          }) {
            Text("Black")
              .frame(minWidth: 0, maxWidth: .infinity)
              .padding()
              .foregroundColor(.white)
              .background(LinearGradient(gradient: Gradient(colors: [.black, .black, .black, .gray]), startPoint: .top, endPoint: .bottom))
              .cornerRadius(10)
              .padding(.horizontal, 10)
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
