#!/usr/bin/env python
# -*- coding: utf-8 -*-
# 
# Copyright 2017 <+YOU OR YOUR COMPANY+>.
# 
# This is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3, or (at your option)
# any later version.
# 
# This software is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this software; see the file COPYING.  If not, write to
# the Free Software Foundation, Inc., 51 Franklin Street,
# Boston, MA 02110-1301, USA.
# 

import numpy
import tensorflow as tf
from gnuradio import gr

class tf_muler(gr.sync_block):
    """
    docstring for block tf_muler
    """
    x = tf.placeholder("complex64")
    y = tf.placeholder("complex64")
    def __init__(self):
        gr.sync_block.__init__(self,
            name="tf_muler",
            in_sig=[numpy.complex64,numpy.complex64],
            out_sig=[numpy.complex64])
        self.sess = tf.Session()
        self.op = tf.multiply(self.x,self.y)


    def work(self, input_items, output_items):
        in0 = self.sess.run([self.op],feed_dict = {self.x:input_items[0],self.y:input_items[1]})
        output_items[0][:] = in0[0]
        # <+signal processing here+>
        return len(in0[0])

