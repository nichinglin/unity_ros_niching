#!/usr/bin/env python

import rospy
from std_msgs.msg import String, Int64, Bool

class PubSubTutorial(object):
    def __init__(self):
        self.node_name = "pub_sub_tutorial"

        # init
        self.number = 0

        # pub and sub
        self.sub_test = rospy.Subscriber("~sub_test", Int64, self.cb_sub_test, queue_size=1)
        self.pub_test = rospy.Publisher("~pub_test", String, queue_size=1)

    def cb_sub_test(self, msg):
        print(self.msg.date)

if __name__ == "__main__":
    rospy.init_node("tutorial_node", anonymous = False)
    pub_sub_tutorial = PubSubTutorial()
    rospy.spin()

