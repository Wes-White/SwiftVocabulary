//
//  VocabWordsViewController.swift
//  SwiftVocab
//
//  Created by Wesley Ryan on 3/16/20.
//  Copyright © 2020 Wesley Ryan. All rights reserved.
//

import UIKit

class VocabWordsViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = []
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
        
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    private func configureViews() {
        
        vocabWords = [VocabularyWord(word: "Function", definition: "Functions are self-contained chunks of code that perform a specific task. You give a function a name that identifies what it does, and this name is used to “call” the function to perform its task when needed."), VocabularyWord(word: "Methods", definition: "Methods are functions that are associated with a particular type. Classes, structures, and enumerations can all define instance methods, which encapsulate specific tasks and functionality for working with an instance of a given type. Classes, structures, and enumerations can also define type methods, which are associated with the type itself. Type methods are similar to class methods in Objective-C."), VocabularyWord(word: "Enumerations or Enums", definition: "An enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code."),VocabularyWord(word: "Inheritance", definition: "A class can inherit methods, properties, and other characteristics from another class. When one class inherits from another, the inheriting class is known as a subclass, and the class it inherits from is known as its superclass. Inheritance is a fundamental behavior that differentiates classes from other types in Swift."),
        VocabularyWord(word: "Type Casting", definition: "Type casting is a way to check the type of an instance, or to treat that instance as a different superclass or subclass from somewhere else in its own class hierarchy.Type casting in Swift is implemented with the is and as operators. These two operators provide a simple and expressive way to check the type of a value or cast a value to a different type.")]
    }

    // MARK: - Table view data source

 

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        print(vocabWords.count)
        return vocabWords.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        // pull out valure for index, create a const that will hold the value
       let word = vocabWords[indexPath.row]
        cell.textLabel?.text = word.word // show vocab word on each cell

        return cell
    }
    





    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "ShowDefinitionSegue" {
            
            if let defintionVc = segue.destination as?
            DefinitionViewController,
            let indexPath = tableView.indexPathForSelectedRow {
                //pass the selected object to the new vc.
                let word = vocabWords[indexPath.row]
                defintionVc.vocabWord = word
            }
        }
    }
}
