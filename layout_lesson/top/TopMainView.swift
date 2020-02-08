//
//  TopMainView.swift
//  layout_lesson
//
//  Created by Takumi Fuzawa on 2020/02/08.
//  Copyright © 2020 Takumi Fuzawa. All rights reserved.
//

import UIKit
import PGFramework


protocol TopMainViewDelegate: NSObjectProtocol{
    
}

extension TopMainViewDelegate {
    
}
// MARK: - Property
class TopMainView: BaseView {
    weak var delegate: TopMainViewDelegate? = nil
    @IBOutlet var tableView: UITableView!
}

// MARK: - Life cycle
extension TopMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
        tableView.delegate = self
        tableView.dataSource = self
        loadTableViewCellFromXib(tableView: tableView, cellName: "TopMainViewCell")
    }
}

// MARK: - Protocol
extension TopMainView: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TopMainViewCell", for: indexPath) as? TopMainViewCell else{ return UITableViewCell()
        }
        return cell
    }
    
    
}

// MARK: - method
extension TopMainView {
    
}
