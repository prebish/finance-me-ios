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
                LinearGradient(
                    gradient: Gradient(colors: [Color.gray, Color.green.opacity(1)]),
                    startPoint: .topTrailing,
                    endPoint: .bottomLeading
                )
                
                
                VStack {
                    NavigationView { // NavigationView wraps the entire view hierarchy
                        VStack {
                            // main content area
                            
                            HStack {
                                // All
                                Button(action: {
                                    print("Show all")
                                }) {
                                    Text("All")
                                        .padding()
                                        .background(.green)
                                        .foregroundColor(.black)
                                }.padding()
                                
                                // Short Term
                                Button(action: {
                                    print("Hello World")
                                }) {
                                    Text("Short Term")
                                        .padding()
                                        .background(.green)
                                        .foregroundColor(.black)
                                }.padding()
                                
                                //Long term
                                Button(action: {
                                    print("Hello World")
                                }) {
                                    Text("Long Term")
                                        .padding()
                                        .background(.green)
                                        .foregroundColor(.black)
                                }
                                .padding()
                                
                            }
                            
                            List {
                                Text("Item 1")
                                Text("Item 2")
                                Text("Item 3")
                                Text("Item 4")
                            }
                            .padding()
                            .navigationTitle("Items")
                            
                            
                        }
                        .navigationBarItems(trailing: HStack {
                            Button("button", systemImage: "plus") {print("Plus added")}
                            Button("Edit") {print("Edit tapped")}
                        })
                    }

                }
            }
                .tabItem {
                    Label("Goals", systemImage: "list.bullet")
                }
          
            Text("Completed Goals")
                .tabItem {
                    Label("Completed", systemImage: "checkmark")
                }
            
            HubView()
                .tabItem { Label("Hub", systemImage: "house") }

            Text("Finance Section")
                .tabItem {
                    Label("Finance", systemImage: "dollarsign.circle")
                }
                .background(Color.green) // Applies green background to this section

            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
        }
        .accentColor(Color.mint)
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
