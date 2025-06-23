//
//  ViewController.swift
//  diceRoll
//
//  Created by Mokhinur on 03/06/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceNumber1: UILabel!
    
    @IBOutlet weak var diceImage1: UIImageView!
    
    
    
    @IBOutlet weak var diceNumber2: UILabel!
    
    
    @IBOutlet weak var diceImage2: UIImageView!
    
    @IBOutlet weak var sumLabel: UILabel!
    
    
    override func viewDidLoad() {
          super.viewDidLoad()
          
          diceImage1.image = UIImage(named: "dice-1")
          diceImage2.image = UIImage(named: "dice-1")
          diceNumber1.text = "1"
          diceNumber2.text = "1"
          sumLabel.text = "Sum: 2"
      }
      
      func generate() -> Int {
          return Int.random(in: 1...6)
      }
      
      func changeImage(for imageView: UIImageView, number: Int) {
          let imageName = "dice-\(number)"
          imageView.image = UIImage(named: imageName)
      }
        
        @IBAction func diceRoll(_ sender: UIButton) {
            let number1 = generate()
                    let number2 = generate()
                    
                    diceNumber1.text = String(number1)
                    diceNumber2.text = String(number2)
                    
                    changeImage(for: diceImage1, number: number1)
                    changeImage(for: diceImage2, number: number2)
                    
                    let sum = number1 + number2
                    sumLabel.text = "Sum: \(sum)"
                }
            }

