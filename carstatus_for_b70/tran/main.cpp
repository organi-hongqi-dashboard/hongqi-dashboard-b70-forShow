#include <QDebug>
#include <QTimer>
#include <QQuickView>
#include <QQmlEngine>
#include <QQmlContext>
#include <QGuiApplication>
#include <QCommandLineParser>
#include <QQmlApplicationEngine>

#include <specific_tran.h>

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
//    TodiSerialTran serialTran(serial);
//#elif MoLiHua
//    MoLiHuaSerialTran serialTran(serial);
//#else
//    SerialTran serialTran(serial);
//#endif
    SpecificCarStatus serialTran(serial);

    QQuickView viewer;
    viewer.rootContext()->setContextProperty("SerialTran", &serialTran);

    viewer.setSource(QUrl("qrc:///main.qml"));
    viewer.show();

    return app.exec();
}
