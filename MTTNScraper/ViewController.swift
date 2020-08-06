//
//  ViewController.swift
//  MTTNScraper
//
//  Created by Tushar Elangovan on 7/31/20.
//  Copyright © 2020 Tushar Elangovan. All rights reserved.
//

import UIKit
import SwiftSoup
import WebKit
import hpple


class ViewController: UIViewController {
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var psswrdTF: UITextField!

    let webView = WKWebView()
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
       let url3 = URL(string: "https://slcm.manipal.edu/ImportantDocuments.aspx")!
       let request = URLRequest(url: url3)
        webView.frame = CGRect(x: 80, y: view.frame.height/2.25, width: 300, height: 500)
       webView.load(request)
       view.addSubview(webView)
       do {
       // print("I Am Here")
           let url1 = URL(string: "https://slcm.manipal.edu/")
           let html1 = try String(contentsOf: url1!, encoding: String.Encoding.ascii)
        let doc1: Document = try SwiftSoup.parse(html1)
        let id: Element = try doc1.select("title").first()!
        print(try id.text())
        
       } catch {}
    }

    @IBAction func signInButtonTapped(_ sender: UIButton) {
        print("Button Tapped ")
        switch counter {
               case 0:
                print("Case0")
                   webView.evaluateJavaScript("document.getElementById('txtUserid').value='\(emailTF.text!)'", completionHandler: nil)
                print("Case2")
                   webView.evaluateJavaScript("document.getElementById('txtpassword').value='\(psswrdTF.text!)'", completionHandler: nil)
 
            do {
                 webView.evaluateJavaScript("document.getElementById('txtUserid').value='\(emailTF.text!)'", completionHandler: nil)
                 webView.evaluateJavaScript("document.getElementById('txtpassword').value='\(psswrdTF.text!)'", completionHandler: nil)

                self.webView.evaluateJavaScript("document.getElementById('btnLogin').click();"){ (value, error) in
                    if let err = error {
                        print("Errro while cliking button")
                        print(err)
                    }
                }
                    print("Entering nowwww")
                    let url11 = URL(string: "https://slcm.manipal.edu/ImportantDocuments.aspx")
                    let html11 = try String(contentsOf: url11!, encoding: String.Encoding.ascii)
                    let doc11: Document = try SwiftSoup.parse(html11)
                    let class11 = try doc11.getElementsByClass("m-0 p-5")
                    let p11: Element = try class11.select("p").first()!
                    print(p11)
                    print("ABOVE")
                 //   let id11: Element = try doc11.select("title").first()!
//                self.webView.evaluateJavaScript("document.getElementById('CollapseFields').click();"){ (value, error) in
//
//                    if let err = error {
//                        print("Errro while cliking button2")
//                        print(err)
//                    }
//
//                }
                print("Pass2")
          //      self.webView.evaluateJavaScript("document.getElementById('Repeater2_hdnLink_0').click();"){ (value, error) in

//                    if let err = error {
//                        print("Errro while cliking button")
//                        print(err)
//                    }
//
//                }
                print("Success")
                                      let url2 = URL(string: "https://slcm.manipal.edu/ImportantDocuments.aspx")
                                      let html2 = try String(contentsOf: url2!, encoding: String.Encoding.ascii)
                                      let doc2: Document = try SwiftSoup.parse(html2)
                                   
                              //     let table: Elements = try doc.select("""
       //     id="ContentPlaceHolder1_grvDocument"
       //     """)
               print(doc2)
                let table: Elements = try doc2.getElementsByClass("modal-body text-center")
                let tra2 = try table.select("p").first()!
                print(try tra2.text())
//                let td2 = try tra2.select("td").first()!
//                print(try td2.text())
//
                
                
//                                   let table2: Elements = try doc.select("id")
//                                   let tra = try table2.select("tr")
//                                   let td: Element = try tra.select("id=ContentPlaceHolder1_grvDocument").first()!
//                                   print("Gonna Print Now")
//                                   print(td)
                                      
                                  } catch Exception.Error(type: let type, Message: let message){
                                   print(message)
                                   print(type)
                                   print("Error encountered")
                                  } catch{
                                   print("This also Gone")
                       }
            
               case 1:
                   let homeView  = self.storyboard?.instantiateViewController(withIdentifier: "TestZombie") as! TestZombieViewController
                   homeView.modalPresentationStyle = .overFullScreen
                   self.present(homeView, animated: true)
//                    self.present(homeView, animated: true, completion: nil)
               
        
        
        default:
            
                print("Default")
                       do {
                           let url = URL(string: "https://slcm.manipal.edu/ImportantDocuments.aspx")
                           let html = try String(contentsOf: url!, encoding: String.Encoding.ascii)
                           let doc: Document = try SwiftSoup.parse(html)
                        
                        let table: Elements = try doc.select("""
 id="ContentPlaceHolder1_grvDocument"
 """)
                        let table2: Elements = try doc.select("id")
 
                        let tra = try table2.select("tr")
                        let td: Element = try tra.select("td").first()!
                        print("Gonna Print Now")
                        print(td)
                           
                       } catch Exception.Error(type: let type, Message: let message){
                        print(message)
                        print(type)
                        print("Error encountered")
                       } catch{
                        print("This also Gone")
            }
            
                   
               }
               counter += 1
    }
    
    
    

}

