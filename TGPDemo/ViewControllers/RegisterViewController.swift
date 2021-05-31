//
//  RegisterViewController.swift
//  TGPDemo
//
//  Created by Mohammad Maruf on 29/05/21.
//  Copyright © 2021 Mohammad Maruf. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    // MARK: Outlets
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.register(UINib(nibName: "RegisterTableViewCell", bundle: nil), forCellReuseIdentifier: "RegisterTableViewCell")
        }
    }
    
    // MARK: Variables
    private let tableDataArray = [
        (title: "easy portfolio\ncreation", detail: "As a member you get easy to operate native app for clicking, editing and uploading your artwork. We have made this absolutely easy for your to not struggle with elaborate camera set ups."),
        (title: "advanced data and\nanalytics", detail: "As an artist we are losing out on lot of insights about our art. We will be using data aboutt your audience to give you insights on various aspects so that you can plan your career smartly."),
        (title: "reach authentic\naudience", detail: "Since this platform is built on specific needs of a buyer we will be introducing some cutting edge tech to help buyers decide faster and more prudently. We also will be making suure your artt is protected by blockchain tech so that it becomes impossible to be copied."),
        (title: "visualise art in\ncontext", detail: "AR or Augmented reality today provides audience to visualise art in variety of ways. With AR we will multiply the chance of people buying art by giving thtem opportunity to see it on their walls. This would be available for you to use while with a client as a feature."),
        (title: "win awards at our\nflagship event", detail: "TGP (The Gallry Prroject) will host awards to celebrate whats best around us. From young to established ones you will have opportunity to win awards in various cattegories. This would propel your profile and give your art journey a serious push"),
        (title: "get published in our\nmagazine", detail: "TGP Magazine will be best in class magazine to showcase art. The aim is to publish artists on a regular basis and bring out the best talent from deep down regions around the world. This would ensure that online medium is exploited to its fullest with its unique property to reach Artists and buyers from anywhere - even Mars :)."),
        (title: "stay updated with the\nart events", detail: "Artists usually are busy in their work and get lost in their creativity. More than often they miss out on some wonderful events around. TGP will help bring this together on one platform where in all art events can be brought together and make surre you never miss out."),
        (title: "author online\nexhibitions", detail: "Physical showcasing has always been a challenge for artists. Right from boundaries of physical space to cost of hiring the galleries thten of coursee the logistical nightmares. TGP is creating probably the firs tof ts kind umlimited gallry space which can be hired and orchestrated on tthe click of a button.")
    ]
    
    // MARK: Button Action
    @IBAction func resgiterButtonAction(_ sender: UIButton) {
        let controller = storyboard?.instantiateViewController(identifier: "HomeViewController") as! HomeViewController
        navigationController?.pushViewController(controller, animated: true)
    }
}

extension RegisterViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableDataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RegisterTableViewCell") as! RegisterTableViewCell
        cell.configureCell(data: tableDataArray[indexPath.row], indexPath: indexPath)
        cell.myImageView.image = UIImage(named: "group" + "\(indexPath.row + 1)")
        
        return cell
    }
}
