#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_walker_agent"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/install/lib/python3/dist-packages:/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/build/carla_walker_agent/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/build/carla_walker_agent" \
    "/usr/bin/python3" \
    "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_walker_agent/setup.py" \
     \
    build --build-base "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/build/carla_walker_agent" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/install" --install-scripts="/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/install/bin"
