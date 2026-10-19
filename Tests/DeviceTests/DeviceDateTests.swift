import Testing
@testable import Device

struct DeviceDateTests {
    @Test func comparesCalendarDatesAcrossBoundaries() {
        #expect(DeviceDate(year: 2024, month: 2, day: 29) < DeviceDate(year: 2024, month: 3, day: 1))
        #expect(DeviceDate(year: 2023, month: 12, day: 31) < DeviceDate(year: 2024, month: 1, day: 1))
        #expect(DeviceDate(year: 2000, month: 2, day: 29) == DeviceDate(year: 2000, month: 2, day: 29))
    }

    @Test func distinguishesAnnouncementFromAvailability() {
        let homePod = Device(identifier: "AudioAccessory1,1")
        #expect(homePod.announcementDate == DeviceDate(year: 2017, month: 6, day: 5))
        #expect(homePod.releaseDate == DeviceDate(year: 2018, month: 2, day: 9))
        let appleTV = Device(identifier: "AppleTV6,2")
        #expect(appleTV.announcementDate == DeviceDate(year: 2017, month: 9, day: 12))
        #expect(appleTV.releaseDate == DeviceDate(year: 2017, month: 9, day: 22))
    }

    @Test func preservesStaggeredLaunches() {
        #expect(Device(identifier: "iPhone13,2").releaseDate == DeviceDate(year: 2020, month: 10, day: 23))
        #expect(Device(identifier: "iPhone13,1").releaseDate == DeviceDate(year: 2020, month: 11, day: 13))
        #expect(Device(identifier: "iPhone13,4").releaseDate == DeviceDate(year: 2020, month: 11, day: 13))
        #expect(Device(identifier: "iPhone14,8").releaseDate == DeviceDate(year: 2022, month: 10, day: 7))
    }

    @Test func doesNotInventUnknownDates() {
        #expect(Device(identifier: "Unknown").announcementDate == nil)
        #expect(Device(identifier: "Unknown").releaseDate == nil)
        let custom = DeviceDefinition(name: "Custom", identifiers: ["custom"], dockConnector: .unknown)
        #expect(custom.announcementDate == nil)
        #expect(custom.releaseDate == nil)
    }

    @Test func distinguishesOrderingFromDocumentedConsumerAvailability() {
        let mini = Device(identifier: "iPad5,1")
        #expect(mini.announcementDate == DeviceDate(year: 2015, month: 9, day: 9))
        #expect(mini.releaseDate == DeviceDate(year: 2015, month: 9, day: 16))
        let touch = Device(identifier: "iPod9,1")
        #expect(touch.announcementDate == DeviceDate(year: 2019, month: 5, day: 28))
        #expect(touch.releaseDate == DeviceDate(year: 2019, month: 5, day: 30))
    }

    @Test func catalogueHasDocumentedDates() {
        #expect(Device.all.allSatisfy { $0.announcementDate != nil && $0.releaseDate != nil })
    }

    @Test func datesResolveForHardwareAndRegulatoryIdentifiers() {
        for definition in Device.all {
            for identifier in definition.identifiers + definition.modelNumbers {
                let device = Device(identifier: identifier)
                #expect(device.announcementDate == definition.announcementDate)
                #expect(device.releaseDate == definition.releaseDate)
            }
            if let announcement = definition.announcementDate, let release = definition.releaseDate {
                #expect(announcement <= release)
            }
        }
        #expect(Device(identifier: "iPhone13,2", modelNumber: "A0000").releaseDate == nil)
    }
}
