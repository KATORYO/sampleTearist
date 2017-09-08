//
//  ViewController.swift
//  sampleTeaList
//
//  Created by 加藤諒 on 2017/09/07.
//  Copyright © 2017年 mirai. All rights reserved.
//

//TODO:配列を指定して、TEALISTのを表示する

import UIKit



let proLang:[String] = ["ダージリン","アールグレイ","アッサム","オレンジペコ"]

var explain = ""

var explan = ""

var myView:UIImage = UIImage()

var selectedIndex = -1 //選択された行番号！

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
  
  @IBOutlet weak var myTableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  func tableView(_ tableView: UITableView,numberOfRowsInSection section: Int) -> Int {
    return proLang.count
  }
  
  //③リストに表示する文字列を決定し、表示
  func tableView(_ tableView: UITableView,cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    //文字を表示するセルの取得（セルの再利用）
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    
    //表示したい文字の設定　IndexPath.rowが行番号を表す
    
    cell.textLabel?.text = proLang[indexPath.row] //indexpathはセルの番号！！
    
    cell.textLabel?.textColor = .red   //文字色設定！
  
    //文字を設定したセルを返す
    return cell
  }
  
  //セルがタップされたときの処理！ segueを使って画面移動！
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//    print("\(indexPath.row)行目がタップされました")

    if 0 == indexPath.row {
      explain = "ダージリンはダージリン・ティーの栽培で国際的に有名である。ダージリンでの紅茶の栽培は19世紀中頃のイギリスによる開発、ロバート・フォーチュンによるチャノキの中国からの移入に遡る。この地域特有の栽培品種と発酵技術から生産された茶葉をブレンドした紅茶は、世界で最高級の紅茶とされる"
      myView  = UIImage(named: "Image-1")!
      explan = "ダージリン"
      
    } else if 1 == indexPath.row {
      explain = "アールグレイは、ベルガモットの落ち着きある芳香が大きな特徴である。このベルガモットの香りは精油や香料で着香されることが多い。茶の香気成分は冷やすと控え目になるが、人工的に香りを付けた着香茶であるアールグレイはアイスでも香りが比較的分かりやすいため、アイスティーに用いられることも多い。一方でベルガモットの芳香は一般的に温度が高くなるほど引き立つので、アイスティーを念頭に強めの香りをつけたものなどをホットティーにすると、慣れていない人にとっては非常に飲みにくいものとなりやすい。この芳香がミルクと相性が良いため、ミルクティーとしても飲まれる。"
      myView = UIImage(named: "Image-1")!
      explan = "アールグレイ"
    } else if 2 == indexPath.row {
      explain = "アッサム平原は世界有数の降水量を持ち、世界最大の紅茶産地である[1]。アッサムの紅茶は水色が濃い茶褐色でこくが強いため、ミルクティーとして飲まれることが多い[1]。チャイ用として細かく丸まったCTC製法（Crush Tear Curl－－つぶして、ひきさいて、丸める）で製茶されたものが多く出回っている。"
      myView = UIImage(named: "Image-2")!
      explan = "アッサム"
    } else if 3 == indexPath.row {
      explain = "西洋の茶、特に紅茶の取引において使用される等級（オレンジ・ペコー等級）。OPと略される[1][2]。中国語起源とする説もあるが、一般的にこの等級は、非中国語圏のスリランカやインドなど中国以外の産地の茶にも用いられる。"
      myView = UIImage(named: "Image-3")!
      explan = "オレンジペコ"
    }
    //セグエを指定して、画面遷移
    performSegue(withIdentifier: "showDetail", sender: nil)
  }
  
  
  //セグエを使って画面を移動しようとしているとき発動するメソッド！
  //override(上書き)だが、prepareはviewcontroller画面に組み込まれているため、上書きする必要がある！
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    //prepareの中では、移動先の中の画面、移動先の画面、どちらも操作が可能
    //移動先の画面に渡したい情報をセットできる
    //dv　今から移動する画面のオブジェクト(インスタンス)
    //segue.destination セグエを使って移動する先
    //as ダウンキャスト変換するための記号
    let dv: DEtailViewController = segue.destination as! DEtailViewController
    
    //作成しておいたプロパティ（メンバ変数）に行番号を保存
    dv.scSelectedIndex = selectedIndex
    dv.Image = myView
    dv.sentence = explain
    dv.senten = explan
  }
  
  
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

