//
//  ViewController.swift
//  SecureCare
//
//  Created by Erik on 21.05.2024.
//

import UIKit

class MainViewController: UIViewController {
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logoAitu")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    private lazy var settingsButton: UIButton = {
        let button = UIButton(type: .system)
        button.configuration = .plain()
        button.configuration?.baseForegroundColor = .white
        button.configuration?.image = UIImage(systemName: "gear")
        button.configuration?.buttonSize = .large
        button.addTarget(self, action: #selector(settingsButtonTapped), for: .touchUpInside)
        return button
    }()
    
    private lazy var medicalRecordsButton: UIButton = {
        let button = UIButton()
        button.configuration = .filled()
        let attributedTitle = NSAttributedString(
            string: "Medical Records",
            attributes: [
                .font: UIFont.systemFont(ofSize: 20, weight: .bold),
                .foregroundColor: UIColor.white
            ]
        )
        button.setAttributedTitle(attributedTitle, for: .normal)
        button.configuration?.baseBackgroundColor = .systemBlue
        button.configuration?.baseForegroundColor = .white
        button.configuration?.buttonSize = .large
        button.addTarget(self, action: #selector(medicalRecordsButtonTapped), for: .touchUpInside)
        return button
    }()
    
    private lazy var makeAppointmentButton: UIButton = {
        let button = UIButton()
        button.configuration = .filled()
        let attributedTitle = NSAttributedString(
            string: "Make an Appointment",
            attributes: [
                .font: UIFont.systemFont(ofSize: 20, weight: .bold),
                .foregroundColor: UIColor.white
            ]
        )
        button.setAttributedTitle(attributedTitle, for: .normal)
        button.configuration?.baseBackgroundColor = .systemBlue
        button.configuration?.baseForegroundColor = .white
        button.configuration?.buttonSize = .large
        button.addTarget(self, action: #selector(makeAppointmentButtonTapped), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        configureConstraints()
    }
    
    private func setupUI() {
        view.backgroundColor = .systemGray5
        view.addSubview(imageView)
        view.addSubview(settingsButton)
        view.addSubview(medicalRecordsButton)
        view.addSubview(makeAppointmentButton)
    }
    
    private func configureConstraints() {
        imageView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.leading.equalToSuperview().offset(20)
            make.width.equalTo(100)
            make.height.equalTo(100)
        }
        
        settingsButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.trailing.equalToSuperview().offset(-20)
        }
        
        medicalRecordsButton.snp.makeConstraints { make in
            make.centerY.equalToSuperview().offset(40)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.height.equalTo(50)
        }
        
        makeAppointmentButton.snp.makeConstraints { make in
            make.centerY.equalToSuperview().offset(-40)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.height.equalTo(50)
        }
    }
    
    @objc private func settingsButtonTapped() {
        let vc = SettingsViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc private func medicalRecordsButtonTapped() {
        let vc = MedicalRecordsViewController()
        navigationController?.pushViewController(vc, animated: true)

    }
    
    @objc private func makeAppointmentButtonTapped() {
        let vc = MakeAppointmentViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}

import SwiftUI
#Preview {
    let someViewController = MainViewController(nibName: nil, bundle: nil)
    return someViewController
}


