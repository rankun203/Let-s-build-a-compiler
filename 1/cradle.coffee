#!/usr/bin/env coffee

###
 @author rankun203@gmail.com
 @create Nov 4, 2014
 @update Nov 4, 2014
###

readline = require 'readline'

look = null

# Read New Character From Input Stream
exports.getChar = (cb)->
	rl = readline.createInterface {input: process.stdin, output: process.stdout}
	rl.question '', (answer) ->
		this.look = answer.substr 0, 1
		rl.close()
		cb()

# Report an Error
exports.error = (s)->
	console.log 'Error: ' + s

# Report Error and Halt
exports.abort = (s)->
	console.log s
	process.exit 1

# Report What Was Expected
exports.expected = (s)->
	console.log s + ' Expected'

# Match a Specific Input Character
exports.match = (x)->
	if look == x
	 	this.getChar()
	else this.expected '\'' + x + '\''

# Recognize an Alpha Character
exports.isAlpha = (c)->
	/^[a-zA-Z]$/.test c

# Recognize a Decimal Digit
exports.isDigit = (c)->
	/^\d$/.test c

# Get an Identifier
exports.getName = ()->
	this.expected 'Name' if this.isAlpha this.look
	this.getChar()
	lthis.ook.toUpperCase()

# Get a Number
exports.getNum = ()->
	expected 'Integer' if not this.isDigit this.look
	getChar()

# Output a String with Tab
exports.emit = (s)->
	process.stdout.write '\t' + s

# Output a String with Tab and CRLF
exports.emitLn = (s)->
	this.emit s + '\n'

# Initialize
exports.init = (cb)->
	this.getChar(cb)

###
# script
init ()->
	emitLn look + ' is an Alpha? -' + isAlpha look
	emitLn look + ' is a Digit? -' + isDigit look
###