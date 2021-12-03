#include "master-controller.h"
#include <QDebug>
#include <algorithm>

namespace cm {
namespace controllers {

class MasterController::Implementation
{ public:
    Implementation(MasterController* _masterController)
        : masterController(_masterController)
    {
        navigationController = new NavigationController(masterController);
        commandController = new CommandController(masterController);
        newClient = new Client(masterController);
        basicStorage = new Storage(masterController);
    }
    MasterController* masterController{nullptr};
    NavigationController* navigationController{nullptr};
    CommandController* commandController{nullptr};
    QString welcomeMessage = "This is MasterController to Major Tom";
    Client* newClient{nullptr};
    Storage* basicStorage{nullptr};
};
MasterController::MasterController(QObject* parent)
    : QObject(parent)
{
    implementation.reset(new Implementation(this));
}
MasterController::~MasterController()
{}
NavigationController* MasterController::navigationController()
{
    return implementation->navigationController;
}

CommandController *MasterController::commandController()
{
    return implementation->commandController;
}
const QString& MasterController::welcomeMessage() const
{
    return implementation->welcomeMessage;
}

Client* MasterController::newClient()
{
    return implementation->newClient;
}

Storage *MasterController::basicStorage()
{
    return implementation->basicStorage;
}

void MasterController::makeCoffee()
{
    auto storage = basicStorage();

    auto coffeeType = "Brazil Arabica";
    int coffeeChange = - 100;

    storage->setCoffee(coffeeType, std::max((storage->getCoffee(coffeeType) + coffeeChange) % 1000 ,0));

    auto milkType = "Soy";
    int milkChange = - 50;
    storage->setMilk(milkType,std::max(0,(storage->getMilk(milkType) + milkChange) % 1000));

    auto waterType = "Regular";
    int waterChange = - 150;
    storage->setWater(waterType,std::max(0,(storage->getWater(waterType) + waterChange) % 1000));

    auto changeType = "0.05";
    int changeChange = - 5;
    storage->setChange(changeType,std::max(0,(storage->getChange(changeType) + changeChange) % 20));

    auto statusType = "BrewBasket";
    int statusChange = 1;
    storage->setStatus(statusType,std::max(0,(storage->getStatus(statusType) + statusChange) % 2));

}
}
}
