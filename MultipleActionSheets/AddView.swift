
import SwiftUI

struct AddView: View {

    @Environment(\.presentationMode) var presentationMode

    @State var value: String = ""

    var body: some View {

        NavigationView {
            Form {
                TextField("Add Value", text: $value)
                    .padding()
            }
            .navigationBarTitle("Add")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Text("Cancel")
                    }
                }

                ToolbarItem(placement: .confirmationAction) {
                    Button(action: {
                        // Save your data here
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Text("Done")
                    }
                    .disabled(value.isEmpty)
                }
            }
        }
    }
}
