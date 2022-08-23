// Generated by gencpp from file rosapi/GetTimeRequest.msg
// DO NOT EDIT!


#ifndef ROSAPI_MESSAGE_GETTIMEREQUEST_H
#define ROSAPI_MESSAGE_GETTIMEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rosapi
{
template <class ContainerAllocator>
struct GetTimeRequest_
{
  typedef GetTimeRequest_<ContainerAllocator> Type;

  GetTimeRequest_()
    {
    }
  GetTimeRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::rosapi::GetTimeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rosapi::GetTimeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetTimeRequest_

typedef ::rosapi::GetTimeRequest_<std::allocator<void> > GetTimeRequest;

typedef boost::shared_ptr< ::rosapi::GetTimeRequest > GetTimeRequestPtr;
typedef boost::shared_ptr< ::rosapi::GetTimeRequest const> GetTimeRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rosapi::GetTimeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rosapi::GetTimeRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace rosapi

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rosapi::GetTimeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosapi::GetTimeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosapi::GetTimeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosapi::GetTimeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosapi::GetTimeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosapi::GetTimeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rosapi::GetTimeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::rosapi::GetTimeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::rosapi::GetTimeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rosapi/GetTimeRequest";
  }

  static const char* value(const ::rosapi::GetTimeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rosapi::GetTimeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::rosapi::GetTimeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rosapi::GetTimeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetTimeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rosapi::GetTimeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::rosapi::GetTimeRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // ROSAPI_MESSAGE_GETTIMEREQUEST_H
