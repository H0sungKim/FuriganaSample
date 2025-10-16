//
//  ViewController.swift
//  FuriganaSample
//
//  Created by 김호성 on 2025.10.16.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let sampleSentence: String = "私はその人を常に先生と呼んでいた。"
        
        label.attributedText = sampleSentence.rubyAnnotated([
            RubyAnnotation(range: 0...0, text: "わたくし"),
            RubyAnnotation(range: 4...4, text: "ひと"),
            RubyAnnotation(range: 6...6, text: "つね"),
            RubyAnnotation(range: 8...9, text: "せんせい"),
            RubyAnnotation(range: 11...11, text: "よ")
        ])
        
        textView.attributedText = sampleSentence.rubyAnnotated([
            RubyAnnotation(range: 0...0, text: "わたくし"),
            RubyAnnotation(range: 4...4, text: "ひと"),
            RubyAnnotation(range: 6...6, text: "つね"),
            RubyAnnotation(range: 8...9, text: "せんせい"),
            RubyAnnotation(range: 11...11, text: "よ")
        ])
    }
}
