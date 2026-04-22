import Foundation

class FlashingManager: ObservableObject {
    @Published var progress: Double = 0.0
    @Published var status: String = "Idle"
    @Published var isFlashing = false

    func startFlash(binary: Data) {
        isFlashing = true
        progress = 0
        status = "Initializing..."

        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { timer in
            self.progress += 0.05

            if self.progress >= 1.0 {
                self.progress = 1.0
                self.status = "Flash Complete"
                self.isFlashing = false
                timer.invalidate()
            } else {
                self.status = "Flashing... \(Int(self.progress * 100))%"
            }
        }
    }
}