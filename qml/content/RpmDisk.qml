import QtQuick 2.2

Item {
    id: rpmPanel

    Image {
        id: rpmRing
        x: 221
        y: 241
        opacity: 0
        source: "qrc:/letfPanel/images/letfPanel/rpmPanel/rpmRing.png"
    }
    Image {
        id: rpmBg
        x: -44
        y: 37
        opacity: 0
        source: "qrc:/letfPanel/images/letfPanel/rpmPanel/rpmBg.png"

        transform: Rotation {
            id: rpmBg_Rota
            angle: 90
            origin.x: 0
            origin.y: 388
            axis { x: 1; y: 0; z: 0 }
            Behavior on angle {  // for animation
                PropertyAnimation { duration: 300; easing.type : Easing.OutElastic; easing.amplitude: 0.5; easing.period: 0.5 }
            }
        }
    }
    Image {
        id: rpmScale
        x: 30
        y: 70
        opacity: 0
        source: "qrc:/letfPanel/images/letfPanel/rpmPanel/rpmScale.png"
    }
    Item {
        id: numberShow
        opacity: 0
        property real numCtrl: 0.0 //arange 0.0 - 8.0

        Image {
            id: rpm7
            x: 569
            y: 507
            opacity: numberShow.numCtrl > 0.5
            source: "qrc:/letfPanel/images/letfPanel/rpmPanel/rpm7.png"
        }
        Image {
            id: rpm6
            x: 604
            y: 362
            opacity: numberShow.numCtrl > 1.5
            source: "qrc:/letfPanel/images/letfPanel/rpmPanel/rpm6.png"
        }
        Image {
            id: rpm5
            x: 536
            y: 201
            opacity: numberShow.numCtrl > 2.5
            source: "qrc:/letfPanel/images/letfPanel/rpmPanel/rpm5.png"
        }
        Image {
            id: rpm4
            x: 412
            y: 115
            opacity: numberShow.numCtrl > 3.5
            source: "qrc:/letfPanel/images/letfPanel/rpmPanel/rpm4.png"
        }
        Image {
            id: rpm3
            x: 271
            y: 112
            opacity: numberShow.numCtrl > 4.5
            source: "qrc:/letfPanel/images/letfPanel/rpmPanel/rpm3.png"
        }
        Image {
            id: rpm2
            x: 133
            y: 196
            opacity: numberShow.numCtrl > 5.5
            source: "qrc:/letfPanel/images/letfPanel/rpmPanel/rpm2.png"
        }
        Image {
            id: rpm1
            x: 77
            y: 363
            opacity: numberShow.numCtrl > 6.5
            source: "qrc:/letfPanel/images/letfPanel/rpmPanel/rpm1.png"
        }
        Image {
            id: rpm0
            x: 130
            y: 506
            opacity: numberShow.numCtrl > 7.5
            source: "qrc:/letfPanel/images/letfPanel/rpmPanel/rpm0.png"
        }
    }
    Image {
        id: rpmPointer
        x: 61
        y: 421
        opacity: 0
        source: "qrc:/letfPanel/images/letfPanel/rpmPanel/rpmPointer.png"

        transform: Rotation {
            id: pointerRotation
            origin.x: 297
            origin.y: -33
            angle: 247 //valueRpm * 247 / 7000
            Behavior on angle { SpringAnimation{ spring: 2; damping: 0.2} }
        }
    }

    states: [
        State {
            name: ""
            PropertyChanges { target: rpmBg; opacity: 0 }
            PropertyChanges { target: rpmBg_Rota; angle: 90 }
            PropertyChanges { target: rpmRing; opacity: 0.0 }
            PropertyChanges { target: rpmScale; opacity: 0.0 }
            PropertyChanges { target: rpmPointer; opacity: 0.0 }
            PropertyChanges { target: numberShow; opacity: 0.0; numCtrl: 0.0 }
        },
        State {
            name: "show"
            PropertyChanges { target: rpmBg; opacity: 1.0 }
            PropertyChanges { target: rpmBg_Rota; angle: 0 }
            PropertyChanges { target: rpmRing; opacity: 1.0 }
            PropertyChanges { target: rpmScale; opacity: 1.0 }
            PropertyChanges { target: rpmPointer; opacity: 1.0 }
            PropertyChanges { target: numberShow; opacity: 1.0; numCtrl: 8.0 }
        }
    ]

    transitions: [
        Transition {
            from: ""
            to: "show"
            SequentialAnimation {
                ParallelAnimation {
                    NumberAnimation { target: rpmBg; property: "opacity"; duration: 500 }
                    NumberAnimation { target: rpmBg_Rota; property: "angle"; duration: 500 }
                }
                ParallelAnimation {
                    NumberAnimation { target: rpmRing; property: "opacity"; duration: 100 }
                    NumberAnimation { target: rpmPointer; property: "opacity"; duration: 100 }
                    NumberAnimation { target: rpmScale; property: "opacity"; duration: 100 }
                }
                ParallelAnimation {
                    NumberAnimation { target: numberShow; property: "opacity"; duration: 500 }
                    NumberAnimation { target: numberShow; property: "numCtrl"; duration: 500 }
                    NumberAnimation { target: pointerRotation; property: "angle"; from: 247; to:0; duration: 500 }
                }
            }
        },
        Transition {
            from: "show"
            to: ""
            SequentialAnimation {
            }
        }
    ]
    Component.onCompleted: {
        rpmPanel.state = "show"
    }
}
