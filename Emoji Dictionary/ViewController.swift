//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by WS-Luthfi on 1/2/19.
//  Copyright © 2019 interfeis. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emojilist_tv: UITableView!
    
    var emojiArr : Array = [
        "😬",
        "😁",
        "😅",
        "😟",
        "😡"
    ];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        emojilist_tv.dataSource = self;
        emojilist_tv.delegate = self;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emojiArr.count;
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell();
        cell.textLabel?.text = emojiArr[indexPath.row];
        
        return cell;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let emoji = emojiArr[indexPath.row];
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let defVC = segue.destination as! DefinitionViewController;
        
        defVC.emoji = sender as! String;
        
        print(sender);
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

