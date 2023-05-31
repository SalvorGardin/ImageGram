//
//  ProfileViewController.swift
//  ImageGram
//
//  Created by Aleksey Shaposhnikov on 23.05.2023.
//

import UIKit

final class ProfileViewController: UIViewController {
    private lazy var userPicture: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "UserPic")
        image.translatesAutoresizingMaskIntoConstraints = false

        return image
    }()

    private lazy var exitButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(UIImage(named: "Exit"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false

        return button
    }()

    private lazy var userNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Екатерина Новикова"
        label.textColor = UIColor.ypWhite
        label.font = UIFont.boldSystemFont(ofSize: 23)
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()

    private lazy var userIDLabel: UILabel = {
        let label = UILabel()
        label.text = "@ekaterina_nov"
        label.textColor = UIColor.ypGray
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()

    private lazy var note: UILabel = {
        let label = UILabel()
        label.text = "Hello, World"
        label.textColor = UIColor.ypWhite
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
    }

    private func initialSetup() {
        setupUserPicture()
        setupExitButton()
        setupUserNameLabel()
        setupUserIDLabel()
        setupNote()
    }

    private func setupUserPicture() {
        view.addSubview(userPicture)

        NSLayoutConstraint.activate([
            userPicture.widthAnchor.constraint(equalToConstant: 70),
            userPicture.heightAnchor.constraint(equalToConstant: 70),
            userPicture.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            userPicture.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32)
        ])
    }

    private func setupExitButton() {
        view.addSubview(exitButton)

        NSLayoutConstraint.activate([
            exitButton.widthAnchor.constraint(equalToConstant: 44),
            exitButton.heightAnchor.constraint(equalToConstant: 44),
            view.trailingAnchor.constraint(equalTo: exitButton.trailingAnchor, constant: 16),
            exitButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            exitButton.leadingAnchor.constraint(greaterThanOrEqualTo: userPicture.trailingAnchor, constant: 0)
        ])
    }

    private func setupUserNameLabel() {
        view.addSubview(userNameLabel)

        NSLayoutConstraint.activate([
            userNameLabel.topAnchor.constraint(equalTo: userPicture.bottomAnchor, constant: 8),
            userNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            view.trailingAnchor.constraint(equalTo: userNameLabel.trailingAnchor, constant: 16)
        ])
    }

    private func setupUserIDLabel() {
        view.addSubview(userIDLabel)

        NSLayoutConstraint.activate([
            userIDLabel.topAnchor.constraint(equalTo: userNameLabel.bottomAnchor, constant: 8),
            userIDLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            view.trailingAnchor.constraint(equalTo: userIDLabel.trailingAnchor, constant: 16)
        ])
    }

    private func setupNote() {
        view.addSubview(note)

        NSLayoutConstraint.activate([
            note.topAnchor.constraint(equalTo: userIDLabel.bottomAnchor, constant: 8),
            note.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            view.trailingAnchor.constraint(equalTo: note.trailingAnchor, constant: 16)
        ])
    }
}
