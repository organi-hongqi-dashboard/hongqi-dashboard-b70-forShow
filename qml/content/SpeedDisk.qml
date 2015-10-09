import QtQuick 2.2

Item {
    id: speedPanel

    Image {
        id: speedBg
        x: 1152
        y: 37
        opacity: 0
        source: "qrc:/rightPanel/images/rightPanel/speedPanel/speedBg.png"

        transform: Rotation {
            id: speedBg_Rota
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
        id: speedRing
        x: 1417
        y: 241
        opacity: 0
        source: "qrc:/rightPanel/images/rightPanel/speedPanel/speedRing.png"
    }
    Image {
        id: speedScale
        x: 1239
        y: 67
        opacity: 0
        source: "qrc:/rightPanel/images/rightPanel/speedPanel/speedScale.png"
    }
    Item {
        id: numberShow
        opacity: 0
        property int numCtrl: 260 //arange 0.0 - 260.0

        Image {
            id: speed240
            x: 1738
            y: 502
            opacity: numberShow.numCtrl > 10
            source: "qrc:/rightPanel/images/rightPanel/speedPanel/speed240.png"
        }
        Image {
            id: speed220
            x: 1763
            y: 421
            opacity: numberShow.numCtrl > 30
            source: "qrc:/rightPanel/images/rightPanel/speedPanel/speed220.png"
        }
        Image {
            id: speed200
            x: 1761
            y: 328
            opacity: numberShow.numCtrl > 50
            source: "qrc:/rightPanel/images/rightPanel/speedPanel/speed200.png"
        }
        Image {
            id: speed180
            x: 1751
            y: 258
            opacity: numberShow.numCtrl > 70
            source: "qrc:/rightPanel/images/rightPanel/speedPanel/speed180.png"
        }
        Image {
            id: speed160
            x: 1703
            y: 185
            opacity: numberShow.numCtrl > 90
            source: "qrc:/rightPanel/images/rightPanel/speedPanel/speed160.png"
        }
        Image {
            id: speed140
            x: 1626
            y: 138
            opacity: numberShow.numCtrl > 110
            source: "qrc:/rightPanel/images/rightPanel/speedPanel/speed140.png"
        }
        Image {
            id: speed120
            x: 1526
            y: 124
            opacity: numberShow.numCtrl > 130
            source: "qrc:/rightPanel/images/rightPanel/speedPanel/speed120.png"
        }
        Image {
            id: speed100
            x: 1430
            y: 138
            opacity: numberShow.numCtrl > 150
            source: "qrc:/rightPanel/images/rightPanel/speedPanel/speed100.png"
        }
        Image {
            id: speed80
            x: 1359
            y: 185
            opacity: numberShow.numCtrl > 170
            source: "qrc:/rightPanel/images/rightPanel/speedPanel/speed80.png"
        }
        Image {
            id: speed60
            x: 1320
            y: 251
            opacity: numberShow.numCtrl > 190
            source: "qrc:/rightPanel/images/rightPanel/speedPanel/speed60.png"
        }
        Image {
            id: speed40
            x: 1287
            y: 328
            opacity: numberShow.numCtrl > 210
            source: "qrc:/rightPanel/images/rightPanel/speedPanel/speed40.png"
        }
        Image {
            id: speed20
            x: 1289
            y: 423
            opacity: numberShow.numCtrl > 230
            source: "qrc:/rightPanel/images/rightPanel/speedPanel/speed20.png"
        }
        Image {
            id: speed0
            x: 1325
            y: 502
            opacity: numberShow.numCtrl > 250
            source: "qrc:/rightPanel/images/rightPanel/speedPanel/speed0.png"
        }
    }

    Image {
        id: speedPointer
        x: 1266
        y: 412
        opacity: 0
        source: "qrc:/rightPanel/images/rightPanel/speedPanel/speedPointer.png"

        transform: Rotation {
            id: pointerRotation
            origin.x: 1555- speedPointer.x;
            origin.y: 388 - speedPointer.y;
            angle: 240//valueSpeed * 240 / 240
            Behavior on angle { SpringAnimation{ spring: 1.2; damping: 0.2; }
            }
        }
    }

    states: [
        State {
            name: ""
            PropertyChanges { target: speedBg; opacity: 0 }
            PropertyChanges { target: speedBg_Rota; angle: 90 }
            PropertyChanges { target: speedRing; opacity: 0.0 }
            PropertyChanges { target: speedScale; opacity: 0.0 }
            PropertyChanges { target: speedPointer; opacity: 0.0 }
            PropertyChanges { target: numberShow; opacity: 0.0; numCtrl: 0.0 }
        },
        State {
            name: "show"
            PropertyChanges { target: speedBg; opacity: 1.0 }
            PropertyChanges { target: speedBg_Rota; angle: 0 }
            PropertyChanges { target: speedRing; opacity: 1.0 }
            PropertyChanges { target: speedScale; opacity: 1.0 }
            PropertyChanges { target: speedPointer; opacity: 1.0 }
            PropertyChanges { target: numberShow; opacity: 1.0; numCtrl: 260.0 }
        }
    ]

    transitions: [
        Transition {
            from: ""
            to: "show"
            SequentialAnimation {
                ParallelAnimation {
                    NumberAnimation { target: speedBg; property: "opacity"; duration: 500 }
                    NumberAnimation { target: speedBg_Rota; property: "angle"; duration: 500 }
                }
                ParallelAnimation {
                    NumberAnimation { target: speedRing; property: "opacity"; duration: 100 }
                    NumberAnimation { target: speedPointer; property: "opacity"; duration: 100 }
                    NumberAnimation { target: speedScale; property: "opacity"; duration: 100 }
                }
                ParallelAnimation {
                    NumberAnimation { target: numberShow; property: "opacity"; duration: 500 }
                    NumberAnimation { target: numberShow; property: "numCtrl"; duration: 500 }
                    NumberAnimation { target: pointerRotation; property: "angle"; from: 240; to:0; duration: 500 }
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
        speedPanel.state = "show"
    }
}
