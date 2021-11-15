//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Modified by Mariangela Duca
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var example = StoryBrain()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    
   
    @IBAction func choiceMade(_ sender: UIButton) {
        storyVariable = example.choiceMadeOutcome(sender.currentTitle!)
        print(sender.currentTitle!)
        updateUI()
        
    }
    
    func updateUI(){
        storyLabel.text = example.story[storyVariable].title
        choice1Button.setTitle(example.story[storyVariable].choice1, for: .normal)
        choice2Button.setTitle(example.story[storyVariable].choice2, for: .normal)
    }
    
    
    
        

    
  


}

