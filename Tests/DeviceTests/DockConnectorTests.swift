import Testing
import Device

@Test(arguments: ["iPhone15,4", "iPhone17,5", "iPhone19,4", "iPad8,1", "iPad13,18", "iPad17,4"])
func usesUSBC(identifier: String) {
    #expect(Device(identifier: identifier).dockConnector == .usbC)
}

@Test(arguments: ["iPhone5,1", "iPhone14,6", "iPhone15,2", "iPad3,4", "iPad12,1", "iPod9,1"])
func usesLightning(identifier: String) {
    #expect(Device(identifier: identifier).dockConnector == .lightning)
}

@Test(arguments: ["iPhone1,1", "iPhone4,1", "iPad1,1", "iPad3,3", "iPod4,1"])
func usesThirtyPin(identifier: String) {
    #expect(Device(identifier: identifier).dockConnector == .thirtyPin)
}

@Test(arguments: ["", "iPhone99,1", "iPad99,1", "Mac14,2", "Watch7,1"])
func doesNotGuessUncataloguedConnectors(identifier: String) {
    #expect(Device(identifier: identifier).dockConnector == .unknown)
}

@Test func regionalIdentifiersResolveToTheSameDefinition() {
    let phone = Device(identifier: "iPhone19,3")
    let internationalPhone = Device(identifier: "iPhone19,7")
    #expect(phone.definition == internationalPhone.definition)
    #expect(phone.name == "iPhone 18 Pro Max")
    #expect(internationalPhone.identifier == "iPhone19,7")
}

@Test func catalogueHasUniqueNonemptyIdentifiers() {
    var identifiers: Set<String> = []
    for model in Device.all {
        #expect(!model.identifiers.isEmpty)
        #expect(!model.name.isEmpty)
        for identifier in model.identifiers {
            #expect(!identifier.isEmpty)
            #expect(identifiers.insert(identifier).inserted)
        }
    }
}
