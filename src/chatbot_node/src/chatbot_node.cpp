#include <ros/ros.h>
#include <chatbot_node/reply_msg.h>
#include <message_ui/sent_msg.h>
#include <string>

using namespace std;

//Add your code here

std::string name;
ros::Publisher chatter_pub;

void chatterCallback(const message_ui::sent_msg& sentmsg)
  {  chatbot_node::reply_msg replymsg;
  	
	if(sentmsg.message.compare("Hello")==0){
  		replymsg.message="Hello, "+ name;  		
	}
	else if(sentmsg.message.compare("What is your name?")==0){
  		replymsg.message="My name is MRSD Siri";
	}
	else if(sentmsg.message.compare("How are you?")==0){
  		replymsg.message="I am fine, thank you";
	}
   //ROS_INFO("I heard: [%s]", msg->data.c_str());
	chatter_pub.publish(replymsg);
	
  }

int main(int argc, char **argv) {

  ros::init(argc, argv, "chatbot_node");
  ros::NodeHandle n;
  n.getParam("/name", name);  

  //Add your code here
  chatter_pub = n.advertise<chatbot_node::reply_msg>("reply_msg", 1000);
  ros::Subscriber sub = n.subscribe("sent_msg", 1000, chatterCallback); 
  ros::Rate loop_rate(20);   

  while(ros::ok()) {  

    ros::spinOnce();
    loop_rate.sleep();
  }

  return 0;
}

