import QtQuick 2.4

Item {
    id: energy_flow
    x: 0
    y: 0
    width: 1920
    height: 720

    /* [start] properties */
    property bool boXingHuiJiaV: 5 === CarStatus.vehicleWorkingMode
    property bool chunDianDongMoShiV: 2 === CarStatus.vehicleWorkingMode
    property bool zaiShengZhiDongMoShiV: 4 === CarStatus.vehicleWorkingMode
    property bool jingZhiMoShiV: 1 === CarStatus.vehicleWorkingMode
    property bool hunDongMoShiV: 3 === CarStatus.vehicleWorkingMode

    property bool flowGearBox: CarStatus.flowGearBox
    property bool flowBattery: CarStatus.flowBattery
    property int flowBatFlow: CarStatus.flowBatFlow
    property int flowFrontWheel: CarStatus.flowFrontWheel
    property int flowWheels: CarStatus.flowWheels
    property int flowMotorV: CarStatus.flowMotor

    property int valueBatteryPower: CarStatus.soc
    /* [end] properties */


    Image {
        id: energy_flow_bg
        x: 645
        y: 288
        opacity: 1.0
        source: "qrc:/energyFlow/images/energyFlow/energy-flow-bg.png"
    }
    Image {
        id: wheelUp0
        x: 775
        y: 325
        opacity: 1.0
        source: "qrc:/energyFlow/images/energyFlow/wheelUp.png"
    }



    Text {
        id: boxinghuijia
        visible: boXingHuiJiaV
        color: "white"
        font.pixelSize: 30
        text: qsTr("跛行回家")
        font.family: fontName.fontCurrent
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -180
    }

    Text {
        id: chunDianDongMoShi
        visible: chunDianDongMoShiV
        color: "white"
        font.pixelSize: 30
        text: qsTr("纯电动模式")
        font.family: fontName.fontCurrent
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -180
    }

    Text {
        id: zaiShengZhiDongMoShi
        visible: zaiShengZhiDongMoShiV
        color: "white"
        font.pixelSize: 30
        text: qsTr("再生制动模式")
        font.family: fontName.fontCurrent
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -180
    }

    Text {
        id: jingZhiMoShi
        visible: jingZhiMoShiV
        color: "white"
        font.pixelSize: 30
        text: qsTr("静止模式")
        font.family: fontName.fontCurrent
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -180
    }

    Text {
        id: hunDongMoShi
        visible: hunDongMoShiV
        color: "white"
        font.pixelSize: 30
        text: qsTr("混动模式")
        font.family: fontName.fontCurrent
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -180
    }

    // module bat-g
    Item {
        visible: true == flowBattery
        Image {
            id: bat_10
            x: 1019
            y: 361
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bat-g/bat10.png"
        }
        Image {
            id: bat_9
            x: 1019
            y: 367
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bat-g/bat-9.png"
        }
        Image {
            id: bat_8
            x: 1019
            y: 373
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bat-g/bat-8.png"
        }
        Image {
            id: bat_7
            x: 1018
            y: 378
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bat-g/bat-7.png"
        }
        Image {
            id: bat_6
            x: 1018
            y: 385
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bat-g/bat-6.png"
        }
        Image {
            id: bat_5
            x: 1018
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bat-g/bat-5.png"
        }
        Image {
            id: bat_4
            x: 1018
            y: 398
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bat-g/bat-4.png"
        }
        Image {
            id: bat_3
            x: 1017
            y: 404
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bat-g/bat-3.png"
        }
        Image {
            id: bat_2
            x: 1017
            y: 411
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bat-g/bat-2.png"
        }
        Image {
            id: bat_1
            x: 1017
            y: 418
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bat-g/bat-1.png"
        }
        SequentialAnimation {
            loops: Animation.Infinite
            running: true

            NumberAnimation { target: bat_1; property: "opacity"; from: 0.0; to: 1.0; duration: 150 }
            NumberAnimation { target: bat_2; property: "opacity"; from: 0.0; to: 1.0; duration: 150 }
            NumberAnimation { target: bat_3; property: "opacity"; from: 0.0; to: 1.0; duration: 150 }
            NumberAnimation { target: bat_4; property: "opacity"; from: 0.0; to: 1.0; duration: 150 }
            NumberAnimation { target: bat_5; property: "opacity"; from: 0.0; to: 1.0; duration: 150 }
            NumberAnimation { target: bat_6; property: "opacity"; from: 0.0; to: 1.0; duration: 150 }
            NumberAnimation { target: bat_7; property: "opacity"; from: 0.0; to: 1.0; duration: 150 }
            NumberAnimation { target: bat_8; property: "opacity"; from: 0.0; to: 1.0; duration: 150 }
            NumberAnimation { target: bat_9; property: "opacity"; from: 0.0; to: 1.0; duration: 150 }
            NumberAnimation { target: bat_10; property: "opacity"; from: 0.0; to: 1.0; duration: 150 }

            ParallelAnimation {
                NumberAnimation { target: bat_10; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: bat_9; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: bat_8; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: bat_7; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: bat_6; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: bat_5; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: bat_4; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: bat_3; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: bat_2; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: bat_1; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
            }
        }

    }

    // module bat-g
    Item {
        visible: false == flowBattery
        Image {
            id: bat_10_2
            x: 1019
            y: 361
            opacity: (valueBatteryPower == 100 ? 1.0 : 0.0)
            source: "qrc:/energyFlow/images/energyFlow/bat-g/bat10.png"
        }
        Image {
            id: bat_9_2
            x: 1019
            y: 367
            opacity: (valueBatteryPower >= 90 ? 1.0 : 0.0)
            source: "qrc:/energyFlow/images/energyFlow/bat-g/bat-9.png"
        }
        Image {
            id: bat_8_2
            x: 1019
            y: 373
            opacity: (valueBatteryPower >= 80 ? 1.0 : 0.0)
            source: "qrc:/energyFlow/images/energyFlow/bat-g/bat-8.png"
        }
        Image {
            id: bat_7_2
            x: 1018
            y: 378
            opacity: (valueBatteryPower >= 70 ? 1.0 : 0.0)
            source: "qrc:/energyFlow/images/energyFlow/bat-g/bat-7.png"
        }
        Image {
            id: bat_6_2
            x: 1018
            y: 385
            opacity: (valueBatteryPower >= 60 ? 1.0 : 0.0)
            source: "qrc:/energyFlow/images/energyFlow/bat-g/bat-6.png"
        }
        Image {
            id: bat_5_2
            x: 1018
            y: 391
            opacity: (valueBatteryPower >= 50 ? 1.0 : 0.0)
            source: "qrc:/energyFlow/images/energyFlow/bat-g/bat-5.png"
        }
        Image {
            id: bat_4_2
            x: 1018
            y: 398
            opacity: (valueBatteryPower >= 40 ? 1.0 : 0.0)
            source: "qrc:/energyFlow/images/energyFlow/bat-g/bat-4.png"
        }
        Image {
            id: bat_3_2
            x: 1017
            y: 404
            opacity: (valueBatteryPower >= 30 ? 1.0 : 0.0)
            source: "qrc:/energyFlow/images/energyFlow/bat-g/bat-3.png"
        }
        Image {
            id: bat_2_2
            x: 1017
            y: 411
            opacity: (valueBatteryPower >= 20 ? 1.0 : 0.0)
            source: "qrc:/energyFlow/images/energyFlow/bat-g/bat-2.png"
        }
        Image {
            id: bat_1_2
            x: 1017
            y: 418
            opacity: (valueBatteryPower >= 10 ? 1.0 : 0.0)
            source: "qrc:/energyFlow/images/energyFlow/bat-g/bat-1.png"
        }
    }

    // module supply-g
    Item {
        visible: 1 == flowBatFlow
        Image {
            id: supply_23
            x: 1003
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/supply-g/supply-23.png"
        }
        Image {
            id: supply_22
            x: 993
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/supply-g/supply-22.png"
        }
        Image {
            id: supply_21
            x: 982
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/supply-g/supply-21.png"
        }
        Image {
            id: supply_20
            x: 972
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/supply-g/supply-20.png"
        }
        Image {
            id: supply_19
            x: 961
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/supply-g/supply-19.png"
        }
        Image {
            id: supply_18
            x: 951
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/supply-g/supply-18.png"
        }
        Image {
            id: supply_17
            x: 941
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/supply-g/supply-17.png"
        }
        Image {
            id: supply_16
            x: 930
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/supply-g/supply-16.png"
        }
        Image {
            id: supply_15
            x: 920
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/supply-g/supply-15.png"
        }
        Image {
            id: supply_14
            x: 909
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/supply-g/supply-14.png"
        }
        Image {
            id: supply_13
            x: 899
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/supply-g/supply-13.png"
        }
        Image {
            id: supply_12
            x: 889
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/supply-g/supply-12.png"
        }
        Image {
            id: supply_11
            x: 878
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/supply-g/supply-11.png"
        }
        Image {
            id: supply_10
            x: 868
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/supply-g/supply-10.png"
        }
        Image {
            id: supply_9
            x: 857
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/supply-g/supply-9.png"
        }
        Image {
            id: supply_8
            x: 847
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/supply-g/supply-8.png"
        }
        Image {
            id: supply_7
            x: 837
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/supply-g/supply-7.png"
        }
        Image {
            id: supply_6
            x: 826
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/supply-g/supply-6.png"
        }
        Image {
            id: supply_5
            x: 816
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/supply-g/supply-5.png"
        }
        Image {
            id: supply_4
            x: 805
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/supply-g/supply-4.png"
        }
        Image {
            id: supply_3
            x: 796
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/supply-g/supply-3.png"
        }

        SequentialAnimation {
            loops: Animation.Infinite
            running: true

            NumberAnimation { target: supply_23; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: supply_22; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: supply_21; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: supply_20; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: supply_19; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: supply_18; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: supply_17; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: supply_16; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: supply_15; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: supply_14; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: supply_13; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: supply_12; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: supply_11; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: supply_10; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: supply_9; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: supply_8; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: supply_7; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: supply_6; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: supply_5; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: supply_4; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: supply_3; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }

            ParallelAnimation {
                NumberAnimation { target: supply_23; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: supply_22; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: supply_21; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: supply_20; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: supply_19; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: supply_18; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: supply_17; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: supply_16; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: supply_15; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: supply_14; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: supply_13; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: supply_12; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: supply_11; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: supply_10; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: supply_9; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: supply_8; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: supply_7; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: supply_6; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: supply_5; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: supply_4; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: supply_3; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
            }
        }
    }

    // module bBlue-g
    // module bBlue-dn-g
    Item {
        visible: 3 == flowFrontWheel
        Image {
            id: bBlue_dn_15
            x: 806
            y: 471
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bBlue-g/bBlue-dn-g/bBlue-dn-15.png"
        }
        Image {
            id: bBlue_dn_14
            x: 813
            y: 470
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bBlue-g/bBlue-dn-g/bBlue-dn-14.png"
        }
        Image {
            id: bBlue_dn_13
            x: 822
            y: 469
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bBlue-g/bBlue-dn-g/bBlue-dn-13.png"
        }
        Image {
            id: bBlue_dn_12
            x: 832
            y: 469
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bBlue-g/bBlue-dn-g/bBlue-dn-12.png"
        }
        Image {
            id: bBlue_dn_11
            x: 841
            y: 469
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bBlue-g/bBlue-dn-g/bBlue-dn-11.png"
        }
        Image {
            id: bBlue_dn_10
            x: 850
            y: 469
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bBlue-g/bBlue-dn-g/bBlue-dn-10.png"
        }
        Image {
            id: bBlue_dn_9
            x: 858
            y: 468
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bBlue-g/bBlue-dn-g/bBlue-dn-9.png"
        }

        Image {
            id: wheelDown
            x: 752
            y: 425
            opacity: 1.0
            source: "qrc:/energyFlow/images/energyFlow/wheelDown.png"
        }

        Image {
            id: bBlue_dn_8
            x: 811
            y: 428
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bBlue-g/bBlue-dn-g/bBlue-dn-8.png"
        }
        Image {
            id: bBlue_dn_7
            x: 805
            y: 425
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bBlue-g/bBlue-dn-g/bBlue-dn-7.png"
        }
        Image {
            id: bBlue_dn_6
            x: 798
            y: 423
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bBlue-g/bBlue-dn-g/bBlue-dn-6.png"
        }
        Image {
            id: bBlue_dn_5
            x: 791
            y: 421
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bBlue-g/bBlue-dn-g/bBlue-dn-5.png"
        }
        Image {
            id: bBlue_dn_4
            x: 783
            y: 421
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bBlue-g/bBlue-dn-g/bBlue-dn-4.png"
        }
        Image {
            id: bBlue_dn_3
            x: 775
            y: 421
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bBlue-g/bBlue-dn-g/bBlue-dn-3.png"
        }
        Image {
            id: bBlue_dn_2
            x: 768
            y: 424
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bBlue-g/bBlue-dn-g/bBlue-dn-2.png"
        }
        Image {
            id: bBlue_dn_1
            x: 762
            y: 428
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bBlue-g/bBlue-dn-g/bBlue-dn-1.png"
        }

        // module bBlue-up-g
        Image {
            id: bBlue_up_15
            x: 839
            y: 364
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bBlue-g/bBlue-up-g/bBlue-up-15.png"
        }
        Image {
            id: bBlue_up_14
            x: 846
            y: 363
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bBlue-g/bBlue-up-g/bBlue-up-14.png"
        }
        Image {
            id: bBlue_up_13
            x: 855
            y: 361
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bBlue-g/bBlue-up-g/bBlue-up-13.png"
        }
        Image {
            id: bBlue_up_12
            x: 865
            y: 361
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bBlue-g/bBlue-up-g/bBlue-up-12.png"
        }
        Image {
            id: bBlue_up_11
            x: 874
            y: 361
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bBlue-g/bBlue-up-g/bBlue-up-11.png"
        }
        Image {
            id: bBlue_up_10
            x: 883
            y: 361
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bBlue-g/bBlue-up-g/bBlue-up-10.png"
        }
        Image {
            id: bBlue_up_9
            x: 891
            y: 361
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bBlue-g/bBlue-up-g/bBlue-up-9.png"
        }

        Image {
            id: wheelUp
            x: 775
            y: 325
            opacity: 1.0
            source: "qrc:/energyFlow/images/energyFlow/wheelUp.png"
        }

        Image {
            id: bBlue_up_8
            x: 831
            y: 333
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bBlue-g/bBlue-up-g/bBlue-up-8.png"
        }
        Image {
            id: bBlue_up_7
            x: 825
            y: 329
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bBlue-g/bBlue-up-g/bBlue-up-7.png"
        }
        Image {
            id: bBlue_up_6
            x: 818
            y: 327
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bBlue-g/bBlue-up-g/bBlue-up-6.png"
        }
        Image {
            id: bBlue_up_5
            x: 810
            y: 326
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bBlue-g/bBlue-up-g/bBlue-up-5.png"
        }
        Image {
            id: bBlue_up_4
            x: 802
            y: 326
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bBlue-g/bBlue-up-g/bBlue-up-4.png"
        }
        Image {
            id: bBlue_up_3
            x: 795
            y: 327
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bBlue-g/bBlue-up-g/bBlue-up-3.png"
        }
        Image {
            id: bBlue_up_2
            x: 788
            y: 331
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bBlue-g/bBlue-up-g/bBlue-up-2.png"
        }
        Image {
            id: bBlue_up_1
            x: 783
            y: 335
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bBlue-g/bBlue-up-g/bBlue-up-1.png"
        }
        SequentialAnimation {
            loops: Animation.Infinite
            running: true

            ParallelAnimation {
                NumberAnimation { target: bBlue_up_8; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bBlue_dn_8; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bBlue_up_7; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bBlue_dn_7; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bBlue_up_6; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bBlue_dn_6; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bBlue_up_5; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bBlue_dn_5; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bBlue_up_4; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bBlue_dn_4; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bBlue_up_3; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bBlue_dn_3; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bBlue_up_2; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bBlue_dn_2; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bBlue_up_1; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bBlue_dn_1; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bBlue_up_15; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bBlue_dn_15; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bBlue_up_14; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bBlue_dn_14; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bBlue_up_13; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bBlue_dn_13; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bBlue_up_12; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bBlue_dn_12; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bBlue_up_11; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bBlue_dn_11; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bBlue_up_10; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bBlue_dn_10; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bBlue_up_9; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bBlue_dn_9; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }

            ParallelAnimation {
                ParallelAnimation {
                    NumberAnimation { target: bBlue_up_8; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bBlue_dn_8; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bBlue_up_7; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bBlue_dn_7; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bBlue_up_6; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bBlue_dn_6; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bBlue_up_5; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bBlue_dn_5; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bBlue_up_4; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bBlue_dn_4; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bBlue_up_3; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bBlue_dn_3; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bBlue_up_2; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bBlue_dn_2; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bBlue_up_1; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bBlue_dn_1; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bBlue_up_9; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bBlue_dn_9; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bBlue_up_10; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bBlue_dn_10; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bBlue_up_11; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bBlue_dn_11; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bBlue_up_12; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bBlue_dn_12; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bBlue_up_13; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bBlue_dn_13; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bBlue_up_14; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bBlue_dn_14; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bBlue_up_15; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bBlue_dn_15; property: "opacity"; to: 0.0; duration: 0 }
                }
            }

        }
    }

    // module fGreen-g
    // module fGreen-dn-g
    Item {
        visible: 4 == flowFrontWheel
        Image {
            id: fGreen_dn_15
            x: 762
            y: 471
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/fGreen-g/fGreen-dn-g/fGreen-dn-15.png"
        }
        Image {
            id: fGreen_dn_14
            x: 753
            y: 470
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/fGreen-g/fGreen-dn-g/fGreen-dn-14.png"
        }
        Image {
            id: fGreen_dn_13
            x: 743
            y: 469
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/fGreen-g/fGreen-dn-g/fGreen-dn-13.png"
        }
        Image {
            id: fGreen_dn_12
            x: 734
            y: 469
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/fGreen-g/fGreen-dn-g/fGreen-dn-12.png"
        }
        Image {
            id: fGreen_dn_11
            x: 725
            y: 469
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/fGreen-g/fGreen-dn-g/fGreen-dn-11.png"
        }
        Image {
            id: fGreen_dn_10
            x: 716
            y: 469
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/fGreen-g/fGreen-dn-g/fGreen-dn-10.png"
        }
        Image {
            id: fGreen_dn_9
            x: 707
            y: 468
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/fGreen-g/fGreen-dn-g/fGreen-dn-9.png"
        }

        Image {
            id: wheelDown2
            x: 752
            y: 425
            opacity: 1.0
            source: "qrc:/energyFlow/images/energyFlow/wheelDown.png"
        }

        Image {
            id: fGreen_dn_8
            x: 811
            y: 428
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/fGreen-g/fGreen-dn-g/fGreen-dn-8.png"
        }
        Image {
            id: fGreen_dn_7
            x: 805
            y: 425
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/fGreen-g/fGreen-dn-g/fGreen-dn-7.png"
        }
        Image {
            id: fGreen_dn_6
            x: 798
            y: 423
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/fGreen-g/fGreen-dn-g/fGreen-dn-6.png"
        }
        Image {
            id: fGreen_dn_5
            x: 791
            y: 421
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/fGreen-g/fGreen-dn-g/fGreen-dn-5.png"
        }
        Image {
            id: fGreen_dn_4
            x: 783
            y: 421
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/fGreen-g/fGreen-dn-g/fGreen-dn-4.png"
        }
        Image {
            id: fGreen_dn_3
            x: 775
            y: 421
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/fGreen-g/fGreen-dn-g/fGreen-dn-3.png"
        }
        Image {
            id: fGreen_dn_2
            x: 768
            y: 424
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/fGreen-g/fGreen-dn-g/fGreen-dn-2.png"
        }
        Image {
            id: fGreen_dn_1
            x: 762
            y: 428
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/fGreen-g/fGreen-dn-g/fGreen-dn-1.png"
        }

        // module fGreen-up-g
        Image {
            id: fGreen_up_15
            x: 786
            y: 364
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/fGreen-g/fGreen-up-g/fGreen-up-15.png"
        }
        Image {
            id: fGreen_up_14
            x: 777
            y: 363
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/fGreen-g/fGreen-up-g/fGreen-up-14.png"
        }
        Image {
            id: fGreen_up_13
            x: 767
            y: 361
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/fGreen-g/fGreen-up-g/fGreen-up-13.png"
        }
        Image {
            id: fGreen_up_12
            x: 758
            y: 361
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/fGreen-g/fGreen-up-g/fGreen-up-12.png"
        }
        Image {
            id: fGreen_up_11
            x: 749
            y: 361
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/fGreen-g/fGreen-up-g/fGreen-up-11.png"
        }
        Image {
            id: fGreen_up_10
            x: 740
            y: 361
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/fGreen-g/fGreen-up-g/fGreen-up-10.png"
        }
        Image {
            id: fGreen_up_9
            x: 731
            y: 361
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/fGreen-g/fGreen-up-g/fGreen-up-9.png"
        }

        Image {
            id: wheelUp2
            x: 775
            y: 325
            opacity: 1.0
            source: "qrc:/energyFlow/images/energyFlow/wheelUp.png"
        }

        Image {
            id: fGreen_up_8
            x: 831
            y: 333
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/fGreen-g/fGreen-up-g/fGreen-up-8.png"
        }
        Image {
            id: fGreen_up_7
            x: 825
            y: 329
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/fGreen-g/fGreen-up-g/fGreen-up-7.png"
        }
        Image {
            id: fGreen_up_6
            x: 818
            y: 327
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/fGreen-g/fGreen-up-g/fGreen-up-6.png"
        }
        Image {
            id: fGreen_up_5
            x: 810
            y: 326
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/fGreen-g/fGreen-up-g/fGreen-up-5.png"
        }
        Image {
            id: fGreen_up_4
            x: 802
            y: 326
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/fGreen-g/fGreen-up-g/fGreen-up-4.png"
        }
        Image {
            id: fGreen_up_3
            x: 795
            y: 327
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/fGreen-g/fGreen-up-g/fGreen-up-3.png"
        }
        Image {
            id: fGreen_up_2
            x: 788
            y: 331
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/fGreen-g/fGreen-up-g/fGreen-up-2.png"
        }
        Image {
            id: fGreen_up_1
            x: 783
            y: 335
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/fGreen-g/fGreen-up-g/fGreen-up-1.png"
        }


        SequentialAnimation {
            loops: Animation.Infinite
            running: true

            ParallelAnimation {
                NumberAnimation { target: fGreen_up_9; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: fGreen_dn_9; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: fGreen_up_10; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: fGreen_dn_10; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: fGreen_up_11; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: fGreen_dn_11; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: fGreen_up_12; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: fGreen_dn_12; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: fGreen_up_13; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: fGreen_dn_13; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: fGreen_up_14; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: fGreen_dn_14; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: fGreen_up_15; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: fGreen_dn_15; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: fGreen_up_8; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: fGreen_dn_8; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: fGreen_up_7; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: fGreen_dn_7; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: fGreen_up_6; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: fGreen_dn_6; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: fGreen_up_5; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: fGreen_dn_5; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: fGreen_up_4; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: fGreen_dn_4; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: fGreen_up_3; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: fGreen_dn_3; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: fGreen_up_2; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: fGreen_dn_2; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: fGreen_up_1; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: fGreen_dn_1; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }

            ParallelAnimation {
                ParallelAnimation {
                    NumberAnimation { target: fGreen_up_8; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: fGreen_dn_8; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: fGreen_up_7; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: fGreen_dn_7; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: fGreen_up_6; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: fGreen_dn_6; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: fGreen_up_5; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: fGreen_dn_5; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: fGreen_up_4; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: fGreen_dn_4; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: fGreen_up_3; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: fGreen_dn_3; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: fGreen_up_2; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: fGreen_dn_2; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: fGreen_up_1; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: fGreen_dn_1; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: fGreen_up_9; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: fGreen_dn_9; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: fGreen_up_10; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: fGreen_dn_10; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: fGreen_up_11; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: fGreen_dn_11; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: fGreen_up_12; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: fGreen_dn_12; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: fGreen_up_13; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: fGreen_dn_13; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: fGreen_up_14; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: fGreen_dn_14; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: fGreen_up_15; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: fGreen_dn_15; property: "opacity"; to: 0.0; duration: 0 }
                }
            }

        }
    }


    // module bOrange-g
    // module bOrange-dn-g
    Item {
        visible: 1 == flowFrontWheel
        Image {
            id: bOrange_dn_15
            x: 806
            y: 471
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOrange-g/bOrange-dn-g/bOrange-dn-15.png"
        }
        Image {
            id: bOrange_dn_14
            x: 813
            y: 470
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOrange-g/bOrange-dn-g/bOrange-dn-14.png"
        }
        Image {
            id: bOrange_dn_13
            x: 822
            y: 469
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOrange-g/bOrange-dn-g/bOrange-dn-13.png"
        }
        Image {
            id: bOrange_dn_12
            x: 832
            y: 469
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOrange-g/bOrange-dn-g/bOrange-dn-12.png"
        }
        Image {
            id: bOrange_dn_11
            x: 841
            y: 469
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOrange-g/bOrange-dn-g/bOrange-dn-11.png"
        }
        Image {
            id: bOrange_dn_10
            x: 850
            y: 469
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOrange-g/bOrange-dn-g/bOrange-dn-10.png"
        }
        Image {
            id: bOrange_dn_9
            x: 858
            y: 468
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOrange-g/bOrange-dn-g/bOrange-dn-9.png"
        }

        Image {
            id: wheelDown3
            x: 752
            y: 425
            opacity: 1.0
            source: "qrc:/energyFlow/images/energyFlow/wheelDown.png"
        }

        Image {
            id: bOrange_dn_8
            x: 811
            y: 428
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOrange-g/bOrange-dn-g/bOrange-dn-8.png"
        }
        Image {
            id: bOrange_dn_7
            x: 805
            y: 425
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOrange-g/bOrange-dn-g/bOrange-dn-7.png"
        }
        Image {
            id: bOrange_dn_6
            x: 798
            y: 423
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOrange-g/bOrange-dn-g/bOrange-dn-6.png"
        }
        Image {
            id: bOrange_dn_5
            x: 791
            y: 421
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOrange-g/bOrange-dn-g/bOrange-dn-5.png"
        }
        Image {
            id: bOrange_dn_4
            x: 783
            y: 421
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOrange-g/bOrange-dn-g/bOrange-dn-4.png"
        }
        Image {
            id: bOrange_dn_3
            x: 775
            y: 421
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOrange-g/bOrange-dn-g/bOrange-dn-3.png"
        }
        Image {
            id: bOrange_dn_2
            x: 768
            y: 424
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOrange-g/bOrange-dn-g/bOrange-dn-2.png"
        }
        Image {
            id: bOrange_dn_1
            x: 762
            y: 428
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOrange-g/bOrange-dn-g/bOrange-dn-1.png"
        }

        // module bOrange-up-g
        Image {
            id: bOrange_up_15
            x: 839
            y: 364
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOrange-g/bOrange-up-g/bOrange-up-15.png"
        }
        Image {
            id: bOrange_up_14
            x: 846
            y: 363
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOrange-g/bOrange-up-g/bOrange-up-14.png"
        }
        Image {
            id: bOrange_up_13
            x: 855
            y: 361
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOrange-g/bOrange-up-g/bOrange-up-13.png"
        }
        Image {
            id: bOrange_up_12
            x: 865
            y: 361
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOrange-g/bOrange-up-g/bOrange-up-12.png"
        }
        Image {
            id: bOrange_up_11
            x: 874
            y: 361
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOrange-g/bOrange-up-g/bOrange-up-11.png"
        }
        Image {
            id: bOrange_up_10
            x: 883
            y: 361
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOrange-g/bOrange-up-g/bOrange-up-10.png"
        }
        Image {
            id: bOrange_up_9
            x: 891
            y: 361
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOrange-g/bOrange-up-g/bOrange-up-9.png"
        }

        Image {
            id: wheelUp3
            x: 775
            y: 325
            opacity: 1.0
            source: "qrc:/energyFlow/images/energyFlow/wheelUp.png"
        }

        Image {
            id: bOrange_up_8
            x: 831
            y: 333
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOrange-g/bOrange-up-g/bOrange-up-8.png"
        }
        Image {
            id: bOrange_up_7
            x: 825
            y: 329
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOrange-g/bOrange-up-g/bOrange-up-7.png"
        }
        Image {
            id: bOrange_up_6
            x: 818
            y: 327
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOrange-g/bOrange-up-g/bOrange-up-6.png"
        }
        Image {
            id: bOrange_up_5
            x: 810
            y: 326
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOrange-g/bOrange-up-g/bOrange-up-5.png"
        }
        Image {
            id: bOrange_up_4
            x: 802
            y: 326
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOrange-g/bOrange-up-g/bOrange-up-4.png"
        }
        Image {
            id: bOrange_up_3
            x: 795
            y: 327
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOrange-g/bOrange-up-g/bOrange-up-3.png"
        }
        Image {
            id: bOrange_up_2
            x: 788
            y: 331
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOrange-g/bOrange-up-g/bOrange-up-2.png"
        }
        Image {
            id: bOrange_up_1
            x: 783
            y: 335
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOrange-g/bOrange-up-g/bOrange-up-1.png"
        }

        SequentialAnimation {
            loops: Animation.Infinite
            running: true

            ParallelAnimation {
                NumberAnimation { target: bOrange_up_8; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bOrange_dn_8; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bOrange_up_7; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bOrange_dn_7; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bOrange_up_6; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bOrange_dn_6; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bOrange_up_5; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bOrange_dn_5; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bOrange_up_4; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bOrange_dn_4; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bOrange_up_3; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bOrange_dn_3; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bOrange_up_2; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bOrange_dn_2; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bOrange_up_1; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bOrange_dn_1; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bOrange_up_15; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bOrange_dn_15; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bOrange_up_14; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bOrange_dn_14; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bOrange_up_13; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bOrange_dn_13; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bOrange_up_12; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bOrange_dn_12; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bOrange_up_11; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bOrange_dn_11; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bOrange_up_10; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bOrange_dn_10; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bOrange_up_9; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bOrange_dn_9; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }

            ParallelAnimation {
                ParallelAnimation {
                    NumberAnimation { target: bOrange_up_8; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bOrange_dn_8; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bOrange_up_7; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bOrange_dn_7; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bOrange_up_6; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bOrange_dn_6; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bOrange_up_5; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bOrange_dn_5; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bOrange_up_4; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bOrange_dn_4; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bOrange_up_3; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bOrange_dn_3; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bOrange_up_2; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bOrange_dn_2; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bOrange_up_1; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bOrange_dn_1; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bOrange_up_9; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bOrange_dn_9; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bOrange_up_10; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bOrange_dn_10; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bOrange_up_11; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bOrange_dn_11; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bOrange_up_12; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bOrange_dn_12; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bOrange_up_13; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bOrange_dn_13; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bOrange_up_14; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bOrange_dn_14; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bOrange_up_15; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bOrange_dn_15; property: "opacity"; to: 0.0; duration: 0 }
                }
            }

        }

    }





    // module bOraangeBlue-g
    // module bOrangeBlue-dn-g
    Item {
        visible: 2 == flowFrontWheel
        Image {
            id: bOrangeBlue_dn_15
            x: 806
            y: 471
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOraangeBlue-g/bOrangeBlue-dn-g/bOrangeBlue-dn-15.png"
        }
        Image {
            id: bOrangeBlue_dn_14
            x: 813
            y: 470
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOraangeBlue-g/bOrangeBlue-dn-g/bOrangeBlue-dn-14.png"
        }
        Image {
            id: bOrangeBlue_dn_13
            x: 822
            y: 469
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOraangeBlue-g/bOrangeBlue-dn-g/bOrangeBlue-dn-13.png"
        }
        Image {
            id: bOrangeBlue_dn_12
            x: 832
            y: 469
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOraangeBlue-g/bOrangeBlue-dn-g/bOrangeBlue-dn-12.png"
        }
        Image {
            id: bOrangeBlue_dn_11
            x: 841
            y: 469
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOraangeBlue-g/bOrangeBlue-dn-g/bOrangeBlue-dn-11.png"
        }
        Image {
            id: bOrangeBlue_dn_10
            x: 850
            y: 469
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOraangeBlue-g/bOrangeBlue-dn-g/bOrangeBlue-dn-10.png"
        }
        Image {
            id: bOrangeBlue_dn_9
            x: 858
            y: 468
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOraangeBlue-g/bOrangeBlue-dn-g/bOrangeBlue-dn-9.png"
        }


        Image {
            id: wheelDown4
            x: 752
            y: 425
            opacity: 1.0
            source: "qrc:/energyFlow/images/energyFlow/wheelDown.png"
        }

        Image {
            id: bOrangeBlue_dn_8
            x: 811
            y: 428
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOraangeBlue-g/bOrangeBlue-dn-g/bOrangeBlue-dn-8.png"
        }
        Image {
            id: bOrangeBlue_dn_7
            x: 805
            y: 425
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOraangeBlue-g/bOrangeBlue-dn-g/bOrangeBlue-dn-7.png"
        }
        Image {
            id: bOrangeBlue_dn_6
            x: 798
            y: 423
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOraangeBlue-g/bOrangeBlue-dn-g/bOrangeBlue-dn-6.png"
        }
        Image {
            id: bOrangeBlue_dn_5
            x: 791
            y: 421
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOraangeBlue-g/bOrangeBlue-dn-g/bOrangeBlue-dn-5.png"
        }
        Image {
            id: bOrangeBlue_dn_4
            x: 783
            y: 421
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOraangeBlue-g/bOrangeBlue-dn-g/bOrangeBlue-dn-4.png"
        }
        Image {
            id: bOrangeBlue_dn_3
            x: 775
            y: 421
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOraangeBlue-g/bOrangeBlue-dn-g/bOrangeBlue-dn-3.png"
        }
        Image {
            id: bOrangeBlue_dn_2
            x: 768
            y: 424
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOraangeBlue-g/bOrangeBlue-dn-g/bOrangeBlue-dn-2.png"
        }
        Image {
            id: bOrangeBlue_dn_1
            x: 762
            y: 428
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOraangeBlue-g/bOrangeBlue-dn-g/bOrangeBlue-dn-1.png"
        }

        // module bOrangeBlue-up-g
        Image {
            id: bOrangeBlue_up_15
            x: 839
            y: 364
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOraangeBlue-g/bOrangeBlue-up-g/bOrangeBlue-up-15.png"
        }
        Image {
            id: bOrangeBlue_up_14
            x: 846
            y: 363
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOraangeBlue-g/bOrangeBlue-up-g/bOrangeBlue-up-14.png"
        }
        Image {
            id: bOrangeBlue_up_13
            x: 855
            y: 361
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOraangeBlue-g/bOrangeBlue-up-g/bOrangeBlue-up-13.png"
        }
        Image {
            id: bOrangeBlue_up_12
            x: 865
            y: 361
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOraangeBlue-g/bOrangeBlue-up-g/bOrangeBlue-up-12.png"
        }
        Image {
            id: bOrangeBlue_up_11
            x: 874
            y: 361
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOraangeBlue-g/bOrangeBlue-up-g/bOrangeBlue-up-11.png"
        }
        Image {
            id: bOrangeBlue_up_10
            x: 883
            y: 361
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOraangeBlue-g/bOrangeBlue-up-g/bOrangeBlue-up-10.png"
        }
        Image {
            id: bOrangeBlue_up_9
            x: 891
            y: 361
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOraangeBlue-g/bOrangeBlue-up-g/bOrangeBlue-up-9.png"
        }

        Image {
            id: wheelUp4
            x: 775
            y: 325
            opacity: 1.0
            source: "qrc:/energyFlow/images/energyFlow/wheelUp.png"
        }

        Image {
            id: bOrangeBlue_up_8
            x: 831
            y: 333
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOraangeBlue-g/bOrangeBlue-up-g/bOrangeBlue-up-8.png"
        }
        Image {
            id: bOrangeBlue_up_7
            x: 825
            y: 329
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOraangeBlue-g/bOrangeBlue-up-g/bOrangeBlue-up-7.png"
        }
        Image {
            id: bOrangeBlue_up_6
            x: 818
            y: 327
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOraangeBlue-g/bOrangeBlue-up-g/bOrangeBlue-up-6.png"
        }
        Image {
            id: bOrangeBlue_up_5
            x: 810
            y: 326
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOraangeBlue-g/bOrangeBlue-up-g/bOrangeBlue-up-5.png"
        }
        Image {
            id: bOrangeBlue_up_4
            x: 802
            y: 326
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOraangeBlue-g/bOrangeBlue-up-g/bOrangeBlue-up-4.png"
        }
        Image {
            id: bOrangeBlue_up_3
            x: 795
            y: 327
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOraangeBlue-g/bOrangeBlue-up-g/bOrangeBlue-up-3.png"
        }
        Image {
            id: bOrangeBlue_up_2
            x: 788
            y: 331
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOraangeBlue-g/bOrangeBlue-up-g/bOrangeBlue-up-2.png"
        }
        Image {
            id: bOrangeBlue_up_1
            x: 783
            y: 335
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/bOraangeBlue-g/bOrangeBlue-up-g/bOrangeBlue-up-1.png"
        }

        SequentialAnimation {
            loops: Animation.Infinite
            running: true

            ParallelAnimation {
                NumberAnimation { target: bOrangeBlue_up_8; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bOrangeBlue_dn_8; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bOrangeBlue_up_7; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bOrangeBlue_dn_7; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bOrangeBlue_up_6; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bOrangeBlue_dn_6; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bOrangeBlue_up_5; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bOrangeBlue_dn_5; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bOrangeBlue_up_4; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bOrangeBlue_dn_4; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bOrangeBlue_up_3; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bOrangeBlue_dn_3; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bOrangeBlue_up_2; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bOrangeBlue_dn_2; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bOrangeBlue_up_1; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bOrangeBlue_dn_1; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bOrangeBlue_up_15; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bOrangeBlue_dn_15; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bOrangeBlue_up_14; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bOrangeBlue_dn_14; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bOrangeBlue_up_13; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bOrangeBlue_dn_13; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bOrangeBlue_up_12; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bOrangeBlue_dn_12; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bOrangeBlue_up_11; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bOrangeBlue_dn_11; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bOrangeBlue_up_10; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bOrangeBlue_dn_10; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }
            ParallelAnimation {
                NumberAnimation { target: bOrangeBlue_up_9; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                NumberAnimation { target: bOrangeBlue_dn_9; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
            }

            ParallelAnimation {
                ParallelAnimation {
                    NumberAnimation { target: bOrangeBlue_up_8; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bOrangeBlue_dn_8; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bOrangeBlue_up_7; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bOrangeBlue_dn_7; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bOrangeBlue_up_6; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bOrangeBlue_dn_6; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bOrangeBlue_up_5; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bOrangeBlue_dn_5; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bOrangeBlue_up_4; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bOrangeBlue_dn_4; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bOrangeBlue_up_3; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bOrangeBlue_dn_3; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bOrangeBlue_up_2; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bOrangeBlue_dn_2; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bOrangeBlue_up_1; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bOrangeBlue_dn_1; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bOrangeBlue_up_9; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bOrangeBlue_dn_9; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bOrangeBlue_up_10; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bOrangeBlue_dn_10; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bOrangeBlue_up_11; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bOrangeBlue_dn_11; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bOrangeBlue_up_12; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bOrangeBlue_dn_12; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bOrangeBlue_up_13; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bOrangeBlue_dn_13; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bOrangeBlue_up_14; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bOrangeBlue_dn_14; property: "opacity"; to: 0.0; duration: 0 }
                }
                ParallelAnimation {
                    NumberAnimation { target: bOrangeBlue_up_15; property: "opacity"; to: 0.0; duration: 0 }
                    NumberAnimation { target: bOrangeBlue_dn_15; property: "opacity"; to: 0.0; duration: 0 }
                }
            }
        }
    }




    // module charge-g
    Item {
        visible:  2 == flowBatFlow
        Image {
            id: charge_21
            x: 794
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/charge-g/charge-21.png"
        }
        Image {
            id: charge_20
            x: 804
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/charge-g/charge-20.png"
        }
        Image {
            id: charge_19
            x: 815
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/charge-g/charge-19.png"
        }
        Image {
            id: charge_18
            x: 825
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/charge-g/charge-18.png"
        }
        Image {
            id: charge_17
            x: 835
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/charge-g/charge-17.png"
        }
        Image {
            id: charge_16
            x: 846
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/charge-g/charge-16.png"
        }
        Image {
            id: charge_15
            x: 856
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/charge-g/charge-15.png"
        }
        Image {
            id: charge_14
            x: 866
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/charge-g/charge-14.png"
        }
        Image {
            id: charge_13
            x: 877
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/charge-g/charge-13.png"
        }
        Image {
            id: charge_12
            x: 887
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/charge-g/charge-12.png"
        }
        Image {
            id: charge_11
            x: 898
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/charge-g/charge-11.png"
        }
        Image {
            id: charge_10
            x: 908
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/charge-g/charge-10.png"
        }
        Image {
            id: charge_9
            x: 918
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/charge-g/charge-9.png"
        }
        Image {
            id: charge_8
            x: 929
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/charge-g/charge-8.png"
        }
        Image {
            id: charge_7
            x: 939
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/charge-g/charge-7.png"
        }
        Image {
            id: charge_6
            x: 950
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/charge-g/charge-6.png"
        }
        Image {
            id: charge_5
            x: 960
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/charge-g/charge-5.png"
        }
        Image {
            id: charge_4
            x: 970
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/charge-g/charge-4.png"
        }
        Image {
            id: charge_3
            x: 980
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/charge-g/charge-3.png"
        }
        Image {
            id: charge_2
            x: 991
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/charge-g/charge-2.png"
        }
        Image {
            id: charge_1
            x: 1003
            y: 391
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/charge-g/charge-1.png"
        }
        SequentialAnimation {
            loops: Animation.Infinite
            running: true

            NumberAnimation { target: charge_21; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: charge_20; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: charge_19; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: charge_18; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: charge_17; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: charge_16; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: charge_15; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: charge_14; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: charge_13; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: charge_12; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: charge_11; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: charge_10; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: charge_9; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: charge_8; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: charge_7; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: charge_6; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: charge_5; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: charge_4; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: charge_3; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: charge_2; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }
            NumberAnimation { target: charge_1; property: "opacity"; from: 0.0; to: 1.0; duration: 50 }

            ParallelAnimation {
                NumberAnimation { target: charge_21; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: charge_20; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: charge_19; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: charge_18; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: charge_17; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: charge_16; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: charge_15; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: charge_14; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: charge_13; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: charge_12; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: charge_11; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: charge_10; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: charge_9; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: charge_8; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: charge_7; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: charge_6; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: charge_5; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: charge_4; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: charge_3; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: charge_2; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
                NumberAnimation { target: charge_1; property: "opacity"; from: 1.0; to: 0.0; duration: 0 }
            }
        }
    }


    Item {
        Image {
            id: flWheel3
            x: 764
            y: 432
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/flWheel3.png"
        }
        Image {
            id: rlWheel
            x: 1066
            y: 431
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/flWheel3.png"
        }
        Image {
            id: frWheel
            x: 789
            y: 335
            opacity: 0.0
            source: "qrc:/energyFlow/images/energyFlow/frWheel2.png"
        }

        states: [
            State {
                name: "stay"
                when: (1 == flowWheels)
                PropertyChanges { target: flWheel3; opacity: 0 }
                PropertyChanges { target: rlWheel; opacity: 0 }
                PropertyChanges { target: frWheel; opacity: 0 }
            },
            State {
                name: "run"
                when: (2 == flowWheels)
            }
        ]

        transitions: [
            Transition {
                to: "run"

                SequentialAnimation {
                    loops: Animation.Infinite
                    running: true

                    ParallelAnimation {
                    NumberAnimation { target: flWheel3; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                    NumberAnimation { target: rlWheel; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                    NumberAnimation { target: frWheel; property: "opacity"; from: 0.0; to: 1.0; duration: 100 }
                    }

                    ParallelAnimation {
                    NumberAnimation { target: flWheel3; property: "opacity"; from: 1.0; to: 0.0; duration: 100 }
                    NumberAnimation { target: rlWheel; property: "opacity"; from: 1.0; to: 0.0; duration: 100 }
                    NumberAnimation { target: frWheel; property: "opacity"; from: 1.0; to: 0.0; duration: 100 }
                    }
                }
            },
            Transition {
                from: "run"
                to: "stay"
                SequentialAnimation {
                }
            }
        ]

    }

    Image {
        id: engineGray
        x: 699
        y: 339
        opacity: 1.0//(0 == flowMotorV) ? 1.0 : 0.0
        source: "qrc:/energyFlow/images/energyFlow/bat-g/engineGray.png"
    }
    Image {
        id: engineOrage
        x: 699
        y: 339
        opacity: (1 == flowMotorV) ? 1.0 : 0.0
        source: "qrc:/energyFlow/images/energyFlow/motorOrage.png"
    }
    Image {
        id: engineRed
        x: 699
        y: 339
        opacity: (2 == flowMotorV) ? 1.0 : 0.0
        source: "qrc:/energyFlow/images/energyFlow/engineRed.png"
    }

    Image {
        id: gearBoxGray
        x: 748
        y: 372
        opacity: 1.0//flowGearBox ? 0.0 : 1.0
        source: "qrc:/energyFlow/images/energyFlow/gearBoxGray.png"
    }
    Image {
        id: grearBoxBlue
        x: 748
        y: 372
        opacity: flowGearBox ? 1.0 : 0.0
        source: "qrc:/energyFlow/images/energyFlow/bat-g/grearBoxBlue.png"
    }
//    Image {
//        id: engineGray
//        x: 699
//        y: 339
//        opacity: 0.0
//        source: "qrc:/energyFlow/images/energyFlow/bat-g/engineGray.png"
//    }
//    Image {
//        id: grearBoxBlue
//        x: 748
//        y: 372
//        opacity: 0.0
//        source: "qrc:/energyFlow/images/energyFlow/bat-g/grearBoxBlue.png"
//    }


//    states: [
//        State {
//            name: ""
//        },
//        State {
//            name: "show"
//        }
//    ]

//    transitions: [
//        Transition {
//            from: ""
//            to: "show"
//            SequentialAnimation {
//            }
//        },
//        Transition {
//            from: "show"
//            to: ""
//            SequentialAnimation {
//            }
//        }
//    ]
}
