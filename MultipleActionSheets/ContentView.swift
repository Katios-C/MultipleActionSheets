import SwiftUI

struct ContentView: View {

    enum Sheets: Identifiable {
        case settings, add

        var id: Int {
            self.hashValue
        }
    }

    @State var activeSheet: Sheets?

    var body: some View {

        NavigationView {
            VStack {
                Text("Hello Toolbar")
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        self.activeSheet = .settings
                    }) {
                        Image(systemName: "gear")
                    }
                }

                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        self.activeSheet = .add
                    }) {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(item: $activeSheet, onDismiss: { activeSheet = nil }) { item in
                switch item {
                case .settings:
                    SettingsView()
                case .add:
                    AddView()
                }
            }

        }
        
    }
}

struct Previews_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
