#include <ros/ros.h>
#include <arithmetic_node/arithmetic_reply.h>
#include <message_ui/sent_msg.h>
#include <string>
#include <sstream>
#include <iostream>


using namespace std;

//Add your code here

std::string name;
ros::Publisher chatter_pub;
arithmetic_node::arithmetic_reply arithmeticreply;

void chatterCallback(const message_ui::sent_msg& sentmsg)
  {  

  arithmeticreply.time_received=ros::Time::now().toSec();  
  int int1=-1, int2=-1;
  char oper;

  std::stringstream ss;
  ss<<sentmsg.message.c_str();
  ss>>int1>>oper>>int2;
   

  if(oper=='+'){
    arithmeticreply.oper_type="Add";
    arithmeticreply.answer=(float)int1 + (float)int2;

  }
  else if(oper=='-'){
    arithmeticreply.oper_type="Subtract";
    arithmeticreply.answer=(float)int1 - (float)int2;

  }
  else if(oper=='*'){
    arithmeticreply.oper_type="Multiply";
    arithmeticreply.answer=(float)int1 * (float)int2;

  }
  else if(oper=='/'){
    arithmeticreply.oper_type="Divide";
    arithmeticreply.answer=(float)int1 / (float)int2;

  } 
	
  arithmeticreply.time_answered=ros::Time::now().toSec(); 
  arithmeticreply.process_time=arithmeticreply.time_answered-arithmeticreply.time_received;
  if(ss.rdbuf()->in_avail() == 0 && int1>=0 && int2>=0){
  chatter_pub.publish(arithmeticreply);
  }
  return;
	
  }

int main(int argc, char **argv) {

  ros::init(argc, argv, "chatbot_node");
  ros::NodeHandle n;
  n.getParam("/name", name);  
  arithmeticreply.header.stamp=ros::Time::now();
  
  //Add your code here
  chatter_pub = n.advertise<arithmetic_node::arithmetic_reply>("arithmetic_reply", 1000);
  ros::Subscriber sub = n.subscribe("sent_msg", 1000, chatterCallback); 
  ros::Rate loop_rate(20);   

  while(ros::ok()) {  

    ros::spinOnce();
    loop_rate.sleep();
  }

  return 0;
}

