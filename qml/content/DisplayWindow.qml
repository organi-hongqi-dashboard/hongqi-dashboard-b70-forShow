import QtQuick 2.2

Rectangle {
    id: displayWindow
    visible: true

    property real valueDisplayContent1: CarStatus.avgFuel * 0.1
    property real valueDisplayContent2: CarStatus.instantaneousFuel * 0.1
    property int valueDisplayContent3: CarStatus.remainMileage
    property bool avgFuelUint: CarStatus.avgFuelUnit
    property bool instantaneousFuelUint: CarStatus.instantaneousFuelUnit

    Item {
        id: displayWindowShow
//        opacity: (carDoorValue == 0) ? 1.0 : 0.0   // no door open

        Image {
            id: mainWindow
            x: 752
            y: 229
            opacity: 1.0
            source: "qrc:/images/images/displayWindow/mainWindow.png"
        }

        Image {
            id: lPerHContent1
            x: 971
            y: 302
            opacity: avgFuelUint == 0 ? 1.0 : 0.0
            source: "qrc:/images/images/displayWindow/lPerH.png"
        }
        Image {
            id: lPerKmContent1
            x: 971
            y: 302
            opacity: avgFuelUint == 1 ? 1.0 : 0.0
            source: "qrc:/images/images/displayWindow/lPerKm.png"
        }
        Image {
            id: lPerKmContent2
            x: 969
            y: 373
            opacity: instantaneousFuelUint == 1 ? 1.0 : 0.0
            source: "qrc:/images/images/displayWindow/lPerKm.png"
        }
        Image {
            id: lPerHContent2
            x: 969
            y: 373
            opacity: instantaneousFuelUint == 0 ? 1.0 : 0.0
            source: "qrc:/images/images/displayWindow/lPerH.png"
        }

        Text {
            id: displayContent1
            x: 970
            y: 266
            font.italic: true
            font.pixelSize: 28
            color: "white"
//                text: (avgFuelUint == 1) ? "---" : valueDisplayContent1.toFixed(1)
            text: valueDisplayContent1.toFixed(1) == 0xFFFF * 0.1 ? "---" : valueDisplayContent1.toFixed(1)
            font.family: fontName.fontCurrent
        }

        Text {
            id: displayContent2
            x: 970
            y: 336
            font.italic: true
            font.pixelSize: 28
            color: "white"
//                text: (nameInstantaneousFuelUint == 1) ? "---" : valueDisplayContent2.toFixed(1)
//                text: (nameInstantaneousFuelUint == 0xFFFF) ? "---" : valueDisplayContent2.toFixed(1)
            text: valueDisplayContent2.toFixed(1) == 0xFFFF * 0.1 ? "---" : valueDisplayContent2.toFixed(1)
            font.family: fontName.fontCurrent
        }


        Text {
            id: displayContent3
            x: 965
            y: 411
            font.italic: true
            font.pixelSize: 28
            color: "white"
            text: valueDisplayContent3 == 0xFFFF ? "---" : valueDisplayContent3
            font.family: fontName.fontCurrent
        }
    }

    states: [
        State {
            name: ""
            PropertyChanges { target: displayWindow; visible: false }
        },
        State {
            name: "show"
            PropertyChanges { target: displayWindow; visible: true }
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
//        displayWindow.state = "show"
//    }
}

