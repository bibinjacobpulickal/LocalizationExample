//
//  ViewController.swift
//  LocalisationExample
//
//  Created by Bibin Jacob Pulickal on 11/03/20.
//  Copyright © 2020 bibinjacobpulickal. All rights reserved.
//

import UIKit
import ReusabilityKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        tableView.reloadData()
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.dequeue(UITableViewCell.self, for: indexPath) { cell in
            cell.textLabel?.text = "LocalizedLanguage".localized
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { 1 }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(LanguageSelectionViewController(), animated: true)
    }
}

