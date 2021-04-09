//
//  CamViewController.swift
//  AVCamDemo
//
//  Created by Admin on 2021/4/1.
//

import UIKit

class CamViewController: SwiftyCamViewController {

    @IBOutlet weak var switchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cameraDelegate = self
        switchButton.setImage(UIImage(systemName: "camera.rotate", withConfiguration: UIImage.SymbolConfiguration(pointSize: 27)), for: .normal)
    }
    
    @IBAction func switchButtonClick(_ sender: Any) {
        switchCamera()
    }

}

extension CamViewController: SwiftyCamViewControllerDelegate {
    func swiftyCam(_ swiftyCam: SwiftyCamViewController, didTake photo: UIImage) {
         // Called when takePhoto() is called or if a SwiftyCamButton initiates a tap gesture
         // Returns a UIImage captured from the current session
    }

    func swiftyCam(_ swiftyCam: SwiftyCamViewController, didBeginRecordingVideo camera: SwiftyCamViewController.CameraSelection) {
         // Called when startVideoRecording() is called
         // Called if a SwiftyCamButton begins a long press gesture
    }

    func swiftyCam(_ swiftyCam: SwiftyCamViewController, didFinishRecordingVideo camera: SwiftyCamViewController.CameraSelection) {
         // Called when stopVideoRecording() is called
         // Called if a SwiftyCamButton ends a long press gesture
    }

    func swiftyCam(_ swiftyCam: SwiftyCamViewController, didFinishProcessVideoAt url: URL) {
         // Called when stopVideoRecording() is called and the video is finished processing
         // Returns a URL in the temporary directory where video is stored
    }

    func swiftyCam(_ swiftyCam: SwiftyCamViewController, didFocusAtPoint point: CGPoint) {
         // Called when a user initiates a tap gesture on the preview layer
         // Will only be called if tapToFocus = true
         // Returns a CGPoint of the tap location on the preview layer
    }

    func swiftyCam(_ swiftyCam: SwiftyCamViewController, didChangeZoomLevel zoom: CGFloat) {
          // Called when a user initiates a pinch gesture on the preview layer
          // Will only be called if pinchToZoomn = true
          // Returns a CGFloat of the current zoom level
    }

    func swiftyCam(_ swiftyCam: SwiftyCamViewController, didSwitchCameras camera: SwiftyCamViewController.CameraSelection) {
         // Called when user switches between cameras
         // Returns current camera selection
    }
    
}
