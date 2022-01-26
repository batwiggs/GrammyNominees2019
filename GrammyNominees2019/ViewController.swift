//
//  ViewController.swift
//  GrammyNominees2019
//
//  Created by Brennan Twiggs on 1/25/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nomineeList: UILabel!
    
    @IBOutlet weak var tabs: UISegmentedControl!
    
    var records =
        ["Bad Guy (Billie Eilish)",
        "Hey Ma (Bon Iver)",
        "7 Rings (Ariana Grande)",
        "Hard Place (H.E.R.)",
        "Talk (Khalid)",
        "Old Town Road (Lil Nas X Featuring Billy Ray Cyrus)",
        "Truth Hurts (Lizzo)",
        "Sunflower (Post Malone & Swae Lee)"]
        var albums =
        ["When We All Fall Asleep, Where Do We Go? (Billie Eilish)",
        "I,I (Bon Iver)",
        "Norman F---ing Rockwell! (Lana Del Rey)",
        "Thank U, Next (Ariana Grande)",
        "I Used to Know Her (H.E.R.)",
        "7 (Lil Nas X)",
        "Cuz I Love You (Lizzo)",
        "Father of the Bride (Vampire Weekend)"]
        var songs =
        ["Bad Guy (Billie Eilish,Finneas O'Connell)",
        "Always Remember Us This Way (Natalie Hemby,Lady Gaga,Hillary Lindsey,Lori McKenna)",
        "Bring My Flowers Now (Brandi Carlile,Phil Hanseroth,Tim Hanseroth,Tanya Tucker)",
        "Hard Place (Ruby Amanfu,Sam Ashworth,D. Arcelious Harris,H.E.R.,Rodney Jerkins)",
        "Lover (Taylor Swift)",
        "Norman F---ing Rockwell (Jack Antonoff,Lana Del Rey)",
        "Someone You Loved (Tom Barnes,Lewis Capaldi,Pete Kelleher,Ben Kohn,Sam Roman)",
        "Truth Hurts (Steven Cheung,Eric Frederic,Melissa Jefferson,Jesse Saint John)"]
        var artists =
        ["Billie Eilish",
        "Black Pumas",
        "Lil Nas X",
        "Lizzo",
        "Maggie Rogers",
        "Rosalia",
        "Tank and the Bangas",
        "Yola"]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        showList()
    }
    override func viewWillLayoutSubviews() {
        nomineeList.sizeToFit()
    }
    
    func showList() {
        let index = tabs.selectedSegmentIndex
        var arr: [String] = []
        var i = -1
        nomineeList.text = ""
        switch index {
        case 0:
            arr = albums
            break
        case 1:
            arr = records
            break
        case 2:
            arr = songs
            break
        case 3:
            arr = artists
            break
        default:
            //
            break
        }
        for _ in arr {
            i += 1
            if i == 0{
                nomineeList.text?.append(contentsOf: "\(arr[i].uppercased())\n\n")
            } else {
                nomineeList.text?.append(contentsOf: "\(arr[i])\n\n")
            }
        }
    }
 
    @IBAction func getSelectedList(_ sender: UISegmentedControl) {
        showList()
    }
    
    

}

