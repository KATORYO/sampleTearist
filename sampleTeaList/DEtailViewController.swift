//
//  DEtailViewController.swift/Users/katoryo/Public/Drop Box/Swift.Box/MyFirst/iOS20170807/sampleTeaList/sampleTeaList/ViewController.swift
//  sampleTeaList
//
//  Created by 加藤諒 on 2017/09/07.
//  Copyright © 2017年 mirai. All rights reserved.
//

import UIKit

class DEtailViewController: UIViewController {
  
  @IBOutlet weak var myView: UIImageView!
  @IBOutlet weak var myLabel: UILabel!
  @IBOutlet weak var mymyLabel: UILabel!
  
  var Image:UIImage = UIImage()
  var sentence = ""
  var senten = ""
  
  //前の画面から送られてきた行番号
  var scSelectedIndex = -1

    override func viewDidLoad() {
        super.viewDidLoad()
      //print("\(scSelectedIndex)行目が押されて移動してきました")
      myView.image = Image
      myLabel.text = sentence
      mymyLabel.text = senten
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      

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
