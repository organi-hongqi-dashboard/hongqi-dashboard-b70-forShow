#ifndef SOECIFIC_SERIALTRAN_H
#define SOECIFIC_SERIALTRAN_H

#include <QObject>
#include <QString>

#include <general_tran.h>

class SpecificCarStatus : public SerialTran
{
    Q_OBJECT

    // SpecialInfo
    Q_PROPERTY(bool leftLamp MEMBER m_leftLamp NOTIFY leftLampChanged)
    Q_PROPERTY(bool rightLamp MEMBER m_rightLamp NOTIFY rightLampChanged)
    Q_PROPERTY(bool fogFrontLamp MEMBER m_fogFrontLamp NOTIFY fogFrontLampChanged)
    Q_PROPERTY(bool fogRearLamp MEMBER m_fogRearLamp NOTIFY fogRearLampChanged)
    Q_PROPERTY(bool highBeamLight MEMBER m_highBeamLight NOTIFY highBeamLightChanged)
    Q_PROPERTY(bool dippedHeadlight MEMBER m_dippedHeadlight NOTIFY dippedHeadlightChanged)
    Q_PROPERTY(bool airBag MEMBER m_airBag NOTIFY airBagChanged)
    Q_PROPERTY(bool masterStrapLight MEMBER m_masterStrapLight NOTIFY masterStrapLightChanged)

    Q_PROPERTY(bool viceStrapLight MEMBER m_viceStrapLight NOTIFY viceStrapLightChanged)
    Q_PROPERTY(bool parkingBrakeErr MEMBER m_parkingBrakeErr NOTIFY parkingBrakeErrChanged)
    Q_PROPERTY(bool parkingBrake MEMBER m_parkingBrake NOTIFY parkingBrakeChanged)
    Q_PROPERTY(bool accumulatorLight MEMBER m_accumulatorLight NOTIFY accumulatorLightChanged)
    Q_PROPERTY(bool absLight MEMBER m_absLight NOTIFY absLightChanged)
    Q_PROPERTY(bool positionLight MEMBER m_positionLight NOTIFY positionLightChanged)
    Q_PROPERTY(bool oilPressureLight MEMBER m_oilPressureLight NOTIFY oilPressureLightChanged)
    Q_PROPERTY(bool engineErrLight MEMBER m_engineErrLight NOTIFY engineErrLightChanged)


    Q_PROPERTY(bool epsFault MEMBER m_epsFault NOTIFY epsFaultChanged)
    Q_PROPERTY(bool gearBoxFault MEMBER m_gearBoxFault NOTIFY gearBoxFaultChanged)
    Q_PROPERTY(bool tirePressure MEMBER m_tirePressure NOTIFY tirePressureChanged)
    Q_PROPERTY(bool epc MEMBER m_epc NOTIFY epcChanged)
    Q_PROPERTY(bool engineSVSErr MEMBER m_engineSVSErr NOTIFY engineSVSErrChanged)
    Q_PROPERTY(bool vehicleFailure MEMBER m_vehicleFailure NOTIFY vehicleFailureChanged)
    Q_PROPERTY(bool batteryFault MEMBER m_batteryFault NOTIFY batteryFaultChanged)

    Q_PROPERTY(bool generatorFault MEMBER m_generatorFault NOTIFY generatorFaultChanged)
    Q_PROPERTY(bool chargingLine MEMBER m_chargingLine NOTIFY chargingLineChanged)
    Q_PROPERTY(bool eleMotorCoolantHighTemp MEMBER m_eleMotorCoolantHighTemp NOTIFY eleMotorCoolantHighTempChanged)
    Q_PROPERTY(bool engineCoolantHighTemp MEMBER m_engineCoolantHighTemp NOTIFY engineCoolantHighTempChanged)
    Q_PROPERTY(bool dynamicElectricityCut MEMBER m_dynamicElectricityCut NOTIFY dynamicElectricityCutChanged)
    Q_PROPERTY(bool ready MEMBER m_ready NOTIFY readyChanged)

    Q_PROPERTY(bool displayMode MEMBER m_displayMode NOTIFY displayModeChanged)
    Q_PROPERTY(uint chargeState MEMBER m_chargeState NOTIFY chargeStateChanged)
    Q_PROPERTY(uint coolantCurrentTemp MEMBER m_coolantCurrentTemp NOTIFY coolantCurrentTempChanged)
    Q_PROPERTY(uint generatorPower MEMBER m_generatorPower NOTIFY generatorPowerChanged)


//    Q_PROPERTY(bool leftHandDrive MEMBER m_leftHandDrive NOTIFY leftHandDriveChanged)
//    Q_PROPERTY(bool rightHandDrive MEMBER m_rightHandDrive NOTIFY rightHandDriveChanged)
//    Q_PROPERTY(bool brakeSystemFailure MEMBER m_brakeSystemFailure NOTIFY fbrakeSystemFailureChanged)
//    Q_PROPERTY(bool chargeFault MEMBER m_chargeFault NOTIFY chargeFaultChanged)
//    Q_PROPERTY(bool oilPressureLow MEMBER m_oilPressureLow NOTIFY oilPressureLowChanged)
//    Q_PROPERTY(bool absFault MEMBER m_absFault NOTIFY absFaultChanged)
//    Q_PROPERTY(bool epbFault MEMBER m_epbFault NOTIFY epbFaultChanged)
//    Q_PROPERTY(bool engineFault MEMBER m_engineFault NOTIFY engineFaultChanged)
//    Q_PROPERTY(bool milFault MEMBER m_milFault NOTIFY milFaultChanged)
//    Q_PROPERTY(bool espFault MEMBER m_espFault NOTIFY espFaultChanged)
//    Q_PROPERTY(bool srsFault MEMBER m_srsFault NOTIFY srsFaultChanged)
//    Q_PROPERTY(bool gearBoxFault MEMBER m_gearBoxFault NOTIFY gearBoxFaultChanged)

    // Special SettingsInfo
    Q_PROPERTY(bool commandRequest MEMBER m_commandRequest NOTIFY commandRequestChanged)
    Q_PROPERTY(bool closeScreenRequest MEMBER m_closeScreenRequest NOTIFY closeScreenRequestChanged)
    Q_PROPERTY(bool tripClear MEMBER m_tripClear NOTIFY tripClearChanged)
    Q_PROPERTY(bool avgSpeedClear MEMBER m_avgSpeedClear NOTIFY avgSpeedClearChanged)
    Q_PROPERTY(bool avgFuelClear MEMBER m_avgFuelClear NOTIFY avgFuelClearChanged)
    Q_PROPERTY(bool engineeringModel MEMBER m_engineeringModel NOTIFY engineeringModelChanged)
    Q_PROPERTY(uint picVoiceSync MEMBER m_picVoiceSync NOTIFY picVoiceSyncChanged)
    Q_PROPERTY(uint dateTimeSetting MEMBER m_dateTimeSetting NOTIFY dateTimeSettingChanged)

public:
    explicit SpecificCarStatus(const QString &serialDev, QSerialPort *parent = 0);

    Q_INVOKABLE void sendSpecialFrame();

signals:
    // SpecialInfo
//    void leftHandDriveChanged(bool);
//    void rightHandDriveChanged(bool);
//    void fbrakeSystemFailureChanged(bool);
//    void chargeFaultChanged(bool);
//    void oilPressureLowChanged(bool);
//    void absFaultChanged(bool);
//    void epbFaultChanged(bool);
//    void engineFaultChanged(bool);
//    void milFaultChanged(bool);
//    void espFaultChanged(bool);
//    void srsFaultChanged(bool);
//    void gearBoxFaultChanged(bool);
    void leftLampChanged(bool);
    void rightLampChanged(bool);
    void fogFrontLampChanged(bool);
    void fogRearLampChanged(bool);
    void highBeamLightChanged(bool);
    void dippedHeadlightChanged(bool);
    void airBagChanged(bool);
    void masterStrapLightChanged(bool);

    void viceStrapLightChanged(bool);
    void parkingBrakeErrChanged(bool);
    void parkingBrakeChanged(bool);
    void accumulatorLightChanged(bool);
    void absLightChanged(bool);
    void positionLightChanged(bool);
    void oilPressureLightChanged(bool);
    void engineErrLightChanged(bool);


    void epsFaultChanged(bool);
    void gearBoxFaultChanged(bool);
    void tirePressureChanged(bool);
    void epcChanged(bool);
    void engineSVSErrChanged(bool);
    void vehicleFailureChanged(bool);
    void batteryFaultChanged(bool);

    void generatorFaultChanged(bool);
    void chargingLineChanged(bool);
    void eleMotorCoolantHighTempChanged(bool);
    void engineCoolantHighTempChanged(bool);
    void dynamicElectricityCutChanged(bool);
    void readyChanged(bool);
    void displayModeChanged(bool);

    void chargeStateChanged(uint);
    void coolantCurrentTempChanged(uint);
    void generatorPowerChanged(uint);

    // Special SettingsInfo
    void commandRequestChanged(bool);
    void closeScreenRequestChanged(bool);
    void tripClearChanged(bool);
    void avgSpeedClearChanged(bool);
    void avgFuelClearChanged(bool);
    void engineeringModelChanged(bool);
    void picVoiceSyncChanged(uint);
    void dateTimeSettingChanged(uint);
private:

    void initValues();

    // SpecialInfo
//    bool m_leftHandDrive;
//    bool m_rightHandDrive;
//    bool m_brakeSystemFailure;
//    bool m_chargeFault;
//    bool m_oilPressureLow;
//    bool m_absFault;
//    bool m_epbFault;
//    bool m_engineFault;
//    bool m_milFault;
//    bool m_espFault;
//    bool m_srsFault;
//    bool m_gearBoxFault;
    bool m_leftLamp;
    bool m_rightLamp;
    bool m_fogFrontLamp;
    bool m_fogRearLamp;
    bool m_highBeamLight;
    bool m_dippedHeadlight;
    bool m_airBag;
    bool m_masterStrapLight;

    bool m_viceStrapLight;
    bool m_parkingBrakeErr;
    bool m_parkingBrake;
    bool m_accumulatorLight;
    bool m_absLight;
    bool m_positionLight;
    bool m_oilPressureLight;
    bool m_engineErrLight;


    bool m_epsFault;
    bool m_gearBoxFault;
    bool m_tirePressure;
    bool m_epc;
    bool m_engineSVSErr;
    bool m_vehicleFailure;
    bool m_batteryFault;

    bool m_generatorFault;
    bool m_chargingLine;
    bool m_eleMotorCoolantHighTemp;
    bool m_engineCoolantHighTemp;
    bool m_dynamicElectricityCut;
    bool m_ready;
    bool m_displayMode;

    uint m_chargeState;
    uint m_coolantCurrentTemp;
    uint m_generatorPower;

    // Special SettingsInfo
    bool m_commandRequest;
    bool m_closeScreenRequest;
    bool m_tripClear;
    bool m_avgSpeedClear;
    bool m_avgFuelClear;
    bool m_engineeringModel;
    uint m_picVoiceSync;
    uint m_picVoiceSyncReserve;
    uint m_dateTimeSetting;

protected slots:
    virtual void getSpecSettingsInfo(SpecSettingsInfo data);
};

#endif // SPECIFIC_SERIALTRAN_H
