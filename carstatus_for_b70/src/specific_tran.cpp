#include <QDebug>
#include <QByteArray>

#include <specific_tran.h>

SpecificCarStatus::SpecificCarStatus(const QString &serialDev, QSerialPort *parent)
    : SerialTran(serialDev, parent)
{
    initValues();
}

void SpecificCarStatus::initValues()
{
    // SpecialInfo
//    m_leftHandDrive = false;
//    m_rightHandDrive = false;
//    m_brakeSystemFailure = false;
//    m_chargeFault = false;
//    m_oilPressureLow = false;
//    m_absFault = false;
//    m_epbFault = false;
//    m_engineFault = false;
//    m_milFault = false;
//    m_espFault = false;
//    m_srsFault = false;
//    m_gearBoxFault = false;
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
    m_displayMode = false;
    m_chargeState = 0;
    m_coolantCurrentTemp = 0;
    m_generatorPower = 0;

    // Special SettingsInfo    
    m_commandRequest = false;
    m_closeScreenRequest = false;
    m_tripClear = false;
    m_avgSpeedClear = false;
    m_avgFuelClear = false;
    m_engineeringModel = false;
    m_picVoiceSync = 0;
    m_picVoiceSyncReserve = 0;
    m_dateTimeSetting = 0;

}

void SpecificCarStatus::getSpecSettingsInfo(SpecSettingsInfo data)
{
    Q_UNUSED(data);
//    BoolValueChangeSet(commandRequest, data.commandRequest);
//    BoolValueChangeSet(closeScreenRequest, data.closeScreenRequest);
//    BoolValueChangeSet(tripClear, data.tripClear);
//    BoolValueChangeSet(avgSpeedClear, data.avgSpeedClear);
//    BoolValueChangeSet(avgFuelClear, data.avgFuelClear);
//    BoolValueChangeSet(engineeringModel, data.engineeringModel);
//    NumValueChangeSet(picVoiceSync, data.picVoiceSync, (uint8_t) 0, (uint8_t) 255);
//    NumValueChangeSet(dateTimeSetting, data.dateTimeSetting, (uint32_t) 0, (uint32_t) 0xFFFFFFFF);
}

void SpecificCarStatus::sendSpecialFrame()
{
    SpecialFrame specialFrame;
    memset(&specialFrame, 0, SPECIAL_FRAME_LEN);

    specialFrame.head = 0xAA;
    specialFrame.length = SPECIAL_INFO_LEN;

    specialFrame.specialInfo.leftLamp = m_leftLamp;
    specialFrame.specialInfo.rightLamp = m_rightLamp;
    specialFrame.specialInfo.fogFrontLamp = m_fogFrontLamp;
    specialFrame.specialInfo.fogRearLamp = m_fogRearLamp;
    specialFrame.specialInfo.highBeamLight = m_highBeamLight;
    specialFrame.specialInfo.dippedHeadlight = m_dippedHeadlight;
    specialFrame.specialInfo.airBag = m_airBag;
//    specialFrame.specialInfo.masterStrapLight = m_masterStrapLight;

//    specialFrame.specialInfo.viceStrapLight = m_viceStrapLight;
    specialFrame.specialInfo.parkingBrakeErr = m_parkingBrakeErr;
    specialFrame.specialInfo.parkingBrake = m_parkingBrake;
    specialFrame.specialInfo.accumulatorLight = m_accumulatorLight;
    specialFrame.specialInfo.absLight = m_absLight;
    specialFrame.specialInfo.positionLight = m_positionLight;
    specialFrame.specialInfo.oilPressureLight = m_oilPressureLight;
    specialFrame.specialInfo.engineErrLight = m_engineErrLight;


    specialFrame.specialInfo.epsFault = m_epsFault;
    specialFrame.specialInfo.gearBoxFault = m_gearBoxFault;
    specialFrame.specialInfo.tirePressure = m_tirePressure;
    specialFrame.specialInfo.epc = m_epc;
    specialFrame.specialInfo.engineSVSErr = m_engineSVSErr;
    specialFrame.specialInfo.vehicleFailure = m_vehicleFailure;
    specialFrame.specialInfo.batteryFault = m_batteryFault;

    specialFrame.specialInfo.generatorFault = m_generatorFault;
    specialFrame.specialInfo.chargingLine = m_chargingLine;
    specialFrame.specialInfo.eleMotorCoolantHighTemp = m_eleMotorCoolantHighTemp;
    specialFrame.specialInfo.engineCoolantHighTemp = m_engineCoolantHighTemp;
    specialFrame.specialInfo.dynamicElectricityCut = m_dynamicElectricityCut;
    specialFrame.specialInfo.ready = m_ready;

    specialFrame.specialInfo.displayMode = m_displayMode;
    specialFrame.specialInfo.chargeState = m_chargeState;
    specialFrame.specialInfo.coolantCurrentTemp = m_coolantCurrentTemp;
    specialFrame.specialInfo.generatorPower = m_generatorPower;



    specialFrame.magic = MAGIC_SPECIAL_UP;

    specialFrame.crc = crc16Check((uint8_t *)(&(specialFrame.magic)), MAGIC_LEN + SPECIAL_INFO_LEN);
    specialFrame.tail = 0x55;

    this->sendSerial(QByteArray((char *)&specialFrame, SPECIAL_FRAME_LEN));
}
