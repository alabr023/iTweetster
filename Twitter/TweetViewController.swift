//
//  TweetViewController.swift
//  Twitter
//
//  Created by Andy on 10/5/22.
//  Copyright © 2022 Dan. All rights reserved.
//

import UIKit

class TweetViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tweetTextView.becomeFirstResponder()
    }
    
    @IBOutlet weak var tweetTextView: UITextView!
    
    @IBAction func tweet(_ sender: Any) {
        
        if !tweetTextView.text.isEmpty {
            TwitterAPICaller.client?.postTweet(tweet: tweetTextView.text, success: {
            }, failure: { (Error) in
                print("Error with tweet \(Error)")
            })
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
