//
//  ViewController.swift
//  WonderDevice
//
//  Created by X on 9/17/17.
//  Copyright © 2017 X. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var StatePicker: UIPickerView!
    @IBOutlet weak var StatePickerButton: UIButton!
    @IBOutlet weak var CountryLable: UILabel!
    @IBOutlet weak var CountryField: UITextField!
    @IBOutlet weak var BuyNowButton: UIButton!
    
   
   
    
   
    let states = ["Alaska","Alabama","Arkansas","American Samoa","Arizona","California","Colorado","Connecticut","District of Columbia","Delaware","Florida",
                  "Georgia","Guam","Hawaii","Iowa", "Idaho","Illinois","Indiana","Kansas","Kentucky","Louisiana",
                  "Massachusetts","Maryland","Maine", "Michigan", "Minnesota","Missouri","Mississippi","Montana",
                  "North Carolina"," North Dakota","Nebraska","New Hampshire","New Jersey","New Mexico","Nevada",
                  "New York","Ohio","Oklahoma","Oregon","Pennsylvania","Puerto Rico","Rhode Island","South Carolina",
                  "South Dakota","Tennessee","Texas","Utah","Virginia","Virgin Islands","Vermont",
                  "Washington","Wisconsin","West Virginia","Wyoming"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        StatePicker.dataSource = self;
        StatePicker.delegate = self;
        
        // Do any additional setup after loading the view, typically from a nib.
        //self.view.backgroundColor = UIColor.purple;
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func StateButtonPressed(_ sender: Any) {
        StatePicker.isHidden = false;
        CountryField.isHidden = true;
        CountryLable.isHidden = true;
        BuyNowButton.isHidden = true;
        
        
    }
    
   
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row];
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        StatePickerButton.setTitle(states[row], for: UIControlState.normal);
        StatePicker.isHidden = true;
        CountryField.isHidden = false;
        CountryLable.isHidden = false;
        BuyNowButton.isHidden = false;
    }
    
    
}

