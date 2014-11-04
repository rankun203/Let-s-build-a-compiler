#!/usr/bin/env coffee

###
 @author rankun203@gmail.com
 @create Nov 4, 2014
 @update Nov 4, 2014
###

c = require './cradle'

c.init ()->
	c.emitLn look + ' is an Alpha? -' + c.isAlpha look
	c.emitLn look + ' is a Digit? -' + c.isDigit look
