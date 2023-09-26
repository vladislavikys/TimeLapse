//
//  ViewController.swift
//  TimeLapse
//
//  Created by Влад on 24.09.23.
//

import UIKit

class ViewController: UIViewController {

    var clipsValue = 1
    
    
    
    @IBOutlet weak var clipLengthTF: UITextField!
    @IBOutlet weak var clipLengthSC: UISegmentedControl!
    
    @IBOutlet weak var totalTimeTF: UITextField!
    @IBOutlet weak var totalTimeSC: UISegmentedControl!
    
    @IBOutlet weak var fpsTF: UITextField!
    
    @IBOutlet weak var imageSizeTF: UITextField!
    
    @IBOutlet weak var intervalTF: UITextField!
    @IBOutlet weak var intervalSC: UISegmentedControl!
    
    @IBOutlet weak var numberTF: UITextField!
    
    @IBOutlet weak var memorySizeTF: UITextField!
    @IBOutlet weak var memorySizeSC: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clipLengthSC.selectedSegmentIndex = 0
        clipLengthSC.addTarget(self, action: #selector(secondMinut), for: .valueChanged)
        
        totalTimeSC.selectedSegmentIndex = 0
        totalTimeSC.addTarget(self, action: #selector(hrsDay), for: .valueChanged)
        
        intervalSC.selectedSegmentIndex = 0
        intervalSC.addTarget(self, action: #selector(secondMinut), for: .valueChanged)
        
        memorySizeSC.selectedSegmentIndex = 0
        memorySizeSC.addTarget(self, action: #selector(mbGb), for: .valueChanged)
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


extension ViewController{
    @objc func secondMinut(_ sender: UISegmentedControl){
        let selectIndex = sender.selectedSegmentIndex
        
        switch selectIndex{
        case 0:
            print("выбраны сек")
        case 1:
            print("выбраны мин")
        default:
            break

        }
        
    }
    
    @objc func hrsDay(_ sender: UISegmentedControl){
        let selectIndex = sender.selectedSegmentIndex
        
        switch selectIndex{
        case 0:
            print("выбраны hrs")
        case 1:
            print("выбраны days")
        default:
            break

        }
        
    }
    
    @objc func mbGb(_ sender: UISegmentedControl){
        let selectIndex = sender.selectedSegmentIndex
        
        switch selectIndex{
        case 0:
            print("выбраны mb")
        case 1:
            print("выбраны gb")
        default:
            break

        }
        
    }
    
    
    
    
}
