#!/usr/bin/env python

import rospy
from std_msgs.msg import String, Int64, Bool

class PubTutorial(object):
    def __init__(self):
        self.node_name = "pub_sub_tutorial"

        # init
        self.number = 0

        # pub and sub
        self.pub_test = rospy.Publisher("~pub_test", String, queue_size=1)


if __name__ == "__main__":
    rospy.init_node("pub_tutorial_node", anonymous = False)
    pub_tutorial = PubTutorial()
    rospy.spin()

