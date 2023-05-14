import UIKit
import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

enum SignColor: String {
    case red = "Red"
    case blue = "Blue"
    case yellow = "Yellow"
}

class TrafficLight {
    
    private var signColor: SignColor = .red
    private var timer: Timer?
    private var count = 0

    func start() {
        timer = Timer.scheduledTimer(
            timeInterval: 1,
            target: self,
            selector: #selector(timerAction),
            userInfo: nil,
            repeats: true
        )
    }
    
    @objc private func timerAction() {
      count += 1

      if signColor == .blue && count == 10 {
          print(SignColor.blue)
      }
        else if signColor == .yellow && count == 2 {
            print(SignColor.blue)
        }else if signColor == .red && count == 10 {
            print(SignColor.red)
            timer?.invalidate()
        }

    }
}

let trafficLight = TrafficLight()
trafficLight.start()
