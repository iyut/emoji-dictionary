//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by WS-Luthfi on 1/2/19.
//  Copyright © 2019 interfeis. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var emoji = "No EMOJI";
    
    @IBOutlet weak var bigEmoji: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(emoji);
        bigEmoji.text = emoji;
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
