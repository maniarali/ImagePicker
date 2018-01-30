//
//  ImageManager.swift
//  CuzHub
//
//  Created by Muhammad Ali Maniar on 15/01/2018.
//  Copyright © 2018 Appiskey. All rights reserved.
//

import Foundation
import PhotosUI
import UIKit

class ImageManager : NSObject,UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    enum ImagePickerType{
        case camera
        case gallery
    }
    var imagePicker = UIImagePickerController()
    
    private override init () {}
    static let shared = ImageManager()
    
    var completionHandler : ((_ image : UIImage) -> Void)? = nil
    
    func openImagePicker(completion: ((_ image : UIImage) -> Void)? = nil) {
        
        self.completionHandler = completion
        self.isAuthorize()
    }
    private func isAuthorize()  {
        
        let photos = PHPhotoLibrary.authorizationStatus()
        if photos == .notDetermined {
            PHPhotoLibrary.requestAuthorization({status in
                if status == .authorized{
                    self.showImagePicker()
                } else {}
            })
        } else if photos == .authorized {
            self.showImagePicker()
        }
    }
    private func showImagePicker(){
        
        let actionSheet = UIAlertController(title: "Select Image", message: "Please choose an Image", preferredStyle: .actionSheet)
        actionSheet.addAction(UIAlertAction(title: "Camera", style: .default, handler: { (action) in
            self.openImagePicker(type: .camera)
        }))
        actionSheet.addAction(UIAlertAction(title: "Gallery", style: .default, handler: { (action) in
            self.openImagePicker(type: .gallery)
        }))
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action) in
            
        }))
        DispatchQueue.main.async {
            UIApplication.shared.keyWindow?.rootViewController?.present(actionSheet, animated: true, completion: nil)
        }
    }
    
    private func openImagePicker(type: ImagePickerType) {
        imagePicker.sourceType = type == .camera ? .camera : .photoLibrary
        imagePicker.delegate = self
        imagePicker.allowsEditing = true
        
        imagePicker.navigationBar.isTranslucent = false
        imagePicker.navigationBar.backgroundColor = .black
        imagePicker.navigationBar.tintColor = UIColor.white
        imagePicker.navigationBar.barTintColor = .black
        
        imagePicker.navigationBar.titleTextAttributes = [
            NSAttributedStringKey.foregroundColor : UIColor.white
        ]
        
        DispatchQueue.main.async {
            UIApplication.shared.keyWindow?.rootViewController?.present(self.imagePicker, animated: true, completion: nil)
        }
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        DispatchQueue.main.async {
            self.imagePicker.dismiss(animated: true, completion: nil)
        }
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let image = info[UIImagePickerControllerEditedImage] as? UIImage {
            completionHandler?(image)
        } else if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            completionHandler?(image)
        } else {
            
        }
        DispatchQueue.main.async {
            self.imagePicker.dismiss(animated: true, completion: nil)
        }
        
    }
}
