//
//  TableViewController.swift
//  MemeMe
//
//  Created by Bora A.  on 5.05.2018.
//  Copyright © 2018 Bora A. ONUR. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var memes: [Meme] = [Meme]()
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return memes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell

        cell.label.text = memes[indexPath.row].topText + "..." + memes[indexPath.row].bottomText
        cell.cell_image.image = memes[indexPath.row].memedImage
        return cell
    }

    override func viewWillAppear(_ animated: Bool) {
        memes = appDelegate.memes
        tableView.reloadData()
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goToDetailVC", sender: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDetailVC" {
            let destination = segue.destination as! MemeDetailViewController
            let index = sender as! Int

            destination.selectedMeme = memes[index]
        }
    }
    
}
