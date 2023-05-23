//
//  ProfileViewController.swift
//  ImageGram
//
//  Created by Aleksey Shaposhnikov on 23.05.2023.
//

import UIKit

final class ProfileViewController: UIViewController {

    private var exitButton: UIButton!

    private var note: UILabel!
    private var userIDLabel: UILabel!
    private var userNameLabel: UILabel!
    private var userPicture: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        setUserPictureView()
        setExitButton()
        setUserNameLabel()
        setUserIDLabel()
        setNote()

    }

    private func setUserPictureView() {
        userPicture = UIImageView(image: UIImage(named: "UserPic"))
        userPicture.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(userPicture)
        userPicture.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        userPicture.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32).isActive = true
        userPicture.widthAnchor.constraint(equalToConstant: 70).isActive = true
        userPicture.heightAnchor.constraint(equalToConstant: 70).isActive = true
    }

    private func setExitButton() {
        exitButton = UIButton(type: UIButton.ButtonType.custom)
        exitButton.setImage(UIImage(named: "Exit"), for: .normal)

        exitButton.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(exitButton)

        exitButton.widthAnchor.constraint(equalToConstant: 44).isActive = true
        exitButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        view.trailingAnchor.constraint(equalTo: exitButton.trailingAnchor, constant: 16).isActive = true
        exitButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32).isActive = true
        exitButton.leadingAnchor.constraint(greaterThanOrEqualTo: userPicture.trailingAnchor, constant: 0).isActive = true
    }

    private func setUserNameLabel() {
        userNameLabel = UILabel()
        userNameLabel.text = "Екатерина Новикова"
        userNameLabel.textColor = UIColor.ypWhite
        userNameLabel.font = UIFont.boldSystemFont(ofSize: 23)
        userNameLabel.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(userNameLabel)

        NSLayoutConstraint.activate([
            userNameLabel.topAnchor.constraint(equalTo: userPicture.bottomAnchor, constant: 8),
            userNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            view.trailingAnchor.constraint(equalTo: userNameLabel.trailingAnchor, constant: 16)
        ])
    }

    private func setUserIDLabel() {
        userIDLabel = UILabel()
        userIDLabel.text = "@ekaterina_nov"
        userIDLabel.textColor = UIColor.ypGray
        userIDLabel.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(userIDLabel)

        NSLayoutConstraint.activate([
            userIDLabel.topAnchor.constraint(equalTo: userNameLabel.bottomAnchor, constant: 8),
            userIDLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            view.trailingAnchor.constraint(equalTo: userIDLabel.trailingAnchor, constant: 16)
        ])
    }

    private func setNote() {
        note = UILabel()
        note.text = "Hello, World"
        note.textColor = UIColor.ypWhite
        note.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(note)
        
        NSLayoutConstraint.activate([
            note.topAnchor.constraint(equalTo: userIDLabel.bottomAnchor, constant: 8),
            note.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            view.trailingAnchor.constraint(equalTo: note.trailingAnchor, constant: 16)
        ])
    }
}
