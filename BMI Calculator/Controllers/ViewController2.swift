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
