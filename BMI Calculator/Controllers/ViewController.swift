//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var w: UILabel!
    @IBOutlet weak var heightslider: UISlider!
    
    @IBOutlet weak var weightslider: UISlider!
    @IBAction func cal(_ sender: UIButton) {
        
       
        self.performSegue(withIdentifier: "gotor", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if(heightslider.value==0 ){
            (segue.destination as! ViewController2).bmi="0"
            
        }
        else{
            (segue.destination as! ViewController2).bmi=String(format: "%.1f",weightslider.value/pow(heightslider.value,2 ))
            
        }
    }
    @IBAction func slider1(_ sender: UISlider) {
        height.text = "\(((Float(sender.value)*100).rounded())/100.0)m"
    }
    
    @IBAction func silder2(_ sender: UISlider) {
        w.text = "\(Int(sender.value))kg"
    }
}

