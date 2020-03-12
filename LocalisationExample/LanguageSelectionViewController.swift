//
//  LanguageSelectionViewController.swift
//  LocalisationExample
//
//  Created by Bibin Jacob Pulickal on 12/03/20.
//  Copyright © 2020 bibinjacobpulickal. All rights reserved.
//

import UIKit

class LanguageSelectionViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Language.allCases.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.dequeue(UITableViewCell.self, for: indexPath) { cell in
            let language = Language.allCases[indexPath.row]
            cell.textLabel?.text = language.rawValue.capitalized
            cell.accessoryType = language == Language.selected ? .checkmark : .none
        }
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        Language.selected = Language.allCases[indexPath.row]
        tableView.reloadData()
    }
}
