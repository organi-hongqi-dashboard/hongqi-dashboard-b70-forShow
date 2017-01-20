#include <QDebug>
#include <QQuickView>
#include <QQmlEngine>
#include <QQmlContext>
#include <QGuiApplication>
#include <QCommandLineParser>
#include <QQmlApplicationEngine>

//#ifdef Todi
//#include <carnation_carstatus.h>
//#elif MoLiHua
//#include <molihua_carstatus.h>
//#else
//#include <carstatus.h>
//#endif
#include <specific_carstatus.h>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QCommandLineParser parser;
    QCommandLineOption serialOption(QStringList() << "s" << "serial port device name", "specify serial port device", "serial", "ttymxc1");
    parser.addOption(serialOption);
    parser.process(app);

    QString serial = "ttymxc1";
    if (parser.isSet(serialOption))
        serial = parser.value(serialOption);

//#ifdef Todi
//    TodiCarStatus carStatus(serial);
//#elif MoLiHua
//    MoLiHuaCarStatus carStatus(serial);
//#else
//    CarStatus carStatus(serial);
//#endif
    SpecificCarStatus carStatus(serial);

    QQuickView viewer;
    viewer.rootContext()->setContextProperty("CarStatus", &carStatus);

    viewer.setSource(QUrl("qrc:///main.qml"));
    viewer.show();

    return app.exec();
}
