import SwiftUI

struct SettingsView: View {

    @Environment(\.presentationMode) var presentationMode

    var body: some View {

        NavigationView {
            VStack {
                Text("Hello Settings")
            }
            .navigationBarTitle("Settings")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()

                    }) {
                        Text("Done")
                    }
                }
            }
        }
    }
}
