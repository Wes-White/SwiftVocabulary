//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Wesley Ryan on 3/16/20.
//  Copyright © 2020 Wesley Ryan. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var DefinitionText: UITextView!
    
    var vocabWord: VocabularyWord?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()

        // Do any additional setup after loading the view.
    }
    
    func updateViews() {
        if let unwrappedVocabWord = vocabWord {
            TitleLabel.text = unwrappedVocabWord.word
            DefinitionText.text = unwrappedVocabWord.definition
        }
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
