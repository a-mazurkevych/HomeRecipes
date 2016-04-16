#include <QQmlApplicationEngine>
#include <memory>

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
    std::unique_ptr<QObject> m_qmlObject;
};
