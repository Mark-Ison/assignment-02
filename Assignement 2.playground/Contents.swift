// Created on: Sept 27
// Created by: Mark Ison
// Created for: ICS3CR
// This program is solves the distance of a an obje



import PlaygroundSupport

import UIKit

class ViewController : UIViewController {
    
    //properties
    let instructionLabel = UILabel()
    let secondTextField = UITextField()
    let calculateButton = UIButton()
    let totalDistance = UILabel()
    let height = Double(100.00)
    
    
    override func viewDidLoad() {
        //UI
        
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionLabel.text = "Enter the number of seconds the object was dropped"
        view.addSubview(instructionLabel)
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false 
        instructionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        
        
        secondTextField.borderStyle = UITextBorderStyle.roundedRect
        secondTextField.placeholder = "In cm      "
        view.addSubview(secondTextField)
        secondTextField.translatesAutoresizingMaskIntoConstraints = false
        secondTextField.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 20).isActive = true
        secondTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20).isActive = true
        
        
        
        calculateButton.setTitle("Calculate", for: UIControlState.normal)
        calculateButton.setTitleColor(.blue, for: .normal)
        calculateButton.addTarget(self, action: #selector(areaAndPerimeter), for: .touchUpInside)
        view.addSubview(calculateButton)
        calculateButton.translatesAutoresizingMaskIntoConstraints = false
        calculateButton.topAnchor.constraint(equalTo: secondTextField.bottomAnchor, constant: 20).isActive = true
        calculateButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        
        totalDistance.text = nil
        view.addSubview(totalDistance)
        totalDistance.translatesAutoresizingMaskIntoConstraints = false
        totalDistance.topAnchor.constraint(equalTo: calculateButton.bottomAnchor, constant: 20).isActive = true
        totalDistance.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        
    }
    
    @objc func areaAndPerimeter() {
        
        let seconds : Double = Double(secondTextField.text!)!
        let square = seconds * seconds
        let distanceTraveled = 0.50 * 9.81
        let distance = distanceTraveled * square 
        let distanceFromGround = height - distance
        
        totalDistance.text = "The distance from the ground is " + String(distanceFromGround)
        
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
}

//Xcode
PlaygroundPage.current.liveView = ViewController()
