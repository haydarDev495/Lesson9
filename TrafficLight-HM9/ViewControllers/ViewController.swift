//
//  ViewController.swift
//  TrafficLight-HM9
//
//  Created by Haydar Bekmuradov on 13.07.22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var trafficLightImageView: UIImageView!
    @IBOutlet var startStopButton: UIButton!
    
    private var timer = Timer()
    private var buttonSwitched: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func startStopButtonAction(_ sender: Any) {
        self.buttonSwitched = !self.buttonSwitched

        if self.buttonSwitched {
            startStopButton.setImage(UIImage(named: "button_stop"), for: .normal)
            redLight()
        } else {
            startStopButton.setImage(UIImage(named: "button_start"), for: .normal)
//            trafficLightImageView.image = UIImage(named: "semafor_grey")
            timer.invalidate()
        }
    }
}

// MARK: - UI

extension ViewController {
    @objc func redLight() {
        trafficLightImageView.image = UIImage(named: "semafor_red")
//         DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
//             self.yellowLight()
//         }

        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(yellowLight), userInfo: nil, repeats: false)
    }

    @objc func yellowLight() {
        trafficLightImageView.image = UIImage(named: "semafor_yellow")
//         DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
//             self.greenLight()
//         }
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(greenLight), userInfo: nil, repeats: false)
    }

    @objc func greenLight() {
        trafficLightImageView.image = UIImage(named: "semafor_green")
//         DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
//             self.redLight()
//         }
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(redLight), userInfo: nil, repeats: false)
    }
}
