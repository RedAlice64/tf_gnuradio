#!/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir=/root/gr-tutorial_tf/python
export PATH=/root/gr-tutorial_tf/grc/python:$PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH
export PYTHONPATH=/root/gr-tutorial_tf/grc/swig:$PYTHONPATH
/usr/bin/python2 /root/gr-tutorial_tf/python/qa_tf_adder.py 
