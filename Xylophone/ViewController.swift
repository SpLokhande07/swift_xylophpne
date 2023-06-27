//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player : AVAudioPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonC(_ sender: UIButton) {
        playSound(fileName: "C")
    }
    
    
    @IBAction func buttonD(_ sender: UIButton) {
        playSound(fileName: "D")
    }
    
    
    @IBAction func buttonE(_ sender: UIButton) {
        playSound(fileName: "E");
    }
    
    @IBAction func buttonF(_ sender: UIButton) {
        playSound(fileName: "F");
    }
    
    @IBAction func buttonG(_ sender: UIButton) {
        playSound(fileName: "G");
        
    }
    
    @IBAction func buttonA(_ sender: UIButton) {
        playSound(fileName: "A");
    }
    
    @IBAction func buttonB(_ sender: UIButton) {
        playSound(fileName: "B");
    }
    func playSound(fileName : String){
         guard let url = Bundle.main.url(forResource: fileName, withExtension: "wav")
        else {return}
             
             player = try! AVAudioPlayer(contentsOf: url)
             
             guard let player = player else {return}
                 player.play()
     }
     


}
    
 
