//
//  ViewController.swift
//  HelloButtonStoryBoard
//
//  Created by Yuanhang on 3/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var incrementButton: UIButton!
    @IBOutlet weak var decrementButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var label: UILabel!
    var counter=1;
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
        // Do any additional setup after loading the view.
    }


    @IBAction func pressedButton(_ sender: Any) {
        let button : UIButton=sender as! UIButton
        print(button.tag)
        if button.tag == -1{
            counter-=1
        }else if button.tag == 0 {
            counter=0
        }else if button.tag==1 {
            counter+=1
        }else{
            print("Something went wrong! Unexpected tag")
        }
        
        updateView()
    }
    
    func updateView(){
        label.text="Counter= \(counter)"
    }
}

