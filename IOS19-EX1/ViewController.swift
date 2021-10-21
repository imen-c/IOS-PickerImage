//
//  ViewController.swift
//  IOS19-EX1
//
//  Created by Student04 on 21/10/2021.
//

import UIKit
import Photos // pas necessaire pour le imagepicker

class ViewController: UIViewController{

    @IBOutlet weak var resultat: UIImageView!
    let imagePicker = UIImagePickerController()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
    }

    @IBAction func takePhoto(_ sender: Any) {
       
        present(imagePicker, animated: true, completion: nil)
    }
    
}

extension ViewController : UIImagePickerControllerDelegate& UINavigationControllerDelegate{
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
         let uiimage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        
        self.resultat.image = uiimage
        picker.dismiss(animated: true)
        
        
    }
    
}
