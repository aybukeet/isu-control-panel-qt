#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <QLocale>
#include <QTranslator>
#include <QQmlContext>

#include "backend/collector/UICollector.h"
#include "backend/dispatcher/Dispatcher.h"
#include "backend/controller/ISUController.h"

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    QTranslator translator;
    const QStringList uiLanguages = QLocale::system().uiLanguages();
    for (const QString &locale : uiLanguages) {
        const QString baseName = "ISUControlPanel_" + QLocale(locale).name();
        if (translator.load(":/i18n/" + baseName)) {
            app.installTranslator(&translator);
            break;
        }
    }

    UICollector collector;
    Dispatcher dispatcher;
    ISUController controller;

    QObject::connect(
        &collector,
        &UICollector::messageCollected,
        &dispatcher,
        &Dispatcher::dispatch
        );

    dispatcher.setController(&controller);

    QQmlApplicationEngine engine;

    engine.rootContext()->setContextProperty(
        "uiCollector",
        &collector
        );

    const QUrl url(QStringLiteral("qrc:/qml/main.qml"));

    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreated,
        &app,
        [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        },
        Qt::QueuedConnection);

    engine.load(url);

    return app.exec();
}