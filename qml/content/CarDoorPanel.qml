import QtQuick 2.2

Rectangle {
    id: carDoorPanel
    visible: false

    property bool valueRightFrontDoor: CarStatus.rfDoor
    property bool valueLeftFrontDoor: CarStatus.lfDoor
    property bool valueRightRearDoor: CarStatus.rrDoor
    property bool valueLeftRearDoor: CarStatus.lrDoor
    property bool valueLuggageCover: CarStatus.trunkDoor
    property bool valueHood: CarStatus.hoodDoor

    // module carDoorState
    Item {
        id: carDoorState
//        opacity: carDoorValue == 1 ? 1.0 : 0.0

        Image {
            id: carPic
            x: 834
            y: 148
            opacity: 1.0
            source: "qrc:/images/images/carDoorState/carPic.png"
        }
        Image {
            id: rightFrontDoorOpen
            x: 1004
            y: 316
            opacity: valueRightFrontDoor == 1 ? 1.0 : 0.0
            source: "qrc:/images/images/carDoorState/rightFrontDoorOpen.png"
        }
        Image {
            id: leftFrontDoorOpen
            x: 852
            y: 316
            opacity: valueLeftFrontDoor == 1 ? 1.0 : 0.0
            source: "qrc:/images/images/carDoorState/leftFrontDoorOpen.png"
        }
        Image {
            id: rightRearDoorOpen
            x: 1002
            y: 390
            opacity: valueRightRearDoor == 1 ? 1.0 : 0.0
            source: "qrc:/images/images/carDoorState/rightRearDoorOpen.png"
        }
        Image {
            id: leftRearDoorOpen
            x: 865
            y: 390
            opacity: valueLeftRearDoor == 1 ? 1.0 : 0.0
            source: "qrc:/images/images/carDoorState/leftRearDoorOpen.png"
        }
        Image {
            id: luggageCoverOpen
            x: 913
            y: 494
            opacity: valueLuggageCover == 1 ? 1.0 : 0.0
            source: "qrc:/images/images/carDoorState/luggageCoverOpen.png"
        }
        Image {
            id: hoodOpen
            x: 901
            y: 225
            opacity: valueHood == 1 ? 1.0 : 0.0
            source: "qrc:/images/images/carDoorState/hoodOpen.png"
        }
    }

    states: [
        State {
            name: ""
            PropertyChanges { target: carDoorPanel; visible: false }
        },
        State {
            name: "show"
            PropertyChanges { target: carDoorPanel; visible: true }
        }
    ]

    transitions: [
        Transition {
            from: ""
            to: "show"

        },
        Transition {
            from: "show"
            to: ""

        }
    ]
}

