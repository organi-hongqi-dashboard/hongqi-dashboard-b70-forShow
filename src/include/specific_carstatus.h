#ifndef SPECIFIC_CARSTATUS_H
#define SPECIFIC_CARSTATUS_H

#include <general_carstatus.h>

/*
 * times for button
 */
#define KEY_PRESS_TIME 2     // 2 * 100ms = 200ms

class SpecificCarStatus : public CarStatus
{
    Q_OBJECT

    // SpecialInfo
    Q_PROPERTY(bool leftLamp MEMBER m_leftLamp NOTIFY leftLampChanged)
    Q_PROPERTY(bool rightLamp MEMBER m_rightLamp NOTIFY rightLampChanged)
    Q_PROPERTY(bool fogFrontLamp MEMBER m_fogFrontLamp NOTIFY fogFrontLampChanged)
    Q_PROPERTY(bool fogRearLamp MEMBER m_fogRearLamp NOTIFY fogRearLampChanged)
    Q_PROPERTY(bool highBeamLight MEMBER m_highBeamLight NOTIFY highBeamLightChanged)
    Q_PROPERTY(bool dippedHeadlight MEMBER m_dippedHeadlight NOTIFY dippedHeadlightChanged)

    Q_PROPERTY(bool parkingBrakeErr MEMBER m_parkingBrakeErr NOTIFY parkingBrakeErrChanged)
    Q_PROPERTY(bool parkingBrake MEMBER m_parkingBrake NOTIFY parkingBrakeChanged)
    Q_PROPERTY(bool accumulatorLight MEMBER m_accumulatorLight NOTIFY accumulatorLightChanged)
    Q_PROPERTY(bool absLight MEMBER m_absLight NOTIFY absLightChanged)
    Q_PROPERTY(bool positionLight MEMBER m_positionLight NOTIFY positionLightChanged)
    Q_PROPERTY(bool engineErrLight MEMBER m_engineErrLight NOTIFY engineErrLightChanged)


    Q_PROPERTY(bool displayMode MEMBER m_displayMode NOTIFY displayModeChanged)
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

    Q_PROPERTY(int chargeState MEMBER m_chargeState NOTIFY chargeStateChanged)
    Q_PROPERTY(int coolantCurrentTemp MEMBER m_coolantCurrentTemp NOTIFY coolantCurrentTempChanged)
    Q_PROPERTY(int generatorPower MEMBER m_generatorPower NOTIFY generatorPowerChanged)


    Q_PROPERTY(int airBag MEMBER m_airBag NOTIFY airBagChanged)
    Q_PROPERTY(int seatBeltLight MEMBER m_seatBeltLight NOTIFY seatBeltLightChanged)
    Q_PROPERTY(int epsFault MEMBER m_epsFault NOTIFY epsFaultChanged)
    Q_PROPERTY(int oilPressureLight MEMBER m_oilPressureLight NOTIFY oilPressureLightChanged)

    // Special SettingsInfo

#ifdef DEBUG
    // ButtonInfo
    Q_PROPERTY(bool leftButton MEMBER m_leftButton WRITE setLeftButton NOTIFY leftButtonChanged)
    Q_PROPERTY(bool rightButton MEMBER m_rightButton WRITE setRightButton NOTIFY rightButtonChanged)
    Q_PROPERTY(bool okButton MEMBER m_okButton WRITE setOkButton NOTIFY okButtonChanged)
#endif

public:

    explicit SpecificCarStatus(const QString &serialDev, QSerialPort *parent = 0);

#ifdef DEBUG
    void setLeftButton(bool);
    void setRightButton(bool);
    void setOkButton(bool);
#endif

    Q_INVOKABLE void sendSpecSettingsFrame();

signals:
    // SpecialInfo
    void leftLampChanged(bool);
    void rightLampChanged(bool);
    void fogFrontLampChanged(bool);
    void fogRearLampChanged(bool);
    void highBeamLightChanged(bool);
    void dippedHeadlightChanged(bool);

    void parkingBrakeErrChanged(bool);
    void parkingBrakeChanged(bool);
    void accumulatorLightChanged(bool);
    void absLightChanged(bool);
    void positionLightChanged(bool);
    void engineErrLightChanged(bool);

    void displayModeChanged(bool);
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

    void chargeStateChanged(uint);
    void coolantCurrentTempChanged(int);
    void generatorPowerChanged(int);

    void airBagChanged(int);
    void seatBeltLightChanged(int);
    void oilPressureLightChanged(int);
    void epsFaultChanged(int);

#ifdef DEBUG
    void leftButtonChanged(bool);
    void rightButtonChanged(bool);
    void okButtonChanged(bool);
#else
    Q_INVOKABLE void leftButton();
    Q_INVOKABLE void rightButton();
    Q_INVOKABLE void okButton();
#endif

    // Special SettingsInfo

protected slots:
    // ButtonInfo
    void leftButtonDeal(bool);
    void rightButtonDeal(bool);
    void okButtonDeal(bool);


protected:

#ifdef TIMER_FREQ
    virtual void timerEvent(QTimerEvent *event);
#endif

    void initValues();

    // SpecialInfo
    bool m_leftLamp;
    bool m_rightLamp;
    bool m_fogFrontLamp;
    bool m_fogRearLamp;
    bool m_highBeamLight;
    bool m_dippedHeadlight;

    bool m_parkingBrakeErr;
    bool m_parkingBrake;
    bool m_accumulatorLight;
    bool m_absLight;
    bool m_positionLight;
    bool m_engineErrLight;

    bool m_displayMode;
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

    uint m_chargeState;
    int m_coolantCurrentTemp;
    int m_generatorPower;

    int m_airBag;
    int m_seatBeltLight;
    int m_oilPressureLight;
    int m_epsFault;

    // Special SettingsInfo

#ifdef DEBUG
    //ButtonInfo
    bool m_leftButton;
    bool m_rightButton;
    bool m_okButton;
#endif

    uint m_leftButtonStep;
    uint m_rightButtonStep;
    uint m_okButtonStep;

protected slots:
    virtual void getGeneralSerial(GeneralInfo data);
    virtual void getSpecialSerial(SpecialInfo data);
};

#endif // SPECIFIC_CARSTATUS_H
