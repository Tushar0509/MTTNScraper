//
//  TestZombieViewController.swift
//  MTTNScraper
//
//  Created by Tushar Elangovan on 8/1/20.
//  Copyright © 2020 Tushar Elangovan. All rights reserved.
//

import UIKit
import hpple
import SwiftSoup

class TestZombieViewController: ViewController {

    var  arraymediator: [Element] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            let html = """

    <li>NRI FEE SCHEDULE 2020-21 WITH BANK DETAIL</li><td align="center">
                                    <a id="ContentPlaceHolder1_grvDocument_btnDownload_0" class="text-success" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$grvDocument$ctl02$btnDownload&#39;,&#39;&#39;)"><i class="fa fa-download" ></i></a>
                                </td>
</tr><tr>
    
                                </td><li>NRI FEE SCHEDULE 2020-21 WITH BANK DETAIL</li><td align="center">
                                    <a id="ContentPlaceHolder1_grvDocument_btnDownload_1" class="text-success" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$grvDocument$ctl03$btnDownload&#39;,&#39;&#39;)"><i class="fa fa-download" ></i></a>
                                </td>
</tr><tr>
    
                                </td><li>AICTE FEE SCHEDULE</li><td align="center">
                                    <a id="ContentPlaceHolder1_grvDocument_btnDownload_2" class="text-success" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$grvDocument$ctl04$btnDownload&#39;,&#39;&#39;)"><i class="fa fa-download" ></i></a>
                                </td>
</tr><tr>
    
                                </td><li>FEE SCHEDULE 2020-21</li><td align="center">
                                    <a id="ContentPlaceHolder1_grvDocument_btnDownload_3" class="text-success" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$grvDocument$ctl05$btnDownload&#39;,&#39;&#39;)"><i class="fa fa-download" ></i></a>
                                </td>
</tr><tr>
    
                                </td><li>FEE SCHEDULE 2020-21</li><td align="center">
                                    <a id="ContentPlaceHolder1_grvDocument_btnDownload_4" class="text-success" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$grvDocument$ctl06$btnDownload&#39;,&#39;&#39;)"><i class="fa fa-download" ></i></a>
                                </td>
</tr><tr>
    
                                </td><td>FEE SCHEDULE 2020-21</td><td align="center">
                                    <a id="ContentPlaceHolder1_grvDocument_btnDownload_5" class="text-success" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$grvDocument$ctl07$btnDownload&#39;,&#39;&#39;)"><i class="fa fa-download" ></i></a>
                                </td>
</tr><tr>
   
                                </td><li>FEE SCHEDULE 2020-21</li><td align="center">
                                    <a id="ContentPlaceHolder1_grvDocument_btnDownload_6" class="text-success" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$grvDocument$ctl08$btnDownload&#39;,&#39;&#39;)"><i class="fa fa-download" ></i></a>
                                </td>
</tr><tr>
   
                                </td><li>FEE NOTIFICATION 2020-21 2019 BATCH</li><td align="center">
                                    <a id="ContentPlaceHolder1_grvDocument_btnDownload_7" class="text-success" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$grvDocument$ctl09$btnDownload&#39;,&#39;&#39;)"><i class="fa fa-download" ></i></a>
                                </td>
</tr><tr>
   
                                </td><li>FEE NOTIFICATION 2020-21</li><td align="center">
                                    <a id="ContentPlaceHolder1_grvDocument_btnDownload_8" class="text-success" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$grvDocument$ctl10$btnDownload&#39;,&#39;&#39;)"><i class="fa fa-download" ></i></a>
                                </td>
</tr><tr>
  
                                </td><li>Notice: Re-registration of M.Tech./ MCA courses - July 2020</li><td align="center">
                                    <a id="ContentPlaceHolder1_grvDocument_btnDownload_9" class="text-success" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$grvDocument$ctl11$btnDownload&#39;,&#39;&#39;)"><i class="fa fa-download" ></i></a>
                                </td>
</tr><tr class="pagination-ys" align="right">
"""
            let doc: Document = try SwiftSoup.parse(html)
            let td: Elements = try doc.select("li")
            let dataArray: [Element] = try doc.select("li").array()
            arraymediator = dataArray
            print( try arraymediator[3].text())
            print("Check Below")
            print(try td.text())
        } catch Exception.Error(type: let type, Message: let message) {
            print(type)
            print(message)
        } catch{
            print("")
        }
        // Do any additional setup after loading the view.
    }
    @IBAction func backbutton(_ sender: Any) {
        let homeView  = self.storyboard?.instantiateViewController(withIdentifier: "HomeVC") as! ViewController
        homeView.modalPresentationStyle = .overFullScreen
        self.present(homeView, animated: true)
       //  self.present(homeView, animated: true, completion: nil)
    }
    @IBAction func NExtVCButton(_ sender: Any) {
        let homeView  = self.storyboard?.instantiateViewController(withIdentifier: "TableCells") as! TableTableViewController
//       homeView.modalPresentationStyle = .overFullScreen
//       self.present(homeView, animated: true)
      self.present(homeView, animated: true, completion: nil)
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


