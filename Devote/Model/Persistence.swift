//
//  Persistence.swift
//  Devote
//
//  Created by Fatih Emre on 6.01.2025.
//

import CoreData
import CoreTransferable

struct PersistenceController {
    // MARK: - 1. PERSISTENCE CONTROLLER
    static let shared = PersistenceController()
    
    // MARK: - 2. PERSISTENCE CONTROLLER
    let container: NSPersistentContainer

    // MARK: - 3. INITIALIZATION (load the persistent store)
    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "Devote")
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        container.viewContext.automaticallyMergesChangesFromParent = true
    }
}
