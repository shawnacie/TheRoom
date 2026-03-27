import SwiftUI
struct ContentView: View {
  @State var room = [
      Room(name: "Room A", isBooked: false), 
      Room(name: "Room B", isBooked: false)
  ]

  var body: some View {
      NavigationView  {
          List {
              ForEach(rooms.indices, id: \.self) { index in
                  HStack {
                      Text(rooms[index].name
                      Spacer()
                      Button(rooms[index].isBooked ? "Cancel" : "Book") {
                          rooms[index].isBooked.toggle()
                      }
                   }
                }
            }
            .navigationTitle("room Booking")  
        }
    }
}
