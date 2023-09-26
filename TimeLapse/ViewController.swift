//
//  ViewController.swift
//  TimeLapse
//
//  Created by Влад on 24.09.23.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var clipLengthTF: UITextField!
    @IBOutlet weak var clipLengthSC: UISegmentedControl!
    
    @IBOutlet weak var totalTimeTF: UITextField!
    @IBOutlet weak var totalTimeSC: UISegmentedControl!
    
    @IBOutlet weak var fpsTF: UITextField!
    
    @IBOutlet weak var imageSizeTF: UITextField!
    @IBOutlet weak var imageSizeSC: UISegmentedControl!
    
    @IBOutlet weak var intervalTF: UITextField!
    @IBOutlet weak var intervalSC: UISegmentedControl!
    
    @IBOutlet weak var numberTF: UITextField!
    
    @IBOutlet weak var memorySizeTF: UITextField!
    
    @IBOutlet weak var memorySizeSC: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func calcButton(_ sender: UIButton) {
        let one  = Int(clipLengthTF.text!)!
        let two = Int(totalTimeTF.text!)!
        let three = Int(fpsTF.text!)!
        let four = Int(imageSizeTF.text!)!
        
        let number = one * three
        let interval = Double(two * 60 * 60) / Double(number)
        
        
        let size = four * number
        
        intervalTF.text = String(interval)
        numberTF.text = String(number)
        memorySizeTF.text = String(size)
        
        
        
        
        
        
        
        
        
    }
}

