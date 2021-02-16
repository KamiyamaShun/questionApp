//
//  ViewController.swift
//  questionApp
//
//  Created by 神山駿 on 2021/02/15.
//

import UIKit

class ViewController: UIViewController,NowScoreDelegate {
   

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var topScore: UILabel!
    
    var correctCount = 0
    var wrongCount = 0
    var maxScore = 0
    var questionNum = 0
    
    let imageslist = ImagesList()
    
    var pickedAnswer = false
    
    var soundFile = Sound()
    
    var changeColor = ChangeColor()
    var gradiantLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.layer.cornerRadius = 20.0
        changeColor.changeColor(topR: 0.07, topG: 0.13, topB: 0.26, topAl: 1.0, bottomR: 0.56, bottomG: 0.74, bottomB: 0.74, bottomAl: 1.0)
        gradiantLayer.frame = view.bounds
        view.layer.insertSublayer(gradiantLayer, at: 0)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        correctCount = 0
        wrongCount = 0
        questionNum = 0
        
        imageView.image = UIImage(named:imageslist.list[0].imageText)
        
        if UserDefaults.standard.object(forKey: "beforeCount") != nil{
            maxScore = UserDefaults.standard.object(forKey: "beforeCount")as! Int
        }
        topScore.text = String(maxScore)
    }

    @IBAction func answer(_ sender: Any) {
        if (sender as AnyObject).tag == 1{
            soundFile.playSound(fileName: "maruSound", extensionName: "mp3")
            pickedAnswer = true
            
        }else if (sender as AnyObject).tag == 2{
            soundFile.playSound(fileName: "batsuSound", extensionName: "mp3")
            pickedAnswer = false
        }
        check()
        nextQuestion()
        
    }
    
    func check(){
        let correctAnswer = imageslist.list[questionNum].answer
        
        if correctAnswer == pickedAnswer{
            print("o")
            correctCount += 1
        }else{
            print("x")
            wrongCount += 1
        }
    }
    
    func nextQuestion(){
        if questionNum <= 9{
            questionNum += 1
            imageView.image = UIImage(named: imageslist.list[questionNum].imageText)
        }else{
            print("fin")
            performSegue(withIdentifier: "next", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "next"{
            let nextVC = segue.destination as! NextViewController
            
            nextVC.correctedCount = correctCount
            nextVC.wrongCount = wrongCount
            nextVC.delegate = self
        }
    }
    func nowScore(score: Int) {
        soundFile.playSound(fileName: "sound", extensionName: "mp3")
        topScore.text = String(maxScore)
    }
    
}

