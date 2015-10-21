import QtQuick 2.2

Item {
    id: gearPanel
    x: 0
    y: 0
    width: 0
    height: 0

    property int valueGear: CarStatus.gear
    property int valueGearMode: CarStatus.gearMode

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


    states: [
        State {
            name: ""
        },
        State {
            name: "show"
        }
    ]

    transitions: [
        Transition {
            from: ""
            to: "show"
            SequentialAnimation {
            }
        },
        Transition {
            from: "show"
            to: ""
            SequentialAnimation {
            }
        }
    ]
}
