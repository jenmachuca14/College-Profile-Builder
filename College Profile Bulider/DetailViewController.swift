//
//  DetailViewController.swift
//  College Profile Bulider
//
//  Created by Jen on 2/7/17.
//  Copyright © 2017 JenMachuca. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var collegeTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var numberOfStudentsTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    var detailItem: College? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func configureView() {
        // Update the user interface for the detail item.
        if let college = self.detailItem{
            if collegeTextField != nil {
                collegeTextField.text = college.name
                locationTextField.text = college.location
                numberOfStudentsTextField.text = String(college.numberOfStudents)
                imageView.image = UIImage(data: college.image)
        }

    }
}
    
    @IBAction func onTappedSaveButton(_ sender: UIButton) {
        if let college = self.detailItem {
            college.name = collegeTextField.text!
            college.location = locationTextField.text!
            college.numberOfStudents = Int(numberOfStudentsTextField.text!)!
            college.image = UIImagePNGRepresentation(imageView.image!)!
        }
        
    }



 


}

