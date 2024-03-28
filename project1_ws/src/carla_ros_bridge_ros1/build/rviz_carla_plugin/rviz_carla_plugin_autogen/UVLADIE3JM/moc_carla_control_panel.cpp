/****************************************************************************
** Meta object code from reading C++ file 'carla_control_panel.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/rviz_carla_plugin/src/carla_control_panel.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'carla_control_panel.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_rviz_carla_plugin__CarlaControlPanel_t {
    QByteArrayData data[13];
    char stringdata0[209];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_rviz_carla_plugin__CarlaControlPanel_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_rviz_carla_plugin__CarlaControlPanel_t qt_meta_stringdata_rviz_carla_plugin__CarlaControlPanel = {
    {
QT_MOC_LITERAL(0, 0, 36), // "rviz_carla_plugin::CarlaContr..."
QT_MOC_LITERAL(1, 37, 6), // "setVel"
QT_MOC_LITERAL(2, 44, 0), // ""
QT_MOC_LITERAL(3, 45, 14), // "linearVelocity"
QT_MOC_LITERAL(4, 60, 15), // "angularVelocity"
QT_MOC_LITERAL(5, 76, 7), // "sendVel"
QT_MOC_LITERAL(6, 84, 13), // "carlaStepOnce"
QT_MOC_LITERAL(7, 98, 20), // "carlaTogglePlayPause"
QT_MOC_LITERAL(8, 119, 22), // "overrideVehicleControl"
QT_MOC_LITERAL(9, 142, 5), // "state"
QT_MOC_LITERAL(10, 148, 15), // "executeScenario"
QT_MOC_LITERAL(11, 164, 15), // "updateCameraPos"
QT_MOC_LITERAL(12, 180, 28) // "currentViewControllerChanged"

    },
    "rviz_carla_plugin::CarlaControlPanel\0"
    "setVel\0\0linearVelocity\0angularVelocity\0"
    "sendVel\0carlaStepOnce\0carlaTogglePlayPause\0"
    "overrideVehicleControl\0state\0"
    "executeScenario\0updateCameraPos\0"
    "currentViewControllerChanged"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_rviz_carla_plugin__CarlaControlPanel[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       8,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    2,   54,    2, 0x0a /* Public */,
       5,    0,   59,    2, 0x09 /* Protected */,
       6,    0,   60,    2, 0x09 /* Protected */,
       7,    0,   61,    2, 0x09 /* Protected */,
       8,    1,   62,    2, 0x09 /* Protected */,
      10,    0,   65,    2, 0x09 /* Protected */,
      11,    0,   66,    2, 0x09 /* Protected */,
      12,    0,   67,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void, QMetaType::Float, QMetaType::Float,    3,    4,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,    9,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void rviz_carla_plugin::CarlaControlPanel::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<CarlaControlPanel *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->setVel((*reinterpret_cast< float(*)>(_a[1])),(*reinterpret_cast< float(*)>(_a[2]))); break;
        case 1: _t->sendVel(); break;
        case 2: _t->carlaStepOnce(); break;
        case 3: _t->carlaTogglePlayPause(); break;
        case 4: _t->overrideVehicleControl((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 5: _t->executeScenario(); break;
        case 6: _t->updateCameraPos(); break;
        case 7: _t->currentViewControllerChanged(); break;
        default: ;
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject rviz_carla_plugin::CarlaControlPanel::staticMetaObject = { {
    &rviz::Panel::staticMetaObject,
    qt_meta_stringdata_rviz_carla_plugin__CarlaControlPanel.data,
    qt_meta_data_rviz_carla_plugin__CarlaControlPanel,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *rviz_carla_plugin::CarlaControlPanel::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *rviz_carla_plugin::CarlaControlPanel::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_rviz_carla_plugin__CarlaControlPanel.stringdata0))
        return static_cast<void*>(this);
    if (!strcmp(_clname, "Ogre::Camera::Listener"))
        return static_cast< Ogre::Camera::Listener*>(this);
    return rviz::Panel::qt_metacast(_clname);
}

int rviz_carla_plugin::CarlaControlPanel::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::Panel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 8)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 8;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 8)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 8;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
