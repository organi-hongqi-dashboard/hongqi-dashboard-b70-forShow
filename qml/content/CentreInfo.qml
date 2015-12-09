import QtQuick 2.2

Rectangle {
    id: centreInfo
    visible: true

    property int valueTotalMileage: CarStatus.odo
    property real valueTrip: CarStatus.trip1 * 0.1
    property real valueTemp: CarStatus.outTemp
    property string valueTime: CarStatus.time
    property int valueGear: CarStatus.gear
    property int valueGearMode: CarStatus.gearMode

    // module dateTime
    Item {
        id: dateTime

        Image {
            id: dateTimeOutline
            x: 513
            y: 71
            opacity: 1.0
            source: "qrc:/images/images/dateTime/dateTimeOutline.png"
        }

        Text {
            id: numTemp
//            x: 1324
            x: 1313
            //            y: 20
            y: 17
            font.italic: true
//            font.bold: true
            font.pixelSize: 28
            color: "white"
            text: valueTemp.toFixed(0)
            font.family: fontName.fontCurrent
        }
        Image {
            id: iconC
            //        x: 1358
            anchors.left: numTemp.right
            anchors.leftMargin: 8
            y: 25
            opacity: 1.0
            source: "qrc:/images/images/dateTime/iconC.png"
        }

        Image {
            id: tempIcon
            x: 1293
            y: 22
            opacity: 1.0
            source: "qrc:/images/images/dateTime/tempIcon.png"
        }

        Image {
            id: timeIcon
//            x: 522
            y: 22
            anchors.right: numTime.left
            anchors.rightMargin: 3
            opacity: 1.0
            source: "qrc:/images/images/dateTime/timeIcon.png"
        }
        Text {
            id: numTime
            x: 562
            y: 17
            font.italic: true
//            font.bold: true
            font.pixelSize: 28
            color: "white"
            text: valueTime
            font.family: fontName.fontCurrent
        }
    }



    // module tripTotalMileage
    Item {
        id: tripTotalMileage

        Text {
            id: kMleft
            x: 723
            y: 601
            color: "black"
            font.pixelSize: 24
            font.italic: true
            text: "km"
            font.family: fontName.fontCurrent
        }
        Text {
            id: numTrip
            anchors.right: kMleft.left
            anchors.rightMargin: 3
            y: 597
            color: "black"
            font.italic: true
            font.pixelSize: 28
            text: valueTrip.toFixed(1)
            font.family: fontName.fontCurrent
        }

        Text {
            id: kMright
            x: 1228
            y: 601
            color: "black"
            font.pixelSize: 24
            font.italic: true
            text: "km"
            font.family: fontName.fontCurrent
        }
        Text {
            id: numTotalMileage
            anchors.right: kMright.left
            anchors.rightMargin: 3
            y: 597
            color: "black"
            font.italic: true
            font.pixelSize: 28
            text: valueTotalMileage
            font.family: fontName.fontCurrent
        }

        Image {
            id: tripTotalMileageOut
            x: 599
            y: 634
            opacity: 1.0
            source: "qrc:/images/images/tripTotalMileage/tripTotalMileageOut.png"
        }
    }

    // module gear
    Item {
        id: gear

        Image {
            id: gearOutline
            x: 839
            y: 587
            opacity: 1.0
            source: "qrc:/images/images/gear/gearOutline.png"
        }
        Image {
            id: gearD
            x: 885
            y: 535
            opacity: valueGearMode == 0x01 ? 1.0 : 0.0
            source: "qrc:/images/images/gear/gearD.png"
        }
        Image {
            id: gearN
            x: 884
            y: 536
            opacity: (valueGearMode == 0 && valueGear == 0x0e) ? 1.0 : 0.0
            source: "qrc:/images/images/gear/gearN.png"
        }
        Image {
            id: gearR
            x: 887
            y: 535
            opacity: (valueGearMode == 0 && valueGear == 0x0f) ? 1.0 : 0.0
            source: "qrc:/images/images/gear/gearR.png"
        }
        Image {
            id: gearP
            x: 888
            y: 535
            opacity: (valueGearMode == 0 && valueGear == 0) ? 1.0 : 0.0
            source: "qrc:/images/images/gear/gearP.png"
        }
    }

    states: [
        State {
            name: ""
            PropertyChanges { target: centreInfo; visible: false }
        },
        State {
            name: "show"
            PropertyChanges { target: centreInfo; visible: true }
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
//    Component.onCompleted: {
//        centreInfo.state = ""
//    }
}

