//
//  SecondViewController.swift
//  TrafficLight-HM9
//
//  Created by Haydar Bekmuradov on 14.07.22.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet var blackView: UIView!
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var startButton: UIButton!

    private var number = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    @IBAction func startButtonAction(_ sender: Any) {
        switch number {
        case 1:
            redView.alpha = 1
            greenView.alpha = 0.3
            number += 1
        case 2:
            yellowView.alpha = 1
            number += 1
        default:
            redView.alpha = 0.3
            yellowView.alpha = 0.3
            greenView.alpha = 1
            number = 1
        }
    }

    func setupUI() {
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3

        redView.layer.cornerRadius = 50
        yellowView.layer.cornerRadius = 50
        greenView.layer.cornerRadius = 50
        startButton.layer.cornerRadius = 10
    }
}
