import QtQuick 2.2

Rectangle {
    id: centreInfo
    visible: true

    property int valueTotalMileage: CarStatus.odo
    property real valueTrip: CarStatus.trip1 * 0.1
    property real valueTemp: CarStatus.outTemp
    property string valueTime: CarStatus.time

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

        Image {
            id: kMleft
            x: 723
            y: 610
            opacity: 1.0
            source: "qrc:/images/images/tripTotalMileage/KMleft.png"
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

        Image {
            id: kMright
            x: 1228
            y: 610
            opacity: 1.0
            source: "qrc:/images/images/tripTotalMileage/KMright.png"
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

