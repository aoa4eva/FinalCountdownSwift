//
//  ViewController.swift
//  FinalCountDown
//
//  Created by MC Student on 8/11/18.
//  Copyright © 2018 MC Student. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet var theStartButton: UIButton!
    @IBOutlet var countDownLabel: UILabel!
    var count : Int = 5
    var timer = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        countDownLabel.text = "5"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

 
    @IBAction func resetButton(_ sender: UIButton) {
        countDownLabel.text = "5"
        
    }
    
    @objc func update()
    {
        theStartButton.isEnabled = false
    
        count = count - 1
        countDownLabel.text = "\(count)"
        if(count<1)
                {
                    timer.invalidate()
                    theStartButton.isEnabled = true
                    
        }
        
    }
    
 @IBAction func startButton(_ sender: UIButton)
    {
      
         countDownLabel.text = "5"
        count = 5
         timer = Timer.scheduledTimer(timeInterval :1, target: self, selector: #selector(ViewController.update), userInfo: nil, repeats: true)
        
        

        
      /*  for  i in 0..<6
       // {
            
            
            
            countDownLabel.text = "5"
            sleep(1)
            countDownLabel.text = "4"
            sleep(2)
            countDownLabel.text = "3"
            sleep(1)
            countDownLabel.text = "2"
            sleep(2)
            countDownLabel.text = "1"
        
            
            /*    countDownLabel.text = String(i)
                sleep(10)
*/
         
       */
 
 }
    }




func update() {
    // Code here
}
