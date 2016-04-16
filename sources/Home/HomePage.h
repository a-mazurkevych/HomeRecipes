#include "BaseEngine/BaseEngine.h"

class HomePage : public BaseEngine
{
public:
    HomePage();
    ~HomePage() override;

    void Create() override;
    void Destroy() override;

};
