import SwiftUI

struct LiveDataView: View {
    @StateObject var live = LiveDataManager()

    var body: some View {
        VStack(spacing: 20) {
            Text("Live Engine Data")
                .font(.largeTitle)

            VStack(alignment: .leading, spacing: 8) {
                Text("RPM: \(live.rpm)")
                Text("Speed: \(live.speed) mph")
                Text("Coolant Temp: \(live.coolantTemp) °C")
            }
            .font(.title2)

            Button("Update Data") {
                live.updateRandomizedDemoData()
            }
            .padding()
        }
        .padding()
    }
}