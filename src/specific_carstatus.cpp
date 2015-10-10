#include <QDebug>
#include <QDateTime>
#include <QTimerEvent>

#include <specific_carstatus.h>

SpecificCarStatus::SpecificCarStatus(const QString &serialDev, QSerialPort *parent)
    : CarStatus(serialDev, parent)
{
    initValues();

    connect(this, SIGNAL(key1Changed(bool)), this, SLOT(leftButtonDeal(bool)));
    connect(this, SIGNAL(key2Changed(bool)), this, SLOT(rightButtonDeal(bool)));
    connect(this, SIGNAL(key3Changed(bool)), this, SLOT(okButtonDeal(bool)));
}

void SpecificCarStatus::initValues()
{
    // SpecialInfo
    m_leftLamp = false;
    m_rightLamp = false;
    m_fogFrontLamp = false;
    m_fogRearLamp = false;
    m_highBeamLight = false;
    m_dippedHeadlight = false;
    m_airBag = false;
    m_masterStrapLight = false;

    m_viceStrapLight = false;
    m_parkingBrakeErr = false;
    m_parkingBrake = false;
    m_accumulatorLight = false;
    m_absLight = false;
    m_positionLight = false;
    m_oilPressureLight = false;
    m_engineErrLight = false;


    m_epsFault = false;
    m_gearBoxFault = false;
    m_tirePressure = false;
    m_epc = false;
    m_engineSVSErr = false;
    m_vehicleFailure = false;
    m_batteryFault = false;

    m_generatorFault = false;
    m_chargingLine = false;
    m_eleMotorCoolantHighTemp = false;
    m_engineCoolantHighTemp = false;
    m_dynamicElectricityCut = false;
    m_ready = false;

    m_chargeState = 0;
    m_coolantCurrentTemp = 0;
    m_generatorPower = 0;

    // Special SettingsInfo
//    m_commandRequest = false;
//    m_closeScreenRequest = false;
//    m_tripClear = false;
//    m_avgSpeedClear = false;
//    m_avgFuelClear = false;
//    m_engineeringModel = false;
//    m_picVoiceSync = 0;
//    m_dateTimeSetting = 0;

    // ButtonInfo
    m_leftButtonStep = 0;
    m_rightButtonStep = 0;
    m_okButtonStep = 0;

#ifdef DEBUG
    m_leftButton = false;
    m_rightButton = false;
    m_okButton = false;
#endif
}

/*
 * rewrite getGeneralSerial
 */
void SpecificCarStatus::getGeneralSerial(GeneralInfo data)
{
    if (m_active) {
        NumValueChangeSet(tmpVersion, data.tmpVersion, (uint16_t) 0, (uint16_t) 255);
        NumValueChangeSet(relVersion, data.relVersion, (uint16_t) 0, (uint16_t) 31);
        NumValueChangeSet(hwVersion, data.hwVersion, (uint16_t) 0, (uint16_t) 7);
        NumValueChangeSet(rpm, data.rpm, (uint16_t) 0, (uint16_t) 7000);
        NumValueChangeSet(dateTime,data.dateTime, (uint32_t) 0, (uint32_t) 0xFFFFFFFF);
        NumValueChangeSet(speed, data.speed, (uint8_t) 0, (uint8_t) 240);
        NumValueChangeSet(waterTemp, data.waterTemp, (uint8_t) 50, (uint8_t) 130);
        BoolValueChangeSet(key4, data.key4);
        BoolValueChangeSet(igOn, data.igOn);
        BoolValueChangeSet(gear, data.gear);
        NumValueChangeSet(gearMode, data.gearMode, (uint8_t) 0, (uint8_t) 3);
        NumValueChangeSet(keyStatus, data.keyStatus, (uint8_t) 0, (uint8_t) 3);
        BoolValueChangeSet(lfDoor, data.lfDoor);
        BoolValueChangeSet(rfDoor, data.rfDoor);
        BoolValueChangeSet(lrDoor, data.lrDoor);
        BoolValueChangeSet(rrDoor, data.rrDoor);
        BoolValueChangeSet(hoodDoor, data.hoodDoor);
        BoolValueChangeSet(trunkDoor, data.trunkDoor);
        BoolValueChangeSet(doorWarningLight, data.doorWarningLight);
        NumValueErrChangeSet(odo, data.odo, (uint32_t) 0, (uint32_t) 999999, 0xFFFFFF);
        NumValueChangeSet(avgSpeed, data.avgSpeed, (uint32_t) 0, (uint32_t) 240);
        NumValueErrChangeSet(remainMileage, data.remainMileage, (uint16_t) 50, (uint16_t) 999, 0xFFFF);
        NumValueErrChangeSet(trip1, data.trip1, (uint32_t) 0, (uint32_t) 9999, 0xFFFFFF);
        NumValueChangeSet(fuel, data.fuel, (uint32_t) 0, (uint32_t) 100);
        NumValueErrChangeSet(trip2, data.trip2, (uint32_t) 0, (uint32_t) 9999, 0xFFFFFF);
        NumValueChangeSet(soc, data.soc, (uint32_t) 0, (uint32_t) 100);
        NumValueChangeSet(maintenanceMileage, data.maintenanceMileage, (uint16_t) 0, (uint16_t) 50000);
        NumValueChangeSet(outTemp, data.outTemp * 0.1 + (-40), (double) -40, (double) 164.5);
        NumValueErrChangeSet(avgFuel, data.avgFuel, (uint16_t)0, (uint16_t) 300, 0xFFFF);
        NumValueChangeSet(instantaneousFuel, data.instantaneousFuel * 0.1 + 0, (double) 0, (double) 45);
        NumValueChangeSet(batteryCurrent, data.batteryCurrent * 0.1 + (-500), (double)0, (double) 2000);
        NumValueChangeSet(batteryVoltage, data.batteryVoltage * 0.1 + 0, (double) 0, (double) 100);

        if (m_key1 != data.key1) {
            m_key1 = data.key1;
        }
        emit key1Changed(m_key1);

        if (m_key2 != data.key2) {
            m_key2 = data.key2;
        }
        emit key2Changed(m_key2);

        if (m_key3 != data.key3) {
            m_key3 = data.key3;
        }
        emit key3Changed(m_key3);

        updateTime(data.dateTime);
    }
}

/*
 * rewrite getSpecialSerial
 */
void SpecificCarStatus::getSpecialSerial(SpecialInfo data)
{
    if (m_active) {
        BoolValueChangeSet(leftLamp, data.leftLamp);
        BoolValueChangeSet(rightLamp, data.rightLamp);
        BoolValueChangeSet(fogFrontLamp, data.fogFrontLamp);
        BoolValueChangeSet(fogRearLamp, data.fogRearLamp);
        BoolValueChangeSet(highBeamLight, data.highBeamLight);
        BoolValueChangeSet(dippedHeadlight, data.dippedHeadlight);
        BoolValueChangeSet(airBag, data.airBag);
        BoolValueChangeSet(masterStrapLight, data.masterStrapLight);

        BoolValueChangeSet(viceStrapLight, data.viceStrapLight);
        BoolValueChangeSet(parkingBrakeErr, data.parkingBrakeErr);
        BoolValueChangeSet(parkingBrake, data.parkingBrake);
        BoolValueChangeSet(accumulatorLight, data.accumulatorLight);
        BoolValueChangeSet(absLight, data.absLight);
        BoolValueChangeSet(positionLight, data.positionLight);
        BoolValueChangeSet(oilPressureLight, data.oilPressureLight);
        BoolValueChangeSet(engineErrLight, data.engineErrLight);

        BoolValueChangeSet(epsFault, data.epsFault);
        BoolValueChangeSet(gearBoxFault, data.gearBoxFault);
        BoolValueChangeSet(tirePressure, data.tirePressure);
        BoolValueChangeSet(epc, data.epc);
        BoolValueChangeSet(engineSVSErr, data.engineSVSErr);
        BoolValueChangeSet(vehicleFailure, data.vehicleFailure);
        BoolValueChangeSet(batteryFault, data.batteryFault);

        BoolValueChangeSet(generatorFault, data.generatorFault);
        BoolValueChangeSet(chargingLine, data.chargingLine);
        BoolValueChangeSet(eleMotorCoolantHighTemp, data.eleMotorCoolantHighTemp);
        BoolValueChangeSet(engineCoolantHighTemp, data.engineCoolantHighTemp);
        BoolValueChangeSet(dynamicElectricityCut, data.dynamicElectricityCut);
        BoolValueChangeSet(ready, data.ready);

        NumValueChangeSet(chargeState, data.chargeState, (uint8_t) 0, (uint8_t) 7);
        NumValueChangeSet(coolantCurrentTemp, data.coolantCurrentTemp, (uint8_t) 0, (uint8_t) 200);
//        m_coolantCurrentTemp = data.coolantCurrentTemp;
//        emit coolantCurrentTempChanged(data.coolantCurrentTemp);
        NumValueChangeSet(generatorPower, data.generatorPower - 20, (int) -20, (int) 100);
    }
}

// ButtonInfo
#ifdef DEBUG
void SpecificCarStatus::setLeftButton(bool v)
{
    BoolValueChangeSet(leftButton, v);
}

void SpecificCarStatus::setRightButton(bool v)
{
    BoolValueChangeSet(rightButton, v);
}

void SpecificCarStatus::setOkButton(bool v)
{
    BoolValueChangeSet(okButton, v);
}
#endif

void SpecificCarStatus::leftButtonDeal(bool v)
{
    if (m_leftButtonStep == 0 && v)
        ++m_leftButtonStep;

    if (m_leftButtonStep >= 1 && m_leftButtonStep < KEY_PRESS_TIME) {
        if (!v) {
            m_leftButtonStep = 0;
        }
        ++m_leftButtonStep;
    }

    if (m_leftButtonStep == KEY_PRESS_TIME && v) {
        ++m_leftButtonStep;
#ifdef DEBUG
    setLeftButton(true);
#else
    emit leftButton();
#endif
    }

    if (m_leftButtonStep == KEY_PRESS_TIME + 1 && !v) {
        m_leftButtonStep = 0;
#ifdef DEBUG
        setLeftButton(false);
#endif
    }
}

void SpecificCarStatus::rightButtonDeal(bool v)
{
    if (m_rightButtonStep == 0 && v)
        ++m_rightButtonStep;

    if (m_rightButtonStep >= 1 && m_rightButtonStep < KEY_PRESS_TIME) {
        if (!v) {
            m_rightButtonStep = 0;
        }
        ++m_rightButtonStep;
    }

    if (m_rightButtonStep == KEY_PRESS_TIME && v) {
        ++m_rightButtonStep;
#ifdef DEBUG
    setRightButton(true);
#else
    emit rightButton();
#endif
    }

    if (m_rightButtonStep == KEY_PRESS_TIME + 1 && !v) {
        m_rightButtonStep = 0;
#ifdef DEBUG
        setRightButton(false);
#endif
    }
}

void SpecificCarStatus::okButtonDeal(bool v)
{
    if (m_okButtonStep == 0 && v)
        ++m_okButtonStep;

    if (m_okButtonStep >= 1 && m_okButtonStep < KEY_PRESS_TIME) {
        if (!v) {
            m_okButtonStep = 0;
        }
        ++m_okButtonStep;
    }

    if (m_okButtonStep == KEY_PRESS_TIME && v) {
        ++m_okButtonStep;
#ifdef DEBUG
    setOkButton(true);
#else
    emit okButton();
#endif
    }

    if (m_okButtonStep == KEY_PRESS_TIME + 1 && !v) {
        m_okButtonStep = 0;
#ifdef DEBUG
    setOkButton(false);
#endif
    }
}

void SpecificCarStatus::sendSpecSettingsFrame()
{
    SpecSettingsFrame specSettingsFrame;
    memset(&specSettingsFrame, 0, SPECSETTINGS_FRAME_LEN);

    specSettingsFrame.head = 0xAA;
    specSettingsFrame.length = SPECSETTINGS_INFO_LEN;


//    specSettingsFrame.specSettingsInfo.commandRequest = m_commandRequest;
//    specSettingsFrame.specSettingsInfo.closeScreenRequest = m_closeScreenRequest;
//    specSettingsFrame.specSettingsInfo.tripClear = m_tripClear;
//    specSettingsFrame.specSettingsInfo.avgSpeedClear = m_avgSpeedClear;
//    specSettingsFrame.specSettingsInfo.avgFuelClear = m_avgFuelClear;
//    specSettingsFrame.specSettingsInfo.engineeringModel = m_engineeringModel;
//    specSettingsFrame.specSettingsInfo.picVoiceSync = m_picVoiceSync;
//    specSettingsFrame.specSettingsInfo.dateTimeSetting = m_dateTimeSetting;

    specSettingsFrame.magic = MAGIC_SPECIAL_DOWN;

    specSettingsFrame.crc = crc16Check((uint8_t *)(&(specSettingsFrame.magic)), MAGIC_LEN + SPECSETTINGS_INFO_LEN);
    specSettingsFrame.tail = 0x55;

    this-> sendSerial(QByteArray((char *)&specSettingsFrame, SPECSETTINGS_FRAME_LEN));
}

#ifdef TIMER_FREQ
void SpecificCarStatus::timerEvent(QTimerEvent *event)
{
    Q_UNUSED(event);
    sendSettingsFrame();
    //sendSpecSettingsFrame();
}
#endif
