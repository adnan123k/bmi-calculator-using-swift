//
//  ViewController2.swift
//  BMI Calculator
//
//  Created by adnan alkharfan on 13/07/2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        res.text=bmi
        if(Double(bmi)!<18.5){
            label.text="eat more"
            
        }
        else if((18.5<=Double(bmi)!) && (Double(bmi)!<=24.9)){
            label.text="Congratulations on having a healthy weight"
        }
        else if((25<=Double(bmi)!) && (Double(bmi)!<=29.9)){
            label.text="You have to lose some weigh"
        }
        else if((30<=Double(bmi)!) && (Double(bmi)!<=34.9)){
            label.text="You should seek medical help to lose weight"
            label.font = UIFont(name: "Helvetica Neue", size: UIFont.preferredFont(forTextStyle: .body).pointSize)
        }
        else if((35<=Double(bmi)!) && (Double(bmi)!<=39.9)){
            label.text="You need urgent medical attention to lose weight"
            label.font = UIFont(name: "Helvetica Neue", size: UIFont.preferredFont(forTextStyle: .body).pointSize)
        }
        else{
            label.text="You need immediate intervention to lose weight"
            label.font = UIFont(name: "Helvetica Neue", size: UIFont.preferredFont(forTextStyle: .body).pointSize)
        }
        // Do any additional setup after loading the view.
    }
    var bmi=""

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var res: UILabel!
    @IBAction func rec(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
