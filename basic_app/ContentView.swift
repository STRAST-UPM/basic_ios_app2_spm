import SwiftUI

struct ContentView: View {
    @State private var libraryManager = LibraryManager()
    @State private var showAlert = false
    @State private var lastLibraryCalled = ""

    var body: some View {
        VStack {
            Text("Bienvenido a la App 2")
                .font(.title)
                .padding()

            Button("Llamar a la Librería") {
                lastLibraryCalled = libraryManager.callLibraryFunction()
                showAlert = true
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Llamada a Librería"),
                      message: Text("Se ha llamado a: \(lastLibraryCalled)"),
                      dismissButton: .default(Text("OK")))
            }
        }
    }
}

#Preview {
    ContentView()
}
