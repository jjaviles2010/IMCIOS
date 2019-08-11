//
//  IMCDetailViewController.swift
//  IMC
//
//  Created by Jose Javier on 10/08/19.
//  Copyright © 2019 JLApps. All rights reserved.
//

import UIKit

class IMCDetailViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var lbIMC: UILabel!
    
    @IBOutlet weak var lbIMSDesc: UILabel!
    
    @IBOutlet weak var ivIMC: UIImageView!
    
    //MARK: - Properties
    var weight: String = ""
    var height: String = ""
    var isMale: Bool = true
    
    //MARK: - Super Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        calculateIMC()

        // Do any additional setup after loading the view.
    }
    
    func calculateIMC() {
        let height : Double = Double(self.height) ?? 0.0
        let weight : Double = Double(self.weight) ?? 0.0
        
        let imc = weight / (height * height)
        lbIMC.text = String(format: "%.2f", imc)
        setIMCDescription(imc)
    }

    func setIMCDescription(_ imc: Double) {
        let imcDesc: (imageName: String, imcDesc: String)  = isMale ? getIMCMaleStatus(imc) : getIMCFamaleStatus(imc)
        
        lbIMSDesc.text = imcDesc.imcDesc
        
        ivIMC.image = UIImage(named: imcDesc.imageName)
        
    }
    
    func getIMCFamaleStatus(_ imc: Double) -> (String, String) {
        
        switch imc {
        case ..<19:
            return ("fem_abaixo", "Abaixo do peso")
        case 19..<23.9:
            return ("fem_ideal", "Peso ideal")
        case 24..<28.9:
            return ("fem_sobre", "Obesidade leve")
        case 29..<38.9:
            return ("fem_obeso", "Obesidade moderada")
        default:
            return ("fem_extremo_obeso", "Obesidade mórbida")
        }
    }
    
    func getIMCMaleStatus(_ imc: Double) -> (String, String) {
        switch imc {
        case ..<20:
            return ("masc_abaixo", "Abaixo do peso")
        case 20..<24.9:
            return ("masc_ideal", "Peso ideal")
        case 25..<29.9:
            return ("masc_sobre", "Obesidade leve")
        case 30..<39.9:
            return ("masc_obeso", "Obesidade moderada")
        default:
            return ("masc_extremo_obeso", "Obesidade mórbida")
        }    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    

}
