import Foundation

class LiveDataManager: ObservableObject {
    @Published var rpm: Int = 0
    @Published var speed: Int = 0
    @Published var coolantTemp: Int = 0

    func updateRandomizedDemoData() {
        rpm = Int.random(in: 650...6000)
        speed = Int.random(in: 0...120)
        coolantTemp = Int.random(in: 70...110)
    }
}