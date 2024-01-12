//
//  GroupCell.swift
//  ios101-capstone-afrigoal
//
//  Created by Qetsia Nkulu  on 11/17/23.
//

import UIKit

// Enum to represent different types of rows
enum RowType {
    case title
    case stats
    case firstTeam
    case otherTeams
}

class GroupCell: UITableViewCell {
    // Enum to represent different types of rows
    enum RowType {
        case title
        case stats
        case team
    }

    // Create a vertical stack view to hold multiple rows
    let mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 8
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    // You can customize the appearance of each row as needed
    func addRow(withText text: String, rowType: RowType) {
        let rowStackView = UIStackView()
        rowStackView.axis = .horizontal
        rowStackView.spacing = 10
     
        let label = UILabel()
        label.text = text
        label.numberOfLines = 0
        
        // Use the custom Barlow font
          if let customFont = UIFont(name: "YourCustomFontName", size: 18) {
              label.font = customFont
          } else {
              // Fallback to system font if the custom font is not available
              label.font = UIFont.systemFont(ofSize: 18)
          }

        switch rowType {
        case .title:
            if let customFont = UIFont(name: "Barlow-SemiBold", size: 20) {
                     label.font = customFont
                 } else {
                     label.font = UIFont.boldSystemFont(ofSize: 20) // fallback to system font
                 }
            label.textColor = UIColor(red: 238/255, green: 241/255, blue: 247/255, alpha: 1.0)
            label.textAlignment = .left
        case .stats:
            if let customFont = UIFont(name: "Barlow-Medium", size: 11) {
                     label.font = customFont
                 } else {
                     label.font = UIFont.boldSystemFont(ofSize: 11) // fallback to system font
                 }
            label.font = UIFont.systemFont(ofSize: 11)
            label.textColor = UIColor(red: 238/255, green: 241/255, blue: 247/255, alpha: 1.0)
            label.textAlignment = .right
        case .team:
            if let customFont = UIFont(name: "Barlow-Medium", size: 16) {
                     label.font = customFont
                 } else {
                     label.font = UIFont.boldSystemFont(ofSize: 16) // fallback to system font
                 }
            label.textColor = UIColor(red: 238/255, green: 241/255, blue: 247/255, alpha: 1.0)
            label.textAlignment = .left
        }

        rowStackView.addArrangedSubview(label)
        mainStackView.addArrangedSubview(rowStackView)
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        // Add the main stack view to the cell's content view
        contentView.addSubview(mainStackView)

        // Set up constraints
        NSLayoutConstraint.activate([
            mainStackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            mainStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            mainStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            mainStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8)
        ])
    
    }
    

    // Implementation of init(coder:)
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    // Common initialization code (used by both init(coder:) and init(style:reuseIdentifier:))
    private func commonInit() {
        // Add the main stack view to the cell's content view
        contentView.addSubview(mainStackView)

        // Set up constraints
        NSLayoutConstraint.activate([
            mainStackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            mainStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            mainStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            mainStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8)
        ])
    }
    
    
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }

}

