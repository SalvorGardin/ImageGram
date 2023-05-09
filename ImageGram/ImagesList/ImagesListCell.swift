//
//  ImagesListCell.swift
//  ImageGram
//
//  Created by Aleksey Shaposhnikov on 06.05.2023.
//

import UIKit

final class ImagesListCell: UITableViewCell {
    @IBOutlet var cellImage: UIImageView!
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var dateLabel: UILabel!
    static let reuseIdentifier = "ImagesListCell"
}
