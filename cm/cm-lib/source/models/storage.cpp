#include "storage.h"

using namespace cm::data;

namespace cm {
namespace models {

Storage::Storage(QObject *parent) : Entity(parent, "storage")
{
  name = static_cast<StringDecorator*>(addDataItem(new StringDecorator(this, "basicStorage", "storageName")));
  coffee = static_cast<MapDecorator*>(addDataItem(new MapDecorator(this,"coffeeStorage","storageName",getPopulatedCoffeeStorage())));
  milk = static_cast<MapDecorator*>(addDataItem(new MapDecorator(this,"milkStorage","storageName",getPopulatedMilkStorage())));
  water = static_cast<MapDecorator*>(addDataItem(new MapDecorator(this,"waterStorage","storageName",getPopulatedWaterStorage())));
  change = static_cast<MapDecorator*>(addDataItem(new MapDecorator(this,"changeStorage","storageName",getPopulatedChangeStorage())));
  status = static_cast<MapDecorator*>(addDataItem(new MapDecorator(this,"statusStorage","storageName",getPopulatedStatusStorage())));
  users = static_cast<MapDecorator*>(addDataItem(new MapDecorator(this,"usersStorage","storageName",getPopulatedUserStorage())));
  usersPrivileges = static_cast<MapDecorator*>(addDataItem(new MapDecorator(this,"usersPrivilegesStorage","storageName",getPopulatedUserPrivilegesStorage())));
}

Storage::Storage(QObject *parent, const QJsonObject &json): Storage(parent)
{
    update(json);
}

int Storage::getCoffee(QString coffeeName)
{
    return coffee->valueFromKey(coffeeName);
}

void Storage::setCoffee(QString coffeeName,int amount)
{
    coffee->setValueOnKey(coffeeName,amount);
}

int Storage::getMilk(QString coffeeName)
{
    return milk->valueFromKey(coffeeName);
}

void Storage::setMilk(QString coffeeName,int amount)
{
    milk->setValueOnKey(coffeeName,amount);
}

int Storage::getWater(QString coffeeName)
{
    return water->valueFromKey(coffeeName);
}

void Storage::setWater(QString coffeeName,int amount)
{
    water->setValueOnKey(coffeeName,amount);
}

int Storage::getStatus(QString coffeeName)
{
    return status->valueFromKey(coffeeName);
}

void Storage::setStatus(QString coffeeName,int amount)
{
    status->setValueOnKey(coffeeName,amount);
}

int Storage::getChange(QString coffeeName)
{
    return change->valueFromKey(coffeeName);
}

void Storage::setChange(QString coffeeName,int amount)
{
    change->setValueOnKey(coffeeName,amount);
}
QMap<QString,int> Storage::getPopulatedCoffeeStorage(){
    QMap<QString,int> coffee = {};
    coffee.insert("Indonesia Arabica",rand()%(maxCoffee+1));
    coffee.insert("Brazil Arabica",rand()%(maxCoffee+1));
    coffee.insert("Ethiopia  Arabica",rand()%(maxCoffee+1));
    coffee.insert("Vietnam Robusta",rand()%(maxCoffee+1));
    coffee.insert("Indonesia Robusta",rand()%(maxCoffee+1));
    coffee.insert("Excelsa",rand()%(maxCoffee+1));
    coffee.insert("Liberica",rand()%(maxCoffee+1));
    return coffee;
}

QMap<QString, int> Storage::getPopulatedMilkStorage()
{
    QMap<QString,int> milk = {};
    milk.insert("Regular",rand()%(maxMilk+1));
    milk.insert("Soy",rand()%(maxMilk+1));
    return milk;
}

QMap<QString, int> Storage::getPopulatedWaterStorage()
{
    QMap<QString,int> water = {};
    water.insert("Regular",rand()%(maxWater+1));
    return water;
}

QMap<QString, int> Storage::getPopulatedStatusStorage()
{
    QMap<QString,int> status = {};
    status.insert("BrewBasket",1);
    status.insert("Decanter",1);
    status.insert("WarmingPlate",1);
    status.insert("GrindingChamber",1);
    status.insert("TurnOn",1);
    status.insert("Clean",1);
    status.insert("LightOn",1);
    status.insert("PowerSafe",1);
    status.insert("Locks",1);
    status.insert("Water",1);
    status.insert("Milk",1);
    status.insert("Change",1);
    status.insert("Coffee",1);
    status.insert("Unknown",1);
    return status;
}

QMap<QString, int> Storage::getPopulatedUserStorage()
{
    QMap<QString,int> users = {};
    //NAME AND PASSWORD
    users.insert("Admin",5231);
    users.insert("RegularUser",1234);
    return users;
}

QMap<QString, int> Storage::getPopulatedUserPrivilegesStorage()
{
    //NAME AND PRIVLIGE LEVEL
    QMap<QString,int> users = {};
    users.insert("Admin",10);
    users.insert("RegularUser",2);
    return users;
}

QMap<QString, int> Storage::getPopulatedChangeStorage()
{
    QMap<QString,int> coins = {};
    coins.insert("0.01",rand()%(maxChange+1));
    coins.insert("0.02",rand()%(maxChange+1));
    coins.insert("0.05",rand()%(maxChange+1));
    coins.insert("0.10",rand()%(maxChange+1));
    coins.insert("0.50",rand()%(maxChange+1));
    coins.insert("1",rand()%(maxChange+1));
    coins.insert("2",rand()%(maxChange+1));
    coins.insert("5",rand()%(maxChange+1));
    return coins;
}



}}
