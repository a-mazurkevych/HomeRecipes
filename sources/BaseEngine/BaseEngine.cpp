#include "BaseEngine.h"

BaseEngine::BaseEngine()
{
    Init();
}

BaseEngine::~BaseEngine()
{
}

void BaseEngine::Init()
{
    m_engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
}
