// Generated by gencpp from file carla_waypoint_types/GetActorWaypointResponse.msg
// DO NOT EDIT!


#ifndef CARLA_WAYPOINT_TYPES_MESSAGE_GETACTORWAYPOINTRESPONSE_H
#define CARLA_WAYPOINT_TYPES_MESSAGE_GETACTORWAYPOINTRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <carla_waypoint_types/CarlaWaypoint.h>

namespace carla_waypoint_types
{
template <class ContainerAllocator>
struct GetActorWaypointResponse_
{
  typedef GetActorWaypointResponse_<ContainerAllocator> Type;

  GetActorWaypointResponse_()
    : waypoint()  {
    }
  GetActorWaypointResponse_(const ContainerAllocator& _alloc)
    : waypoint(_alloc)  {
  (void)_alloc;
    }



   typedef  ::carla_waypoint_types::CarlaWaypoint_<ContainerAllocator>  _waypoint_type;
  _waypoint_type waypoint;





  typedef boost::shared_ptr< ::carla_waypoint_types::GetActorWaypointResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::carla_waypoint_types::GetActorWaypointResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetActorWaypointResponse_

typedef ::carla_waypoint_types::GetActorWaypointResponse_<std::allocator<void> > GetActorWaypointResponse;

typedef boost::shared_ptr< ::carla_waypoint_types::GetActorWaypointResponse > GetActorWaypointResponsePtr;
typedef boost::shared_ptr< ::carla_waypoint_types::GetActorWaypointResponse const> GetActorWaypointResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::carla_waypoint_types::GetActorWaypointResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::carla_waypoint_types::GetActorWaypointResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::carla_waypoint_types::GetActorWaypointResponse_<ContainerAllocator1> & lhs, const ::carla_waypoint_types::GetActorWaypointResponse_<ContainerAllocator2> & rhs)
{
  return lhs.waypoint == rhs.waypoint;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::carla_waypoint_types::GetActorWaypointResponse_<ContainerAllocator1> & lhs, const ::carla_waypoint_types::GetActorWaypointResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace carla_waypoint_types

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::carla_waypoint_types::GetActorWaypointResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::carla_waypoint_types::GetActorWaypointResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::carla_waypoint_types::GetActorWaypointResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::carla_waypoint_types::GetActorWaypointResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::carla_waypoint_types::GetActorWaypointResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::carla_waypoint_types::GetActorWaypointResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::carla_waypoint_types::GetActorWaypointResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1339f512e2455f75636d936d50861b4f";
  }

  static const char* value(const ::carla_waypoint_types::GetActorWaypointResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1339f512e2455f75ULL;
  static const uint64_t static_value2 = 0x636d936d50861b4fULL;
};

template<class ContainerAllocator>
struct DataType< ::carla_waypoint_types::GetActorWaypointResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "carla_waypoint_types/GetActorWaypointResponse";
  }

  static const char* value(const ::carla_waypoint_types::GetActorWaypointResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::carla_waypoint_types::GetActorWaypointResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "carla_waypoint_types/CarlaWaypoint waypoint\n"
"\n"
"================================================================================\n"
"MSG: carla_waypoint_types/CarlaWaypoint\n"
"#\n"
"# Copyright (c) 2020 Intel Corporation.\n"
"#\n"
"# This work is licensed under the terms of the MIT license.\n"
"# For a copy, see <https://opensource.org/licenses/MIT>.\n"
"#\n"
"\n"
"int32 road_id\n"
"int32 section_id\n"
"int32 lane_id\n"
"bool is_junction\n"
"geometry_msgs/Pose pose\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::carla_waypoint_types::GetActorWaypointResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::carla_waypoint_types::GetActorWaypointResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.waypoint);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetActorWaypointResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::carla_waypoint_types::GetActorWaypointResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::carla_waypoint_types::GetActorWaypointResponse_<ContainerAllocator>& v)
  {
    s << indent << "waypoint: ";
    s << std::endl;
    Printer< ::carla_waypoint_types::CarlaWaypoint_<ContainerAllocator> >::stream(s, indent + "  ", v.waypoint);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CARLA_WAYPOINT_TYPES_MESSAGE_GETACTORWAYPOINTRESPONSE_H
