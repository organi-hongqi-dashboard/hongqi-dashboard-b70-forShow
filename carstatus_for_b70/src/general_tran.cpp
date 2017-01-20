#include <QDebug>
#include <QByteArray>

#include <general_tran.h>

SerialTran::SerialTran(const QString &serialDev, QSerialPort *parent)
    : QSerialPort(parent)
{
    initValues();

    this->setPortName(serialDev);
    if (this->open(QIODevice::ReadWrite)
            && this->setBaudRate(SERIAL_BAUD_RATE)
            && this->setDataBits(QSerialPort::Data8)
            && this->setParity(QSerialPort::NoParity)
            && this->setStopBits(QSerialPort::OneStop)
            && this->setFlowControl(QSerialPort::NoFlowControl)
            && this->clear(QSerialPort::AllDirections)) {
        qDebug() << "Succeed to open serial port.";
    } else {
        qDebug() << "Fail to open serial port: " << serialDev
                 << "\n" << this->errorString();
        return;
    }

    connect(this, SIGNAL(readyRead()), this, SLOT(readSerial()));
}

void SerialTran::initValues()
{
//#ifdef Todi
//    m_projectName = "Todi";
//#elif MoLiHua
//    m_projectName = "MoLiHua";
//#endif
//    m_projectName = "B21";
    m_projectName = "B70";

    // GeneralInfo
    m_tmpVersion = 0;
    m_relVersion = 0;
    m_hwVersion = 0;
    m_rpm = 0;
    m_dateTime = 0;
    m_speed = 0;
    m_waterTemp = 0;
    m_key1 = false;
    m_key2 = false;
    m_key3 = false;
    m_key4 = false;
    m_igOn = false;
    m_gear = 0;
    m_gearMode = 0;
    m_keyStatus = 0;
    m_lfDoor = false;
    m_rfDoor = false;
    m_lrDoor = false;
    m_rrDoor = false;
    m_hoodDoor = false;
    m_trunkDoor = false;
    m_doorWarningLight = false;
    m_odo = 0;
    m_avgSpeed = 0;
    m_avgFuelUnit = false;
    m_instantaneousFuelUnit = false;
    m_remainMileage = 0;
    m_trip1 = 0;
    m_fuel = 0;
    m_trip2 = 0;
    m_soc = 0;
    m_maintenanceMileage = 0;
    m_outTemp = 0;
    m_avgFuel = 0;
    m_instantaneousFuel = 0;
    m_batteryCurrent = 0;
    m_batteryVoltage = 0;

    // General SettingsInfo
    m_commandReq = false;
    m_closeReq = false;
    m_tripClean = false;
    m_avgSpeedClean = false;
    m_avgFuelClean = false;
    m_projectMode = false;
    m_alarmInterface = 0;
    m_interfaceSoundSync = 0;
    m_dateTimeSet = 0;


    m_flowGearBox = false;
    m_flowBattery = false;
    m_flowBatFlow = 0;
    m_flowFrontWheel = 0;
    m_flowWheels = 0;
    m_flowMotor = 0;
    m_vehicleWorkingMode = 0;
}

void SerialTran::readSerial()
{
    m_recv += this->readAll();

    while (m_recv.length() >= (int) MAGIC_FRAME_LEN + 1) {
        if ((uint8_t)0xAA != (uint8_t)m_recv[0]) {

            /* finding HEAD 0xAA */
            bool found0xAA = false;
            for (int i = 0; i < m_recv.length(); ++i) {
                if ((uint8_t)0xAA == (uint8_t)m_recv[i]) {
                    m_recv.remove(0, i);
                    found0xAA = true;
                    break;
                }
            }
            if (!found0xAA) m_recv.clear();
        }
        else {
            /* found HEAD 0xAA */
            QByteArray bf = m_recv.left(MAGIC_FRAME_LEN);
            MagicFrame *magicFrame = (MagicFrame *)bf.data();

            /* deal general settings frame */
            if(magicFrame->length == SETTINGS_INFO_LEN && magicFrame->magic == MAGIC_GENERAL_DOWN) {
                if (m_recv.length() >= SETTINGS_FRAME_LEN && (uint8_t)0x55 == (uint8_t)m_recv[SETTINGS_FRAME_LEN-1]) {

                    QByteArray bf = m_recv.left(SETTINGS_FRAME_LEN);
                    m_recv.remove(0, SETTINGS_FRAME_LEN);
                    SettingsFrame *settingsFrame = (SettingsFrame *)bf.data();
                    if (settingsFrame->crc == crc16Check((uint8_t *)(&(settingsFrame->magic)), MAGIC_LEN + SETTINGS_INFO_LEN)) {
                        getSettingsInfo(settingsFrame->settingsInfo);
#ifdef DEBUG
                        qDebug() << "originGeneralSettingsInfoData: " << bf.toHex();
#endif
                    }
                }
                else {
                    if (m_recv.length() < SETTINGS_FRAME_LEN) break;
                    else { m_recv.remove(0, 1); continue; }
                }
            }
            /* deal special settings frame */
            else if (magicFrame->length == SPECSETTINGS_INFO_LEN && magicFrame->magic == MAGIC_SPECIAL_DOWN) {
                if (m_recv.length() >= SPECSETTINGS_FRAME_LEN && (uint8_t)0x55 == (uint8_t)m_recv[SPECSETTINGS_FRAME_LEN-1]) {

                    QByteArray bf = m_recv.left(SPECSETTINGS_FRAME_LEN);
                    m_recv.remove(0, SPECSETTINGS_FRAME_LEN);
                    SpecSettingsFrame *specSettingsFrame = (SpecSettingsFrame *)bf.data();
                    if (specSettingsFrame->crc == crc16Check((uint8_t *)(&(specSettingsFrame->magic)), MAGIC_LEN + SPECSETTINGS_INFO_LEN)) {
                        getSpecSettingsInfo(specSettingsFrame->specSettingsInfo);
#ifdef DEBUG
                        qDebug() << "originSpecialSettingsInfoData: " << bf.toHex();
#endif
                    }
                }
                else {
                    if (m_recv.length() < SPECSETTINGS_FRAME_LEN) break;
                    else { m_recv.remove(0, 1); continue; }
                }
            }
            /* deal error frame */
            else m_recv.remove(0, 1);
        }
    }
}

bool SerialTran::sendSerial(const QByteArray &data)
{
    if (this->write(data) != -1) {
        qDebug() << "sendData: " << data.toHex();
        qDebug() << "Send serial port data succeeded.";
        return true;
    }
    else {
        qDebug() << "Send serial port data failed.";
        return false;
    }
}

void SerialTran::getSettingsInfo(SettingsInfo data)
{
    BoolValueChangeSet(commandReq, data.commandReq);
    BoolValueChangeSet(closeReq, data.closeReq);
    BoolValueChangeSet(tripClean, data.tripClean);
    BoolValueChangeSet(avgSpeedClean, data.avgSpeedClean);
    BoolValueChangeSet(avgFuelClean, data.avgFuelClean);
    BoolValueChangeSet(projectMode, data.projectMode);
    BoolValueChangeSet(alarmInterface, data.alarmInterface);
    BoolValueChangeSet(interfaceSoundSync, data.interfaceSoundSync);
    BoolValueChangeSet(dateTimeSet, data.dateTimeSet);
}

void SerialTran::getSpecSettingsInfo(SpecSettingsInfo data)
{
    Q_UNUSED(data);
}

void SerialTran::sendGeneralFrame()
{
    GeneralFrame generalFrame;

    generalFrame.head = 0xAA;
    generalFrame.length = GENERAL_INFO_LEN;

    generalFrame.generalInfo.tmpVersion = m_tmpVersion;
    generalFrame.generalInfo.relVersion = m_relVersion;
    generalFrame.generalInfo.hwVersion = m_hwVersion;
    generalFrame.generalInfo.rpm = m_rpm;
    generalFrame.generalInfo.dateTime = m_dateTime;
    generalFrame.generalInfo.speed = m_speed;
    generalFrame.generalInfo.waterTemp = m_waterTemp;
    generalFrame.generalInfo.key1 = m_key1;
    generalFrame.generalInfo.key2 = m_key2;
    generalFrame.generalInfo.key3 = m_key3;
    generalFrame.generalInfo.key4 = m_key4;
    generalFrame.generalInfo.igOn = m_igOn;
    generalFrame.generalInfo.gear = m_gear;
    generalFrame.generalInfo.gearMode = m_gearMode;
    generalFrame.generalInfo.keyStatus = m_keyStatus;
    generalFrame.generalInfo.lfDoor = m_lfDoor;
    generalFrame.generalInfo.rfDoor = m_rfDoor;
    generalFrame.generalInfo.lrDoor = m_lrDoor;
    generalFrame.generalInfo.rrDoor = m_rrDoor;
    generalFrame.generalInfo.hoodDoor = m_hoodDoor;
    generalFrame.generalInfo.trunkDoor = m_trunkDoor;
    generalFrame.generalInfo.doorWarningLight = m_doorWarningLight;
    generalFrame.generalInfo.odo = m_odo;
    generalFrame.generalInfo.avgSpeed = m_avgSpeed;
//    generalFrame.generalInfo.avgFuelUnit = m_avgFuelUnit;
//    generalFrame.generalInfo.instantaneousFuelUnit = m_instantaneousFuelUnit;
    generalFrame.generalInfo.remainMileage = m_remainMileage;
    generalFrame.generalInfo.trip1 = m_trip1;
    generalFrame.generalInfo.fuel = m_fuel;
    generalFrame.generalInfo.trip2 = m_trip2;
    generalFrame.generalInfo.soc = m_soc;
    generalFrame.generalInfo.maintenanceMileage = m_maintenanceMileage;
    generalFrame.generalInfo.outTemp = m_outTemp;
    generalFrame.generalInfo.avgFuel = m_avgFuel;
    generalFrame.generalInfo.instantaneousFuel = m_instantaneousFuel;
    generalFrame.generalInfo.batteryVoltage = m_batteryVoltage;


    generalFrame.generalInfo.flowGearBox = m_flowGearBox;
    generalFrame.generalInfo.flowBattery = m_flowBattery;
    generalFrame.generalInfo.flowBatFlow = m_flowBatFlow;
    generalFrame.generalInfo.flowFrontWheel = m_flowFrontWheel;
    generalFrame.generalInfo.flowMotor = m_flowMotor;
    generalFrame.generalInfo.flowWheels = m_flowWheels;
    generalFrame.generalInfo.vehicleWorkingMode = m_vehicleWorkingMode;

    generalFrame.magic = MAGIC_GENERAL_UP;

    generalFrame.crc = crc16Check((uint8_t *)(&(generalFrame.magic)), MAGIC_LEN + GENERAL_INFO_LEN);
    generalFrame.tail = 0x55;

    this->sendSerial(QByteArray((char *)&generalFrame, GENERAL_FRAME_LEN));
}
