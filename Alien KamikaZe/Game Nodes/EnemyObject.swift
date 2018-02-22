//---------------------------------------------------------------------------
//
// Project name: Alien KamikaZe
//
// Project Desc: Arcade fixed shooter where you have to defend yourself from
//               alien fleet invasion
//
//
// File: EnemyObject.swift
// File Desc: Bullet Object in Game of memeber Generic game object class.
//
// Version: 0.1
// Commit: Enemy object with custom action move to location
// Date: 22.02.2018
//
// Contributors:
//          Name         StudenID
//      Viktor Bilyk  - #300964200
//      Andrii Damm   - #300966307
//      Timofei Sopin - #300965775
//      Tarun Singh   - #300967393
//
//---------------------------------------------------------------------------

import SpriteKit

class EnemyObject: GenericObject {
    //movement speed of the object
    var objectMoveSpeed: CGFloat?
    var hp: Int?
    
    override init(objectTextureFileName: String, objectScale: CGFloat) {
        super.init(objectTextureFileName: objectTextureFileName, objectScale: objectScale)
        self.zPosition = 20



    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //move frigate to location
    override func doActions(location: CGPoint, speed: CGFloat) {
        //create action to move to location
        let actionMove = SKAction.move(to: location, duration: TimeInterval(self.objectMoveSpeed!))
        
        //create action to fade object when reached location
        let actionFade = SKAction.fadeOut(withDuration: 0.2)
       
        //create action sequence aftret comletion remove onject from the scene
        let actionSequence = SKAction.sequence([actionMove, actionFade, SKAction.removeFromParent()])
        
        //run action
        self.run(actionSequence)
    }
}
