//
//  ViewController.swift
//  VPet
//
//  Created by Mac for Rav on 9/23/19.
//  Copyright © 2019 RayZhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var dog : pets?
    var bunny : pets?
    var bird : pets?
    var cat : pets?
    var fish : pets?
    
    var currentPet : pets!
    
    
    @IBOutlet weak var playedLabel: UILabel!
    @IBOutlet weak var fedLabel: UILabel!
    @IBOutlet weak var petImage: UIImageView!
    @IBOutlet weak var background: UIView!
    @IBAction func feed(_ sender: Any) {
        currentPet.feed()
        updateView()
    }
    @IBAction func advent(_ sender: Any) {
        currentPet.advent()
        updateView()
    }
    @IBAction func play(_ sender: Any) {
        currentPet.play()
        updateView()
    }
    
    
    @IBOutlet weak var happinessView: DisplayView!
    
    @IBOutlet weak var foodLevelView: DisplayView!
    
    
    
    
    
    @IBAction func changeToD(_ sender: Any) {
        currentPet = dog!
        background.backgroundColor = UIColor.red
        happinessView.color = UIColor.red
        foodLevelView.color = UIColor.red
        petImage.image = UIImage(named: "dog")
        updateView()
    }
    @IBAction func changeToC(_ sender: Any) {
        currentPet = cat!
        background.backgroundColor = UIColor.blue
        happinessView.color = UIColor.blue
        foodLevelView.color = UIColor.blue
        petImage.image = UIImage(named: "cat")
        updateView()
    }
    @IBAction func changeToBird(_ sender: Any) {
        currentPet = bird!
        background.backgroundColor = UIColor.yellow
        happinessView.color = UIColor.yellow
        foodLevelView.color = UIColor.yellow
        petImage.image = UIImage(named: "bird")
        updateView()
    }
    @IBAction func changeToBunny(_ sender: Any) {
        currentPet = bunny!
        background.backgroundColor = UIColor.cyan
        happinessView.color = UIColor.cyan
        foodLevelView.color = UIColor.cyan
        petImage.image = UIImage(named: "bunny")
        updateView()
    }
    @IBAction func changeToF(_ sender: Any) {
        currentPet = fish!
        background.backgroundColor = UIColor.purple
        happinessView.color = UIColor.purple
        foodLevelView.color = UIColor.purple
        petImage.image = UIImage(named: "fish")
        updateView()
    }
    
    func updateView(){
        playedLabel.text = "played : \(currentPet.tPlayed)"
        fedLabel.text = "fed : \(currentPet.tFeed)"
        let happinessViewValue = Double(currentPet.happiness)/10
        happinessView.animateValue(to: CGFloat(happinessViewValue))
        let foodLevelViewValue = Double(currentPet.foodLevel)/10
        foodLevelView.animateValue(to: CGFloat(foodLevelViewValue))
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        dog = pets(breed: "dog")
        bunny = pets(breed: "bunny")
        bird = pets(breed: "bird")
        cat = pets(breed: "cat")
        fish = pets(breed: "fish")
        currentPet = dog
        happinessView.color = UIColor.red
        foodLevelView.color = UIColor.red
        updateView()
    }


}

