import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>

    var body: some View {
        
        TabView {
            ZStack {
                Color.mint
                
//                NavigationView {
                    List {
                        Text("Item 1")
                        Text("Item 2")
                        Text("Item 3")
                        Text("Item 4")
                    }
                    
                    .scrollContentBackground(.hidden)
                    .navigationTitle("Items") // Set a title for the navigation bar
//                }
//                .frame(maxWidth: .infinity, maxHeight: .infinity) // Ensure the navigation view takes up all available space
            }
                .tabItem {
                    Label("Items", systemImage: "list.bullet")
                }
            
            
            

            Text("Completed Goals")
                .tabItem {
                    Label("Completed", systemImage: "checkmark")
                }
            
            Text("My Numbers")
                .tabItem { Label("Hub", systemImage: "house") }

            Text("Finance Section")
                .tabItem {
                    Label("Finance", systemImage: "dollarsign.circle")
                }
                .background(Color.green) // Applies green background to this section

            Text("Settings Section")
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
                .background(Color.green) // Applies green background to this section
        }
        .background(Color.green) // Applies green background to the TabView
    }


    private let itemFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .medium
        return formatter
    }()
}

#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
