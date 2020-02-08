//
//  TopMainViewCell.swift
//  layout_lesson
//
//  Created by Takumi Fuzawa on 2020/02/08.
//  Copyright © 2020 Takumi Fuzawa. All rights reserved.
//

import UIKit
import PGFramework

protocol TopMainViewCellDelegate: NSObjectProtocol{
    
}

extension TopMainViewCellDelegate {
    
}
// MARK: - Property
class TopMainViewCell: BaseTableViewCell {
    weak var delegate: TopMainViewCellDelegate? = nil
    @IBOutlet var labelLine: UILabel!
    @IBOutlet var iconImage: UIImageView!
}

// MARK: - Life cycle
extension TopMainViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        iconImage.layer.cornerRadius = iconImage.frame.width / 2
        iconImage.layer.borderWidth = 10
        iconImage.layer.borderColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
    }
}

// MARK: - Protocol
extension TopMainViewCell {
    
}

// MARK: - method
extension TopMainViewCell {
    
}
