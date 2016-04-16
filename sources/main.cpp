#include <QGuiApplication>
#include "Home/HomePage.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    HomePage homePage;
    return app.exec();
}

