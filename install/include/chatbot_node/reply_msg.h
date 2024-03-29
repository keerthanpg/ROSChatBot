// Generated by gencpp from file chatbot_node/reply_msg.msg
// DO NOT EDIT!


#ifndef CHATBOT_NODE_MESSAGE_REPLY_MSG_H
#define CHATBOT_NODE_MESSAGE_REPLY_MSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace chatbot_node
{
template <class ContainerAllocator>
struct reply_msg_
{
  typedef reply_msg_<ContainerAllocator> Type;

  reply_msg_()
    : header()
    , message()  {
    }
  reply_msg_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;




  typedef boost::shared_ptr< ::chatbot_node::reply_msg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::chatbot_node::reply_msg_<ContainerAllocator> const> ConstPtr;

}; // struct reply_msg_

typedef ::chatbot_node::reply_msg_<std::allocator<void> > reply_msg;

typedef boost::shared_ptr< ::chatbot_node::reply_msg > reply_msgPtr;
typedef boost::shared_ptr< ::chatbot_node::reply_msg const> reply_msgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::chatbot_node::reply_msg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::chatbot_node::reply_msg_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace chatbot_node

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'chatbot_node': ['/home/keerthana/catkin_ws/src/chatbot_node/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::chatbot_node::reply_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::chatbot_node::reply_msg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::chatbot_node::reply_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::chatbot_node::reply_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::chatbot_node::reply_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::chatbot_node::reply_msg_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::chatbot_node::reply_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "49f8a60a46dc2a23c8756dda3465c662";
  }

  static const char* value(const ::chatbot_node::reply_msg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x49f8a60a46dc2a23ULL;
  static const uint64_t static_value2 = 0xc8756dda3465c662ULL;
};

template<class ContainerAllocator>
struct DataType< ::chatbot_node::reply_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "chatbot_node/reply_msg";
  }

  static const char* value(const ::chatbot_node::reply_msg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::chatbot_node::reply_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
string message\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::chatbot_node::reply_msg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::chatbot_node::reply_msg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct reply_msg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::chatbot_node::reply_msg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::chatbot_node::reply_msg_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CHATBOT_NODE_MESSAGE_REPLY_MSG_H
