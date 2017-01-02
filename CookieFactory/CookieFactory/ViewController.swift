//
//  ViewController.swift
//  CookieFactory
//
//  Created by Abhishek Mishra on 30/12/2016.
//  Copyright © 2016 ASM Technology Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var cookiejar:CookieController?
    
    @IBOutlet weak var totalCookies: UILabel!
    @IBOutlet weak var gingerbreadCookies: UILabel!
    @IBOutlet weak var shortbreadCookies: UILabel!
    @IBOutlet weak var chocolateChipCookies: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cookiejar = CookieController()
        refreshUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func onGenerateGingerbreadCookies(_ sender: Any) {
        cookiejar?.addGingerbreadCookie()
        refreshUI()
    }

    @IBAction func onGenerateChocolateChipCookies(_ sender: Any) {
        cookiejar?.addChocolateChipCookie()
        refreshUI()
    }

    @IBAction func onGenerateShortbreadCookies(_ sender: Any) {
        cookiejar?.addShortbreadCookie()
        refreshUI()
    }

    @IBAction func onClearAllCookies(_ sender: Any) {
        cookiejar?.reset()
        refreshUI()
    }

    private func refreshUI() -> Void {
        let totalGinger = cookiejar!.gingerbreadCookies!.count
        let totalShort = cookiejar!.shortbreadCookies!.count
        let totalChocolate = cookiejar!.chocolateChipCookies!.count
        let total = totalGinger + totalShort + totalChocolate
        
        gingerbreadCookies.text = "Gingerbread cookies: \(totalGinger)"
        shortbreadCookies.text = "Shortbread cookies: \(totalShort)"
        chocolateChipCookies.text = "Chocolate chip cookies: \(totalChocolate)"
        totalCookies.text = "Total cookies: \(total)"
    }
    
}

