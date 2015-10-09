import QtQuick 2.2

Item {
    id: gearPanel
    x: 0
    y: 0
    width: 0
    height: 0

    Image {
        id: gearBg
        x: 839
        y: 587
        opacity: 1.0
        source: "qrc:/gearPanel/images/gearPanel/gearBg.png"
    }
    Image {
        id: gearR
        x: 892
        y: 596
        opacity: 1.0
        source: "qrc:/gearPanel/images/gearPanel/gearR.png"
    }
    Image {
        id: gearD
        x: 1027
        y: 596
        opacity: 1.0
        source: "qrc:/gearPanel/images/gearPanel/gearD.png"
    }
    Image {
        id: gearN
        x: 983
        y: 596
        opacity: 1.0
        source: "qrc:/gearPanel/images/gearPanel/gearN.png"
    }
    Image {
        id: gearP
        x: 942
        y: 596
        opacity: 1.0
        source: "qrc:/gearPanel/images/gearPanel/gearP.png"
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
