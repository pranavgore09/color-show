//
//  ViewController.swift
//  ColorShow
//
//  Created by Pranav Gore on 17/06/15.
//  Copyright (c) 2015 Pranav Gore. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let dataSource = ["red", "blue", "green", "black"]
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataSource.count
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return dataSource[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var bgColor = UIColor()
        switch row{
        case 0:
            bgColor = UIColor.redColor()
        case 1:
            bgColor = UIColor.blueColor()
        case 2:
            bgColor = UIColor.greenColor()
        default:
            bgColor = UIColor.blackColor()
        }
        self.view.backgroundColor = bgColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

