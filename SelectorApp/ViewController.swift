//
//  ViewController.swift
//  SelectorApp
//
//  Created by User on 13/01/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func show(_ sender: Any) {
        let alert = UIAlertController(title: "value", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Fermer", style : .default, handler: nil)
        
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func slider(_ sender: Any) {
        if let slid = sender as? UISlider{
            /*let roudValue = 100*slider.value
            label.text = "\(roudValue)"
        */
            newValue(value: slid.value)
             }
    }
    
    func newValue(value: Float){
        let roundedValue = Int(100*value)
        label.text = "Value: \(roundedValue)"
    }
    
}

