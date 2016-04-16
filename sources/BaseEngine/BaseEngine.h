#include <QQmlApplicationEngine>

class BaseEngine{
public:
    BaseEngine();
    virtual ~BaseEngine();
    virtual void Create() = 0;
    virtual void Destroy() = 0;

private:
    void Init();

private:
    QQmlApplicationEngine m_engine;
};
