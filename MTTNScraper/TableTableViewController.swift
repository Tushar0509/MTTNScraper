//
//  TableTableViewController.swift
//  MTTNScraper
//
//  Created by Tushar Elangovan on 8/2/20.
//  Copyright © 2020 Tushar Elangovan. All rights reserved.
//

import UIKit
import SwiftSoup
class TableTableViewController: UITableViewController {

    var arraymediator: [Element] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
              do {
                    let html = """
        </td><li>Time Table - Media Technology</li><td align="center">
                                           <a id="ContentPlaceHolder1_grvDocument_btnDownload_0" class="text-success" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$grvDocument$ctl02$btnDownload&#39;,&#39;&#39;)"><i class="fa fa-download" ></i></a>
                                       </td>
        </tr><tr>
           <td align="center" style="width:7%;">
                                           2
                                       </td><li>Time Table - Mechatronics</li><td align="center">
                                           <a id="ContentPlaceHolder1_grvDocument_btnDownload_1" class="text-success" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$grvDocument$ctl03$btnDownload&#39;,&#39;&#39;)"><i class="fa fa-download" ></i></a>
                                       </td>
        </tr><tr>
           <td align="center" style="width:7%;">
                                           3
                                       </td><li>Time Table - Mechanical &amp; IP</li><td align="center">
                                           <a id="ContentPlaceHolder1_grvDocument_btnDownload_2" class="text-success" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$grvDocument$ctl04$btnDownload&#39;,&#39;&#39;)"><i class="fa fa-download" ></i></a>
                                       </td>
        </tr><tr>
           <td align="center" style="width:7%;">
                                           4
                                       </td><li>Time Table - IT &amp; CCE</li><td align="center">
                                           <a id="ContentPlaceHolder1_grvDocument_btnDownload_3" class="text-success" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$grvDocument$ctl05$btnDownload&#39;,&#39;&#39;)"><i class="fa fa-download" ></i></a>
                                       </td>
        </tr><tr>
           <td align="center" style="width:7%;">
                                           5
                                       </td><li>Time Table - Dept of ICE</li><td align="center">
                                           <a id="ContentPlaceHolder1_grvDocument_btnDownload_4" class="text-success" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$grvDocument$ctl06$btnDownload&#39;,&#39;&#39;)"><i class="fa fa-download" ></i></a>
                                       </td>
        </tr><tr>
           <td align="center" style="width:7%;">
                                           6
                                       </td><li>Time Table - E&amp;C</li><td align="center">
                                           <a id="ContentPlaceHolder1_grvDocument_btnDownload_5" class="text-success" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$grvDocument$ctl07$btnDownload&#39;,&#39;&#39;)"><i class="fa fa-download" ></i></a>
                                       </td>
        </tr><tr>
           <td align="center" style="width:7%;">
                                           7
                                       </td><li>Time Table - EEE</li><td align="center">
                                           <a id="ContentPlaceHolder1_grvDocument_btnDownload_6" class="text-success" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$grvDocument$ctl08$btnDownload&#39;,&#39;&#39;)"><i class="fa fa-download" ></i></a>
                                       </td>
        </tr><tr>
           <td align="center" style="width:7%;">
                                           8
                                       </td><li>Time Table - Computer Science</li><td align="center">
                                           <a id="ContentPlaceHolder1_grvDocument_btnDownload_7" class="text-success" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$grvDocument$ctl09$btnDownload&#39;,&#39;&#39;)"><i class="fa fa-download" ></i></a>
                                       </td>
        </tr><tr>
           <td align="center" style="width:7%;">
                                           9
                                       </td><li>Time Table - Civil</li><td align="center">
                                           <a id="ContentPlaceHolder1_grvDocument_btnDownload_8" class="text-success" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$grvDocument$ctl10$btnDownload&#39;,&#39;&#39;)"><i class="fa fa-download" ></i></a>
                                       </td>
        </tr><tr>
           <td align="center" style="width:7%;">
                                           10
                                       </td><li>Time Table - Chemical</li><td align="center">
                                           <a id="ContentPlaceHolder1_grvDocument_btnDownload_9" class="text-success" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$grvDocument$ctl11$btnDownload&#39;,&#39;&#39;)"><i class="fa fa-download" ></i></a>
                                       </td>

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
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arraymediator.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCells", for: indexPath)
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        do{
            cell.textLabel?.text = "\(try arraymediator[indexPath.row].text())"
        } catch{
            print("ALmost there")
        }
        
        return cell
//            let cell = tableView.dequeueReusableCell(withIdentifier: "TableCells", for: indexPath)
//        let country = arrayof2vc[indexPath.row]
//        cell.textLabel?.text = "\(arrayof2vc[3])"
//            return cell
        }     /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

   
    
    
}

