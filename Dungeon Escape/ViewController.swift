//
//  ViewController.swift
//  Dungeon Escape
//
//  Created by Caleb Voorhees on 2/24/20.
//  Copyright © 2020 Caleb Voorhees. All rights reserved.
//

import UIKit

// Hide keyboard with touch
extension UIViewController{

    func HideKeyboard(){
        let Tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(DismissKeyboard))
           
           view.addGestureRecognizer(Tap)
    }
    @objc func DismissKeyboard(){
        view.endEditing(true)
    }
}


class ViewController: UIViewController, UITextFieldDelegate {
    
    // Hide keyboard with return key
       func textFieldShouldReturn(_ textField: UITextField) -> Bool {
           self.view.endEditing(true)
       }
   
    // GUI aspects
    @IBOutlet weak var playerStatusBox: UITextView!
    @IBOutlet weak var outputBox: UITextView!
    @IBOutlet weak var commandLineContent: UITextField!
    
    // Images
    @IBOutlet weak var knightStatusPicture: UIImageView!
    @IBOutlet weak var mageStatusPicture: UIImageView!
    @IBOutlet weak var thiefStatusPicture: UIImageView!
    @IBOutlet weak var barbarianStatusPicture: UIImageView!
    @IBOutlet weak var warlockStatusPicture: UIImageView!
    @IBOutlet weak var assassinStatusPicture: UIImageView!
    
    // Attributes
    var name: String = ""
    var armour: Int = 0
    var strength: Int = 0
    var magic: Int = 0
    var intelligience: Int = 0
    var sneak: Int = 0
    var quickness: Double = 0
    
    // Damage and Health
    @IBOutlet weak var healthNumber: UILabel!
    var health: Int = 100
    let extraSmallDamage = Int.random(in: 1 ..< 5)
    let smallDamage = Int.random(in: 1 ..< 10)
    let mediumDamage = Int.random(in: 10 ..< 20)
    let largeDamage = Int.random(in: 20 ..< 30)
    
    // Choices
    var characterChosen: Bool = false
    var characterChoice: String = ""
    var choice1: String = ""
    var choice1Chosen: Bool = false
    var choice2: String = ""
    var choice3: String = ""
    var choice4: String = ""
    var choice5: String = ""
    var choice6: String = ""
    var choice7: String = ""
    var choice8: String = ""
    
    // Enter Button
    @IBOutlet weak var button1: UIButton!
    @IBAction func enterButton(_ sender: Any) {
        
        // Character choice menu
        characterChoice = commandLineContent.text!
        switch (characterChoice) {
        case "knight":
            armour = 8;
            strength = 8;
            magic = 3;
            intelligience = 4;
            sneak = 3;
            quickness = 4;
            name = commandLineContent.text!
            healthNumber.isHidden =  false
            
            knightStatusPicture.startAnimating()
            playerStatusBox.text = (" Class: Knight\t\t\t\t\t\t Health:   \n\nArmour: 8\t\t\t Strength: 8\t\t Magic: 3\t Intelligience: 4\t\t Sneak: 3\t\t Quickness: 4 \n\n")

            outputBox.text = ("Good choice! The knight is a well balanced character with heavy armour and strong attacks.\n\nAlright " + name + ", it's time to enter the dungeon, Don't let your health reach zero!\n\n As you enter the dungeon it splits into two directions, will you go \n\n================\n\t1. left \n\t2. right\n================")
        case "mage":
            armour = 4;
            strength = 1;
            magic = 9;
            intelligience = 7;
            sneak = 4;
            quickness = 5;
            name = commandLineContent.text!
            healthNumber.isHidden =  false
            
            mageStatusPicture.startAnimating()
            playerStatusBox.text = (" Class: Mage\t\t\t\t\t\t\t Health:   \n\nArmour: 4\t\t\t Strength: 2\t\t Magic: 10\t Intelligience: 8\t\t Sneak: 4\t\t Quickness: 2 \n\n")
            
            outputBox.text = ("Good choice! The mage is an intelligient character with high level magic. \n\nAlright " + name + ", it's time to enter the dungeon, Don't let your health reach zero!\n\n As you enter the dungeon it splits into two directions, will you go \n\n================\n\t1. left \n\t2. right\n================")
        case "thief":
            armour = 3;
            strength = 3;
            magic = 1;
            intelligience = 6;
            sneak = 9;
            quickness = 8;
            name = commandLineContent.text!
            healthNumber.isHidden =  false
            
            thiefStatusPicture.startAnimating()
            playerStatusBox.text = (" Class: Thief\t\t\t\t\t\t\t Health:   \n\nArmour: 3\t\t\t Strength: 3\t\t Magic: 1\t Intelligience: 6\t\t Sneak: 9\t\t Quickness: 8 \n\n")
            
            outputBox.text = ("Good choice! The thief is a quick and sneaky character.\n\nAlright " + name + ", it's time to enter the dungeon, Don't let your health reach zero!\n\n As you enter the dungeon it splits into two directions, will you go \n\n================\n\t1. left \n\t2. right\n================")
        case "barbarian":
            armour = 9;
            strength = 10;
            magic = 4;
            intelligience = 2;
            sneak = 2;
            quickness = 3;
            name = commandLineContent.text!
            healthNumber.isHidden =  false
            
            barbarianStatusPicture.startAnimating()
            playerStatusBox.text = ("Class: Barbarian\t\t\t\t\t Health:   \n\nArmour: 9\t\t\t Strength: 10\t\tMagic: 4 Intelligience: 2\t\tSneak: 2\t\t\tQuickness:3 \n\n")
            
            outputBox.text = ("Good choice! The barbarian has brute like strength and extremely heavy armour.\n\nAlright " + name + ", it's time to enter the dungeon, Don't let your health reach zero!\n\n As you enter the dungeon it splits into two directions, will you go \n\n================\n\t1. left \n\t2. right\n================")
        case "warlock":
            armour = 6;
            strength = 3;
            magic = 7;
            intelligience = 7;
            sneak = 2;
            quickness = 5;
            name = commandLineContent.text!
            healthNumber.isHidden =  false
            
            warlockStatusPicture.startAnimating()
            playerStatusBox.text = (" Class: Warlock\t\t\t\t\t\t Health:   \n\nArmour: 6\t\t\t Strength: 3\t\t Magic: 7\t Intelligience: 7\t\t Sneak: 2\t\t Quickness: 5 \n\n")
            
            outputBox.text = ("Good choice! The warlock is a well balanced character who is good in magic and protected by decent armour.\n\nAlright " + name + ", it's time to enter the dungeon, Don't let your health reach zero!/n/n As you enter the dungeon it splits into two directions, will you go \n\n================\n\t1. left \n\t2. right\n================")
        case "assassin":
            armour = 4;
            strength = 3;
            magic = 2;
            intelligience = 6;
            sneak = 6;
            quickness = 9;
            name = commandLineContent.text!
            healthNumber.isHidden =  false
            
            assassinStatusPicture.startAnimating()
            playerStatusBox.text = (" Class: Assasin\t\t\t\t\t\t Health:   \n\nArmour: 4\t\t\t Strength: 3\t\t Magic: 2\t Intelligience: 6\t\t Sneak: 8\t\t Quickness: 9 \n\n")
            
            outputBox.text = ("Good choice! The assasin is a sneaky character who hits hard and fast.\n\nAlright " + name + ", it's time to enter the dungeon, Don't let your health reach zero!\n\n As you enter the dungeon it splits into two directions, will you go \n\n================\n\t1. left \n\t2. right\n================")
        default:
            print("")
    }
      
    
    // Choice 1
        choice1 = commandLineContent.text!
        switch (choice1)
             {
    // Results of choosing left for choice 1
        case "left":
            
            if (strength > 4)
            {
                health = (health - extraSmallDamage)
                healthNumber.text = String(health)
                outputBox.text = ("You turn down a long corridor and at the end see a demon staring back at you.\n\nTo continue you're going to have to defeat the demon.\n\n==========================================================\nYou have great strength and defeating the the demon is no challenge, minimal damage taken. \n\n\tHealth is now ---->") + String(health) + ("\n==========================================================\n\n\nAs you continue you see two sets of stairs. One going up and one going down, will you go \n\n================\n\t up \n\t down\n================")
                
                
            }
            if (strength < 4)
            {
                health = (health - mediumDamage)
                healthNumber.text = String(health)
                outputBox.text = ("You turn down a long corridor and at the end see a demon staring back at you.\n\nTo continue you're going to have to defeat the demon.\n\n========================================================\nYou lack strength and defeating the demon is difficult. \n\n\tHealth is now ---->") + String(health) + ("\n==========================================================\n\nAs you continue you see two sets of stairs. One going up and one going down, will you go \n\n================\n\t up \n\t down\n================")
            }
            break;
            
    // Results of choosing right for choice 1
        case "right":
            
            if (armour < 5)
            {
                health = (health - mediumDamage)
                healthNumber.text = String(health)
                outputBox.text = ("Oh no you've walked into a bear trap!\n\n==========================================================\nYou have light armour causing more damage. \n\n\tHealth is now ---->" + String(health) +  "\n==========================================================\n\nYou've escaped the bear trap and you continue through the dungeon.\n\n\nAs you continue you see two sets of stairs. One going up and one going down, will you go \n\n================\n\t up \n\t down\n================")
                
            }
            if (armour > 5)
            {
                health = (health - extraSmallDamage)
                healthNumber.text = String(health)
                outputBox.text = ("Oh no you've walked into a bear trap!\n\n==========================================================\nYou have heavy armour causing less damage. \n\n\tHealth is now ---->" + String(health) + ("\n==========================================================\n\nYou've escaped the bear trap and you continue through the dungeon.\n\n\nAs you continue you see two sets of stairs. One going up and one going down, will you go \n\n================\n\t1. up \n\t2. down\n================"))
            }
            break;
        default:
             print("")
        }
    // Choice 2
        choice2 = commandLineContent.text!
        
        switch(choice2)
        {
    // Results of choosing up for choice 2
        case "up":
            if (intelligience > 5)
            {
                outputBox.text = ("As you proceed up the stairs there is a massive pit between you and where you need to go to continue through the dungeon. You must figure out a safe way to cross.\n\n==========================================================\nYou have the necessary intelligience to find a safe way across, no damage taken.\n==========================================================\n\nAs you continue through the dungeon there is a hatch to decend or a ladder to climb up. Will you  \n\n==========================\n\t1. climb up \n\t2. decend down\n==========================")
            }
            if (intelligience < 5)
            {
                health = (health - mediumDamage)
                healthNumber.text = String(health)
                outputBox.text = ("As you proceed up the stairs there is a massive pit between you and where you need to go to continue through the dungeon. You must figure out a safe way to cross.\n\n==========================================================\nYou lack the intelligience to find a way across so you attempt to jump. In the process you smash your face on the ledge causing damage to you. \n\n\tHealth is now ---->" + String(health) + "\n==========================================================\n\nAs you continue through the dungeon there is a hatch to decend or a ladder to climb up. Will you  \n\n==========================\n\t1. climb up \n\t2. decend down\n==========================")
            }
            
    // Results of choosing down for choice 2
        case "down":
            if(magic > 6)
            {
                outputBox.text = ("As you proceed down the stairs you reach a magicly sealed door. You will need to use magic to break the seal.\n==========================================================\nYour skills in magic are strong enough to break the magic seal and you continue through the dungeon.\n==========================================================\n\nAs you continue through the dungeon there is a hatch to decend or a ladder to climb up. Will you  \n\n==========================\n\t1. climb up \n\t2. decend down\n==========================")
            }
            if(magic < 6)
            {
                health = (health - largeDamage)
                healthNumber.text = String(health)
                outputBox.text = ("As you proceed down the stairs you reach a magicly sealed door. You will need to use magic to break the seal\n=========================================================\nYour skills in magic are inadequit and you are forced to break down the magic seal using physical force. This does a great amount of damage to you. \n\n\tHealth is now ---->" + String(health) + "\n==========================================================\n\nAs you continue through the dungeon there is a hatch to decend or a ladder to climb up. Will you  \n\n==========================\n\t1. climb up \n\t2. decend down\n==========================")
            }
            
        default:
             print("")
        }
        
    // Choice 3
        choice3 = commandLineContent.text!
        switch(choice3)
        {
    // Results of choosing climb up for choice 3
        case "climb up":
            if(quickness > 6)
            {
                outputBox.text = ("As you reach the top of the ladder you trigger a trap and suddenly a boulder falls from above!\n==========================================================\nYour quickness saves you from a big loss of health, no damage taken.\n==========================================================\n\nYou continue through a long corridor and see two doors. Will you go through the \n\n==========================\n\t1. left door \n\t2. right door\n========================== ")
            }
            
            if (quickness < 6)
            {
                health = (health - largeDamage)
                healthNumber.text = String(health)
                 outputBox.text = ("As you reach the top of the ladder you trigger a trap and suddenly a boulder falls from above!\n==========================================================\nYou are not quick enough and the boulder crushes you dealing big damage. \n\n\tHealth is now ---->" + String(health) + "\n==========================================================\n\nYou continue through a long corridor and see two doors. Will you go through the \n\n==========================\n\t1. left door \n\t2. right door\n========================== ")
            }
            break;
            
    // Results of choosing descend down for choice 3
        case "descend down":
            if (sneak > 5)
            {
                outputBox.text = "As you decend down deeper you come across an enemy three times your size, you'll have to sneak past to have any chance of surviving.\n==========================================================\nYou are able to sneak past the beast without being noticed, no damage taken.\n==========================================================\n\nYou continue through a long corridor and see two doors. Will you go through the \n\n==========================\n\t1. left door \n\t2. right door\n========================== "
            }
            
            if (sneak < 5 && strength > 7)
            {
                health = (health - smallDamage)
                healthNumber.text = String(health)
                outputBox.text = "As you decend down deeper you come across an enemy three times your size, you'll have to sneak past to have any chance of surviving.\n==========================================================\nYou aren't quiet enough and the beast notices you. However your strength allows you to fend him off and escape with minimul damage. \n\n\tHealth is now ---->" + String(health) + "\n==========================================================\n\nYou continue through a long corridor and see two doors. Will you go through the \n\n==========================\n\t1. left door \n\t2. right door\n========================== "
            }
            
            if (sneak < 5 && strength < 7)
            {
                health = (health - largeDamage)
                healthNumber.text = String(health)
                outputBox.text = "As you decend down deeper you come across an enemy three times your size, you'll have to sneak past to have any chance of surviving.\n==========================================================\nYou aren't quiet enough and the beast notices you. When the beast attacks you lack the strength needed to fend it off and you take a large amount of damage before you are able to escape. \n\n\tHealth is now ---->" + String(health) + "\n==========================================================\n\nYou continue through a long corridor and see two doors. Will you go through the \n\n==========================\n\t1. left door \n\t2. right door\n========================== "
            }
            break
        default:
              print("")
        }
        
        // Choice 4
        choice4 = commandLineContent.text!
        
        switch (choice4)
        {
        // Results of choosing left door for choice 4
        case "left door":
            health = (health + 20)
            healthNumber.text = String(health)
            outputBox.text = "As you advance through the left door you discover a large health potion laying on the ground.\n\n==========================================================\nYou happily drink the large potion and gain 20 health. \n\n\tHealth is now ---->" + String(health) +  "\n==========================================================\nYou come into a large open room, to go left you must swim across a pool of murky water. To go right you must do battle with a small myserious cloaked creature. Will you \n\n==========================\n\t1. swim \n\t2. do battle\n=========================="
            break
        // Reuslts of choosing right door for choice 4
        case "right door":
            health = (health + 10)
            healthNumber.text = String(health)
            outputBox.text = "As you advance through the right door you discover a small health potion laying on the ground.\n\n==========================================================\nYou happily drink the small potion and gain 10 health. \n\n\tHealth is now ---->" + String(health) + "\n==========================================================\nYou come into a large open room, to go left you must swim across a pool of murky water. To go right you must do battle with a small myserious cloaked creature. Will you \n\n==========================\n\t1. swim \n\t2. do battle\n=========================="
            break
            
        default:
             print("")
        }
        // Choice 5
        choice5 = commandLineContent.text!
        switch (choice5)
        {
        // Reuslts of choosing swim for choice 5
        case "swim":
            if (magic > 5)
            {
                outputBox.text = "As you swim across the murky water an ancient croc rises from the depths to attack you!\n==========================================================\nYou are rendered helpless in the water however your magic saves you as you're able to cast a roaring fire spell that scorches the croc to death. Health remains unchanged.  \n==========================================================\nAs you enter the last room in the dungeon there is a large evil dragon that must be defeated for you to escape the dungeon. Will you \n\n===============================\n\t1. strike hard \n\t2. maneuver around\n==============================="
            }
            
            if (magic < 5)
            {
                health = (health - largeDamage)
                healthNumber.text = String(health)
                outputBox.text = "As you swim across the murky water an ancient croc rises from the depths to attack you!\n==========================================================\nYou are rendered helpless in the water and have no way to \ndefend yourself. Large damage taken. \n\n\tHealth is now ---->" + String(health) + "\n==========================================================\nAs you enter the last room in the dungeon there is a large evil dragon that must be defeated for you to escape the dungeon. Will you \n\n===============================\n\t1. strike hard \n\t2. maneuver around\n==============================="
            }
            break
            
        // Results of choosing do battle for choice 5
        case "do battle":
            if (quickness > 7)
            {
                health = (health + 10)
                healthNumber.text = String(health)
                outputBox.text = "As you begin battle with the mysterious creature it attacks with unbelievable speed!\n==========================================================\nYou react to the attacks with equal speed and defeat the mysterious creature. You find a health potion in his bag which restores 10 health. \n\n\tHealth is now ---->" + String(health) + "\n==========================================================\nAs you enter the last room in the dungeon there is a large evil dragon that must be defeated for you to escape the dungeon. Will you \n\n===============================\n\t1. strike hard\n\t2. maneuver around\n==============================="
            }
            
            if (quickness < 7)
            {
                health = (health - mediumDamage)
                healthNumber.text = String(health)
                outputBox.text = "As you begin battle with the mysterious creature it attacks with unbelievable speed!\n==========================================================\nYou cannot compete with the speed of the mysterious creatures attacks and he deals a decent amount of damage before you strike a crushing blow from pure luck. \n\n\tHealth is now ---->" + String(health) + "\n==========================================================\nAs you enter the last room in the dungeon there is a large evil dragon that must be defeated for you to escape the dungeon. Will you \n\n===============================\n\t1. strike hard \n\t2. maneuver around \n==============================="
            }
            break
        default:
               print("")
        }
        
        // Choice 6 (boss fight)
        choice6 = commandLineContent.text!
        switch (choice6)
        {
        // Results of choosing strike hard for choice 6
        case "strike hard":
            if (strength > 7)
            {
                outputBox.text = "As you go in for a hard strike the demon grasps you with his massive claw.\n==========================================================\n\nYou're strong enough to break the grip of the dragon and you swing your weapon cutting off his claw.\n\n\tHealth is ---->" + String(health) + "\n==========================================================\n\nThe massive dragon now moves in to attack you swinging down his massive tail! Will you \n\n===============================\n\t1. block \n\t2. dodge\n==============================="
            }
            
            if (strength < 7)
            {
                outputBox.text = "As you go in for a hard strike the demon grasps you with his massive claw.\n\n==========================================================\nYou're not strong enough to break the grip of the dragon and he crushes you to death.\n==========================================================\n\nYour journey has ended " + name + ", better luck next time.\n\n\tFinal Score: " + String(health)
            }
            break
            
        // Results of choosing maneuver around for choice 6
        case "maneuver around":
            if (intelligience > 5)
            {
                health = (health + 10)
                healthNumber.text = String(health)
                outputBox.text = "You manuever around and find a ledge you must jump onto.\n\n==========================================================\nYou make a well calculated jump onto the ledge and find a health potion.\n\n\tHealth is now ---->" + String(health) + "\n==========================================================\n\nThe massive dragon now moves in to attack you swinging down his massive tail! Will you \n\n===============================\n\t1. block \n\t2. dodge\n==============================="
            }
            
            if (intelligience < 5)
            {
                outputBox.text = "You manuever around and find a ledge you must jump onto.\n\n==========================================================\nYou attempt to jump onto the ledge but fail and fall down to your death.\n==========================================================\n\nYour journey has ended " + name + ", better luck next time.\n\n\tFinal Score: " + String(health)
            }
            break
        default:
             print("")
        }
        
        // Choice 7
        choice7 = commandLineContent.text!
        switch (choice7)
        {
        // Results of choosing block for choice 7
        case "block":
            if (armour > 5)
            {
                outputBox.text = "You test the might of your armour against the dragons tail.\n==========================================================\nYour armour holds strong against the massive force of the swing as the dragons tail breaks over you.\n==========================================================\n\nYou see an oppurtunity to strike the dragon in the heart and kill it but you must first make a crucial choice. Will you \n\n===================================================\n\t1. attack with magic  \n\t2. attack with a blade\n==================================================="
            }
            
            if (armour < 5)
            {
                outputBox.text = "You test the might of your armour against the dragons tail.\n==========================================================\nYour armour is too weak and the power of the dragons tail crushes you to death.\n==========================================================\n\nYour journey has ended " + name + ", better luck next time.\n\n\tFinal Score: " + String(health)
            }
            break
            
        // Results of choosing dodge for choice 7
        case "dodge":
            if (quickness > 4.5)
            {
                outputBox.text = "You test your speed and quickness as the tail comes down at you.\n\n==========================================================\nYou are able to quickly jump out of the way and dodge the deadly swing.\n==========================================================\n\nYou see an oppurtunity to strike the dragon in the heart and kill it but you must first make a crucial choice. Will you \n\n===================================================\n\t1. attack with magic  \n\t2. attack with a blade\n==================================================="
            }
            
            if (quickness < 4.5)
            {
                outputBox.text = "You test your speed and quickness as the tail comes down at you.\n\n==========================================================\nYou are not able to jump out of the way quick enough and the deadly tail swing crushes you to death.\n==========================================================\n\nYour journey has ended " + name + ", better luck next time.\n\n\tFinal Score: " + String(health)
            }
            break
        default:
             print("")
            
        }
        
        // Choice 8
        choice8 = commandLineContent.text!
        switch (choice8)
        {
        // Results of choosing attack with magic
        case "attack with magic":
            if (magic > 5)
            {
                health = (health + 10)
                outputBox.text = "You try to charge up as much magical strength as you can to land a deadly strike on the dragon.\n\n==========================================================\nYour magic strike is so powerful it blows the dragon to pieces and you finally can escape through the dungeon exit that lies behind him.\n==========================================================\nYou've escaped the dungeon succesfully! \n\n\tFinal score ---->" + String(health)
            }
            
            if (magic < 5)
            {
                outputBox.text = "You try to charge up as much magical strength as you can to land a deadly strike on the dragon.\n\n==========================================================\nYour magic skills are inadequate and the dragon happily devours you after your magic attack fails.\n==========================================================\n\nYour journey has ended " + name + ", better luck next time.\n\n\tFinal Score: " + String(health)
            }
            break
        // Results of choosing attack with a blade
        case "attack with a blade":
    
            if(armour > 5)
            {
                health = (health + 10)
                outputBox.text = "You charge at the dragon with your weapon drawn preparing to strike a killing blow.\n\n==========================================================\nAs the dragon sees you make your charge he shoots his scorching\nflame breath at you but your armour protects you from its heat and you drive your blade into the dragons heart killing him instantly.\n==========================================================\nYou've escaped the dungeon succesfully! \n\n\tFinal score ---->" + String(health)
            }
            
            if (armour < 5)
            {
                outputBox.text = "You charge at the dragon with your weapon drawn preparing to strike a killing blow.\n\n==========================================================\nThe dragon sees you charging towards him and he shoots his scorching flame breath at \nyou. Your armour stands no chance and your instantly melted into a pile of flesh\n==========================================================\nYour journey has ended " + name + ", better luck next time.\n\n\tFinal Score: " + String(health)
            }
            break
            
        default:
              print("")
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    // Used a label for the health shown in the player status box
        healthNumber.isHidden = true
    
    // Part of hiding keyboard
        self.commandLineContent.delegate = self
        self.HideKeyboard()
        
    // One frame animations displayed for each character
        let knight: [UIImage] = [
            UIImage(named: "Knight")!,
            ]
        knightStatusPicture.animationImages = knight
        
        let mage: [UIImage] = [
            UIImage(named: "Mage")!,
            ]
        mageStatusPicture.animationImages = mage
        
        let thief: [UIImage] = [
            UIImage(named: "Thief")!,
            ]
        thiefStatusPicture.animationImages = thief
        
        let barbarian: [UIImage] = [
            UIImage(named: "Barbarian")!,
            ]
        barbarianStatusPicture.animationImages = barbarian
        
        let warlock: [UIImage] = [
            UIImage(named: "Warlock")!,
            ]
        warlockStatusPicture.animationImages = warlock
        
        let assassin: [UIImage] = [
            UIImage(named: "Assassin")!,
            ]
        assassinStatusPicture.animationImages = assassin
    }




}
