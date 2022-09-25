//
//  ViewController.swift
//  choiceColorApp
//
//  Created by Эдос Эксузян on 24.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLable: UILabel!
    @IBOutlet var greenLable: UILabel!
    @IBOutlet var blueLable: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 20
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        
        setColor()
        
        setValue(for: redLable, greenLable, blueLable)
        
        
    }
    
    @IBAction func rgbSlider(_ sender: UISlider) {
        setColor()
        
        setValue(for: redLable, greenLable, blueLable)
    }
    
    private func setColor() {
        colorView.backgroundColor = UIColor (
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1.0
        )
    }
    
    private func setValue(for lables: UILabel...) {
        lables.forEach { lable in
            switch lable {
            case redLable:
                lable.text = string(from: redSlider)
            case greenLable:
                lable.text = string(from: greenSlider)
            default:
                lable.text = string(from: blueSlider)
            }
        }
    }
    
    private func string(from slider: UISlider) -> String {
        String(slider.value)
    }
}

